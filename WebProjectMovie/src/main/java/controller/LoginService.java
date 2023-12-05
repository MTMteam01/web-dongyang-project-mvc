package controller;

import java.sql.Connection;
import java.sql.SQLException;

import common.JDBCUtil;
import vo.Member;

public class LoginService{
	public Member getLoginMember(String id,String passwd){
		LoginDAO loginDAO =LoginDAO.getInstance();
		Connection con = JDBCUtil.getConnection();
		loginDAO.setConnection(con);
		Member loginMember = loginDAO.selectLoginMember(id,passwd);
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return loginMember;
}
}