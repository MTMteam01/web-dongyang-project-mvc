package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import common.JDBCUtil;
import Model.MovieDTO;

@WebServlet("/moviemenu.do")
public class MovieMenuCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String count = request.getParameter("count");
		String releaseDts = request.getParameter("releaseDts");
		String releaseDte = request.getParameter("releaseDte");
        String apiUrl = "http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&movieId=B&releaseDts="+releaseDts+"&releaseDte="+releaseDte+"&plot&ratedYn=y&listCount="+count+"&ServiceKey=ZWKXQFX4H4XB91QCSA4U";
        String jsonData = getJsonData(apiUrl);
        
        JSONParser parser = new JSONParser();
        try {
        	JSONObject jsonObj = (JSONObject) parser.parse(jsonData);
        	JSONArray movieListResult = (JSONArray) jsonObj.get("Data");
        	JSONObject movieData = (JSONObject) movieListResult.get(0); // 배열의 첫 번째 요소를 가져온다.
        	JSONArray movieList = (JSONArray) movieData.get("Result");
			
		    for(Object movieObj : movieList) {
		    	JSONObject movie = (JSONObject) movieObj;
				
		    	String movieId = (String) movie.get("movieId");
				String title = (String) movie.get("title");
				String prodYear = (String) movie.get("prodYear");
				String repRlsDate = (String) movie.get("repRlsDate");
				String genre = (String) movie.get("genre");
				String nation = (String) movie.get("nation");
	        	
			    JSONObject plots = (JSONObject) movie.get("plots");
			    JSONArray plotArray = (JSONArray) plots.get("plot");
			    JSONObject plotObject = (JSONObject) plotArray.get(0);
			    String plotText = (String) plotObject.get("plotText");
				
				//String plotText = (String) movie.get("plotText");
				String posterUrl = (String) movie.get("posters");				
				String rating = (String) movie.get("rating");
				
				MovieDTO mDTO = new MovieDTO();
				mDTO.setMovieId(movieId);
				mDTO.setTitle(title);
				mDTO.setProdYear(prodYear);
				mDTO.setRepRlsDate(repRlsDate);
				mDTO.setGenre(genre);
				mDTO.setNation(nation);
				mDTO.setPosterUrl(posterUrl);
				mDTO.setPlot(plotText);
				mDTO.setRating(rating);
				
				saveToDatabase(mDTO);
		    }
		    response.sendRedirect("TEST!!!/ManagerPage.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    private String getJsonData(String apiUrl) throws IOException {
        URL url = new URL(apiUrl);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");

        BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        StringBuilder response = new StringBuilder();
        String line;

        while ((line = reader.readLine()) != null) {
            response.append(line);
        }

        reader.close();
        connection.disconnect();

        return response.toString();
    }
    
    private void saveToDatabase(MovieDTO mDTO) {
            Connection conn = null;
            PreparedStatement pstmt = null;
            PreparedStatement pstmt2 = null;
     
            // 데이터베이스 연결
            try{
                conn = JDBCUtil.getConnection();
  
                String insertQuery = "INSERT INTO movie_data VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                pstmt2 = conn.prepareStatement(insertQuery);
                pstmt2.setString(1, mDTO.getMovieId());
                pstmt2.setString(2, mDTO.getTitle());
                pstmt2.setString(3, mDTO.getProdYear());
                pstmt2.setString(4, mDTO.getRepRlsDate());
                pstmt2.setString(5, mDTO.getGenre());
                pstmt2.setString(6, mDTO.getNation());
                pstmt2.setString(7, mDTO.getRating());
                pstmt2.setString(8, mDTO.getPosterUrl());
                pstmt2.setString(9, mDTO.getPlot());
                pstmt2.executeUpdate();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }finally {
	        	JDBCUtil.close(pstmt, conn);
	        }
    }
}