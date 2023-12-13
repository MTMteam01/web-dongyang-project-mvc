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

@WebServlet("/update.do")
public class MyPageCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String password = request.getParameter("password");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        
        MemberDTO mDto = new MemberDTO();
        mDto.setId(id);
		mDto.setPassword(password);
		mDto.setEmail(email);
		mDto.setName(name);
		mDto.setPhone(phone);
        
        MemberDAO memberDAO = new MemberDAO();
        boolean Modify = memberDAO.userModify(mDto);
        
        if (Modify) {
            response.sendRedirect("./myPage/myPageForm.jsp"); // 로그인 성공 시 이동할 페이지
        }
	}

}
