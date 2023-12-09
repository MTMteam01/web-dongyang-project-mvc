package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/administor.do")
public class ManagerCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		
		MemberDAO memberDAO = new MemberDAO();
		boolean Result = memberDAO.userDelete(mDto);

        if (Result) {
        	response.sendRedirect("TEST!!!/ManagerPage.jsp");
        	System.out.println("성공");
        } else {
        	response.sendRedirect("TEST!!!/ManagerPage.jsp");
            System.out.println("실패");// 로그인 실패 시 이동할 페이지
        }
	}

}
