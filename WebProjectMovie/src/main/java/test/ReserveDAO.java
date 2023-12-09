package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReserveDAO {
    // Add your database connection details here
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/reservationuser?serverTimezone=UTC&useSSL=false&characterEncoding=utf-8";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "1234";

    public List<String> getReservedSeats(String movieId, String theaterId, String date) {
        List<String> reservedSeats = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "SELECT seat FROM reservations WHERE movie_id = ? AND theater_id = ? AND date = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, movieId);
                statement.setString(2, theaterId);
                statement.setString(3, date);

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

    public void saveReservation(String movieId, String theaterId, String date, String seat) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "INSERT INTO reservations (movie_id, theater_id, date, seat) VALUES (?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, movieId);
                statement.setString(2, theaterId);
                statement.setString(3, date);
                statement.setString(4, seat);

                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
