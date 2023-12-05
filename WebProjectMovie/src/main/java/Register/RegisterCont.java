package Register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Register.MemberDAO;
import Register.MemberDTO;

@WebServlet("/register.do")
public class RegisterCont extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//radio에서 권한 1 : 일반, 2 : 관리자 
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String authority = request.getParameter("auth"); //HTML에서 radio태그를 통해 불러온 권한 값을 저장
		
		int auth = Integer.parseInt(authority); //String으로 되어있는 권한사항을 int값으로 바꿈
		
		MemberDTO mDto = new MemberDTO();
		mDto.setId(id);
		mDto.setPassword(pw);
		mDto.setName(name);
		mDto.setPhone(phone);
		mDto.setAuth(auth);
		
		MemberDAO mDao = new MemberDAO();	
		boolean insertCheck = mDao.userInsert(mDto);
		
		if(insertCheck){ //제대로 DB에 쿼리 전송이 되었는지 아닌지
			HttpSession session = request.getSession();
			session.setAttribute("memID", id); //로그인 후 session id 표시할때 사용
			RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp");
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("회원가입 페이지로 리로드");
			dispatcher.forward(request, response);
		}
	}
}
