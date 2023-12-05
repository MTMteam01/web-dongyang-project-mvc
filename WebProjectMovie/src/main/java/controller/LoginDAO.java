package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vo.Member;

public class LoginDAO {
	private static LoginDAO loginDAO;
	private Connection con;
	
	private LoginDAO() {
		
	}
	public static LoginDAO getInstance() {
		if(loginDAO==null) {
			loginDAO = new LoginDAO();
		}
		return loginDAO;
	}
	
	public void setConnection(Connection con) {
		this.con=con;
	}
	
	public Member selectLoginMember(String id,String passwd) {
		Member loginMember = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		try {
			pstmt=con.prepareStatement("SELECT * FROM users WHERE id=? AND passwd=?");
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				loginMember= new Member();
				loginMember.setAddr(rs.getString("addr"));
				loginMember.setAge(rs.getInt("age"));
				loginMember.setEmail(rs.getString("email"));
				loginMember.setGender(rs.getString("gender"));
				loginMember.setId(rs.getString("id"));
				loginMember.setName(rs.getString("name"));
				loginMember.setNation(rs.getString("nation"));
				loginMember.setPasswd(rs.getString("passwd"));

		}
	}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		finally {
			try {
				rs.close();
				pstmt.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	
		return loginMember;
	}
}