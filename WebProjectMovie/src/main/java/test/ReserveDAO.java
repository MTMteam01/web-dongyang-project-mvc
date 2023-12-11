package test;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import Model.MemberDTO;
import common.JDBCUtil;



public class ReserveDAO {
<<<<<<< HEAD
    // Add your database connection details here
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/reservationuser?serverTimezone=UTC&useSSL=false&characterEncoding=utf-8";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "1234";

    public List<String> getReservedSeats(String userId, String movieId, String theaterId, String date) {
        List<String> reservedSeats = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "SELECT seat FROM reservations WHERE user_id = ? AND movie_id = ? AND theater_id = ? AND date = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, userId);
                statement.setString(2, movieId);
                statement.setString(3, theaterId);
                statement.setString(4, date);

                try (ResultSet resultSet = statement.executeQuery()) {
                    while (resultSet.next()) {
                        reservedSeats.add(resultSet.getString("seat"));
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return reservedSeats;
    }

    public void saveReservation(String userId, String movieId, String theaterId, String date, String seat) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "INSERT INTO reservations (user_id, movie_id, theater_id, date, seat) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, userId);
                statement.setString(2, movieId);
                statement.setString(3, theaterId);
                statement.setString(4, date);
                statement.setString(5, seat);

                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
=======

	 public List<String> getReservedSeats(String userId, String movieId, String theaterId, String date) {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<String> reservedSeats = new ArrayList<>();
        
        try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT seat FROM reservations WHERE user_id = ? AND movie_id = ? AND theater_id = ? AND date = ?";
			PreparedStatement statement = conn.prepareStatement(sql);
					
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, movieId);
            pstmt.setString(3, theaterId);
            pstmt.setString(4, date);
            rs = pstmt.executeQuery();

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    reservedSeats.add(resultSet.getString("seat"));
                }
            }
        
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return reservedSeats;
}

    public void saveReservation(String userId, String movieId, String theaterId, String date, String seat) {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        
        try {
        	conn = JDBCUtil.getConnection();
        	String sql = "INSERT INTO reservations (user_id, movie_id, theater_id, date, seat) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);
            pstmt.setString(2, movieId);
            pstmt.setString(3, theaterId);
            pstmt.setString(4, date);
            pstmt.setString(5, seat);
  
            
            int count = pstmt.executeUpdate();

        }
     catch (SQLException e) {
        e.printStackTrace();
    	}
	}

        
    
    
    public List<String> getUserReservations(String userId) {
        List<String> userReservations = new ArrayList<>();
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        


        try {
        		conn = JDBCUtil.getConnection();
        		
        		String sql = "SELECT movie_id, theater_id, date, seat FROM reservations WHERE user_id = ?";
                pstmt = conn.prepareStatement(sql);
        		PreparedStatement statement = conn.prepareStatement(sql);
                rs = pstmt.executeQuery(sql);
        		statement.setString(1, userId);
                

                    while (rs.next()) {
                        String reservationInfo = "영화: " + rs.getString("movie_id") +
                                ", 극장: " + rs.getString("theater_id") +
                                ", 날짜: " + rs.getString("date") +
                                ", 좌석: " + rs.getString("seat");
                        userReservations.add(reservationInfo);
                    }
                
            

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userReservations;

    }
}
>>>>>>> fa5f31e0d4c0dd3ee98e10f4db1e39bf224f3347
