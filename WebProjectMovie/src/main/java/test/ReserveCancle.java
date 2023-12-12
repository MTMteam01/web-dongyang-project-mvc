package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/reservecancle.do")
public class ReserveCancle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String movieId = request.getParameter("movieId");
		ReserveDTO rDTO = new ReserveDTO();
		rDTO.setId(id);
		rDTO.setMovieId(movieId);
		
		ReserveDAO reserveDAO = new ReserveDAO();
		boolean Result = reserveDAO.userDelete(rDTO);

        if (Result) {
        	response.sendRedirect("TEST!!!/ManagerPage.jsp");
        	System.out.println("성공");
        } else {
        	response.sendRedirect("TEST!!!/ManagerPage.jsp");
            System.out.println("실패");// 로그인 실패 시 이동할 페이지
        }
	}

}
