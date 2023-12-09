package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.JDBCUtil;

@WebServlet("/boxoffice.do")
public class BoxOfficeReset extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	Connection conn = null;
	    	PreparedStatement pstmt = null;
	        
	        try {
	        	conn = JDBCUtil.getConnection();
	            String strQuery = "truncate table BoxOffice";
	            pstmt = conn.prepareStatement(strQuery);
	            pstmt.executeUpdate();
	            
	            response.sendRedirect("TEST!!!/ManagerPage.jsp");

	        } catch (Exception ex) {
	            System.out.println("Exception" + ex);
	        } finally {
	        	JDBCUtil.close(pstmt, conn);
	        }
	        
	}

}
