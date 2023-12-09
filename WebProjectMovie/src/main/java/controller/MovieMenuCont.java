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

@WebServlet("/moviemenu.do")
public class MovieMenuCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String count = request.getParameter("count");
        String apiUrl = "http://kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json?key=f5eef3421c602c6cb7ea224104795888&itemPerPage="+count;
        String jsonData = getJsonData(apiUrl);
        
        JSONParser parser = new JSONParser();
        try {
			JSONObject jsonObj = (JSONObject) parser.parse(jsonData);
			JSONObject movieListResult = (JSONObject) jsonObj.get("movieListResult");
		    JSONArray movieList = (JSONArray) movieListResult.get("movieList");
			
		    for(Object movieObj : movieList) {
		    	JSONObject movie = (JSONObject) movieObj;
				
				String movieNm = (String) movie.get("movieNm");
				String prdtYear = (String) movie.get("prdtYear");
				String openDt = (String) movie.get("openDt");
				String genreAlt = (String) movie.get("genreAlt");
				String repNationNm = (String) movie.get("repNationNm");
				
				saveToDatabase(movieNm, prdtYear, openDt, genreAlt, repNationNm);
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
    
    private void saveToDatabase(String movieNm, String prdtYear, String openDt, String genreAlt, String repNationNm) {
    		System.out.println("영화명: " + movieNm + ", 년도: " + prdtYear + ", 개봉날짜: " + openDt + ", 장르: " + genreAlt + ", 국가: " + repNationNm );
            Connection conn = null;
            PreparedStatement pstmt = null;
            PreparedStatement pstmt2 = null;
     
            // 데이터베이스 연결
            try{
                conn = JDBCUtil.getConnection();
  
                String insertQuery = "INSERT INTO movie_data VALUES (?, ?, ?, ?, ?)";
                pstmt2 = conn.prepareStatement(insertQuery);
                pstmt2.setString(1, movieNm);
                pstmt2.setString(2, prdtYear);
                pstmt2.setString(3, openDt);
                pstmt2.setString(4, genreAlt);
                pstmt2.setString(5, repNationNm);
                pstmt2.executeUpdate();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }finally {
	        	JDBCUtil.close(pstmt, conn);
	        }
    }
}