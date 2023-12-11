package test;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import Model.MemberDTO;
import common.JDBCUtil;



import common.JDBCUtil;

public class ReserveDAO {

	 public List<String> getReservedSeats(String id, String movieId, String theaterId, String date) {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<String> reservedSeats = new ArrayList<>();
        
        try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT seat FROM reservations WHERE id = ? AND movie_id = ? AND theater_id = ? AND date = ?";
			PreparedStatement statement = conn.prepareStatement(sql);
					
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
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

    public void saveReservation(String id, String movieId, String theaterId, String date, String seat) {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        
        try {
        	conn = JDBCUtil.getConnection();
            String sql = "INSERT INTO reservations (id, movie_id, theater_id, date, seat, user_id) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, movieId);
            pstmt.setString(3, theaterId);
            pstmt.setString(4, date);
            pstmt.setString(5, seat);
            pstmt.setString(6, id); 
  
            
            int count = pstmt.executeUpdate();
            if (count > 0) {
                System.out.println("Reservation saved successfully!");
            } else {
                System.out.println("Failed to save reservation.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.close(pstmt, conn);

      
    	}
	}

        
    
    
    public List<String> getUserReservations(String userId) {
        List<String> userReservations = new ArrayList<>();
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        


        try {
        		conn = JDBCUtil.getConnection();
        		
        		String sql = "SELECT movie_id, theater_id, date, seat FROM reservations WHERE id = ?";
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