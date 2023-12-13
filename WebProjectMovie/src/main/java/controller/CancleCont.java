package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.ReserveDAO;
import test.ReserveDTO;

@WebServlet("/cancle.do")
public class CancleCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String movieId = request.getParameter("movie_id");
		
		ReserveDTO rDTO = new ReserveDTO();
		rDTO.setId(id);
		rDTO.setMovieId(movieId);
		
		ReserveDAO rDAO = new ReserveDAO();
		
		boolean Cancle = rDAO.userDelete(rDTO);
        
        if (Cancle) {
            response.sendRedirect("./myPage/myPageForm.jsp"); // 로그인 성공 시 이동할 페이지
        }
	}

}
