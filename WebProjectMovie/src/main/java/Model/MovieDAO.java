package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import common.JDBCUtil;

public class MovieDAO {
	public List<Map<String, String>> MovieList() {
    	List<Map<String, String>> movies = new ArrayList<>();
    	Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try {
        	conn = JDBCUtil.getConnection();
            String strQuery = "select * from movie_data";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(strQuery);
            
            while(rs.next()) {
            	 Map<String, String> movie = new HashMap<>();
            	 movie.put("rank", rs.getString("rank"));
            	 movie.put("movieNm", rs.getString("movieNm"));
            	 movie.put("openDt", rs.getString("openDt"));

                 movies.add(movie);    	
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JDBCUtil.close(rs, stmt, conn);
        }
        return movies;
    }
}
