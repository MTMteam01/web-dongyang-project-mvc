package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        String movie_ad = request.getParameter("movie_ad");
        String movie_seat = request.getParameter("movie_seat");
        String date = request.getParameter("date");
        String id = request.getParameter("id");
        String movie = request.getParameter("movie");
        
        
        ReserveDTO RDto = new ReserveDTO();
        RDto.setDate(date);
        RDto.setId(id);
        RDto.setMovie(movie);
        RDto.setMovie_ad(movie_ad);
        RDto.setMovie_seat(movie_seat);
        
        
        ReserveDAO RDao = new ReserveDAO();
        boolean insertCheck2 = RDao.isSeatReserved(movie_seat);
        
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = JDBCUtil.getConnection();
            
            for (String seat : selectedSeats) {

            // Check if the seat is reserved
            if (!ReserveDAO.isSeatReserved(seat)) {
                // If not reserved, reserve the seat
                ReserveDAO.reserveSeat(seat, movie);
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
