package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DynamicRoutingServlet
 */
@WebServlet("/WebProjectMovie/app/*")
public class DynamicRoutingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        // URL에서 경로 추출
        String pathInfo = request.getPathInfo();

        // 경로에 따라 다른 작업 수행
        if ("/page1".equals(pathInfo)) {
            // "/app/page1"에 대한 처리
            response.getWriter().write("This is page 1");
        } else if ("/page2".equals(pathInfo)) {
            // "/app/page2"에 대한 처리
            response.getWriter().write("This is page 2");
        } else {
            // 정의되지 않은 경로에 대한 처리
            response.getWriter().write("Invalid page");
        }
	}

}
