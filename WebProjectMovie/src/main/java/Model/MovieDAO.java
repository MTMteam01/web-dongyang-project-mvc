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
            String strQuery = "select * from BoxOffice";
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
	
	public List<Map<String, String>> AllMovie() {
    	List<Map<String, String>> allmovies = new ArrayList<>();
    	Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try {
        	conn = JDBCUtil.getConnection();
            String strQuery = "SELECT * FROM movie_data";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(strQuery);
            
            while(rs.next()) {
            	 Map<String, String> movie = new HashMap<>();
            	 movie.put("movieId", rs.getString("movieId"));
            	 movie.put("title", rs.getString("title"));
            	 movie.put("year", rs.getString("year"));
            	 movie.put("date", rs.getString("date"));
            	 movie.put("genre", rs.getString("genre"));
            	 movie.put("nation", rs.getString("nation"));

            	 allmovies.add(movie);    	
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JDBCUtil.close(rs, stmt, conn);
        }
        return allmovies;
    }
}
