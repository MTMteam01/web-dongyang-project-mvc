package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import common.JDBCUtil;

@WebServlet("/movieinfo.do")
public class MovieInfCont extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    	//String year = request.getParameter("year");
        String apiUrl = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&itemPerPage=10&targetDt=20231212";
        System.out.println(getJsonData(apiUrl));
        String jsonData = getJsonData(apiUrl);
        JSONParser parser = new JSONParser();
        try {
			JSONObject jsonObj = (JSONObject) parser.parse(jsonData);
			JSONObject boxOfficeResult = (JSONObject) jsonObj.get("boxOfficeResult");
		    JSONArray dailyBoxOfficeList = (JSONArray) boxOfficeResult.get("dailyBoxOfficeList");
			
		    for(Object dailyBoxOfficeObj : dailyBoxOfficeList) {
		    	JSONObject dailyBoxOffice = (JSONObject) dailyBoxOfficeObj;
				
				String rank = (String) dailyBoxOffice.get("rank");
				String movieNm = (String) dailyBoxOffice.get("movieNm");
				String openDt = (String) dailyBoxOffice.get("openDt");
				String audiAcc = (String) dailyBoxOffice.get("audiAcc");
				
				saveToDatabase(rank, movieNm, openDt, audiAcc);
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

    private void saveToDatabase(String rank, String movieNm, String openDt, String audiAcc) {

            Connection conn = null;
            PreparedStatement pstmt = null;
            PreparedStatement pstmt2 = null;
     
            // 데이터베이스 연결
            try{
                conn = JDBCUtil.getConnection();
  
                String insertQuery = "INSERT INTO BoxOffice VALUES (?, ?, ?, ?)";
                pstmt2 = conn.prepareStatement(insertQuery);
                pstmt2.setString(1, rank);
                pstmt2.setString(2, movieNm);
                pstmt2.setString(3, openDt);
                pstmt2.setString(4, audiAcc);
                pstmt2.executeUpdate();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }finally {
	        	JDBCUtil.close(pstmt, conn);
	        }
    }
}
