package test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String movieId = request.getParameter("movieId");
        String theaterId = request.getParameter("theaterId");
        String date = request.getParameter("date");
        String seat = request.getParameter("seat");

        ReserveDAO reserveDAO = new ReserveDAO();

        // Check if the seat is available
        List<String> reservedSeats = reserveDAO.getReservedSeats( theaterId,movieId, theaterId, date);
        if (reservedSeats.contains(seat)) {
            // Seat is already reserved, handle accordingly (e.g., show an error message)
            response.getWriter().println("Seat is already reserved.");
        } else {
            // Save the reservation
            reserveDAO.saveReservation(theaterId, movieId, theaterId, date, seat);
            response.getWriter().println("Reservation successful!");
        }
    }
}
