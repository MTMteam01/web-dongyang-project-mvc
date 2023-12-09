package controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/Login.do")
public class LoginCont extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        System.out.println("받아온 id = " + request.getParameter("id"));

		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPassword(password);
        
        MemberDAO memberDAO = new MemberDAO();
        boolean loginResult = memberDAO.loginCheck(id, password);

        if (loginResult) {
            HttpSession session = request.getSession();
            session.setAttribute("id", id);

            response.sendRedirect("./home/index.jsp"); // 로그인 성공 시 이동할 페이지


        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("login/loginForm.jsp"); // 로그인 실패 시 이동할 페이지
            request.setAttribute("errorMessage", "Invalid credentials. Please try again.");
            dispatcher.forward(request, response);
        }
    }
}
