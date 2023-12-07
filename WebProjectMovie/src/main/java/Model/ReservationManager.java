package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class ReservationManager {
    public static void reserveSeat(String seat, String movieId) {
        try (Connection connection = JDBCUtil.getConnection()) {
            String sql = "INSERT INTO reservations (seat, movie_id) VALUES (?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, seat);
                statement.setString(2, movieId);
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static boolean isSeatReserved(String seat) {
        try (Connection connection = JDBCUtil.getConnection()) {
            String sql = "SELECT * FROM reservations WHERE seat = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, seat);
                try (ResultSet resultSet = statement.executeQuery()) {
                    return resultSet.next();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static List<String> getReservedSeats() {
        List<String> reservedSeats = new ArrayList<>();
        try (Connection connection = JDBCUtil.getConnection()) {
            String sql = "SELECT seat FROM reservations";
            try (PreparedStatement statement = connection.prepareStatement(sql);
                 ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    reservedSeats.add(resultSet.getString("seat"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reservedSeats;
    }
}