package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ReservationManager;
import common.JDBCUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reserve.do")
public class ReservationCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] selectedSeats = request.getParameterValues("selectedSeats");
        String movieId = request.getParameter("movieId");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = JDBCUtil.getConnection();
            
            for (String seat : selectedSeats) {

            // Check if the seat is reserved
            if (!ReservationManager.isSeatReserved(seat)) {
                // If not reserved, reserve the seat
                ReservationManager.reserveSeat(seat, movieId);
                response.getWriter().print("Seat reserved successfully.");
            }else {
                // If already reserved, return a message
                response.getWriter().print("Seat is already reserved.");
            }
            }
            response.getWriter().print("Reservation completed successfully.");
        } finally {
            JDBCUtil.close(stmt, conn);
        }
	}

}
