package test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션에서 사용자 ID 가져오기
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("id");

        // 사용자 ID가 없으면 로그인 페이지로 리다이렉트
        if (userId == null) {
            response.sendRedirect("loginForm.jsp");
            return;
        }

        // 이후 예약 로직 수행
        String movieId = request.getParameter("movieId");
        String theaterId = request.getParameter("theaterId");
        String date = request.getParameter("date");
        String seat = request.getParameter("seat");

        ReserveDAO reserveDAO = new ReserveDAO();

        // Check if the seat is available
        List<String> reservedSeats = reserveDAO.getReservedSeats(userId, movieId, theaterId, date);
        if (reservedSeats.contains(seat)) {
            // Seat is already reserved, handle accordingly (e.g., show an error message)
            response.getWriter().println("Seat is already reserved.");
        } else {
            // Save the reservation
            reserveDAO.saveReservation(userId, movieId, theaterId, date, seat);
            response.getWriter().println("Reservation successful!");
        }
    }
}
