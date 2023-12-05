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

@WebServlet("/Login.do")
public class LoginCont extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        MemberDAO memberDAO = new MemberDAO();
        boolean loginResult = memberDAO.loginCheck(id, password);

        if (loginResult) {
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            response.sendRedirect("login/welcome.jsp"); // 로그인 성공 시 이동할 페이지
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("login/loginForm.jsp"); // 로그인 실패 시 이동할 페이지
            request.setAttribute("errorMessage", "Invalid credentials. Please try again.");
            dispatcher.forward(request, response);
        }
    }
}
