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

@WebServlet("/register.do")
public class RegisterCont extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//radio에서 권한 1 : 일반, 2 : 관리자 
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPassword(pw);
		mDto.setName(name);
		mDto.setPhone(phone);
		mDto.setEmail(email);
		mDto.setBirth(birth);
		
		MemberDAO mDao = new MemberDAO();	
		boolean insertCheck = mDao.userInsert(mDto);
		
		if(insertCheck){ //제대로 DB에 쿼리 전송이 되었는지 아닌지
			HttpSession session = request.getSession();
			session.setAttribute("memID", id); //로그인 후 session id 표시할때 사용
			RequestDispatcher dispatcher = request.getRequestDispatcher("/home/index.jsp");
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/register/RegisterPage.jsp");
			dispatcher.forward(request, response);
		}
	}
}
