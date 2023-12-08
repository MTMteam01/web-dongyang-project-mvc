package Model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import common.JDBCUtil;



public class MemberDAO {

    public boolean loginCheck(String id, String password) {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        
        try {
			conn = JDBCUtil.getConnection();
            String strQuery = "select id, password from users where id = ? and password = ?";

            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            loginCon = rs.next();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
        	JDBCUtil.close(rs, pstmt, conn);
        }
        
        return loginCon;
    }	
	
	
    public boolean userInsert(MemberDTO mDTO) {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        
        try {
        	conn = JDBCUtil.getConnection();
            String strQuery = "insert into users values(?,?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, mDTO.getId());
            pstmt.setString(2, mDTO.getPassword());
            pstmt.setString(3, mDTO.getName());
            pstmt.setString(4, mDTO.getPhone());
            pstmt.setString(5, mDTO.getEmail());
            pstmt.setString(6, mDTO.getBirth());
            pstmt.setString(7, "고객");
            
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JDBCUtil.close(rs, pstmt, conn);
        }
        
        return flag;
    }
    
    public boolean userDelete(MemberDTO mDTO) {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        
        try {
        	conn = JDBCUtil.getConnection();
            String strQuery = "delete from users where id = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, mDTO.getId());
            System.out.println(pstmt);
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JDBCUtil.close(pstmt, conn);
        }
        
        return flag;
    }
    
    public boolean userUpdate(String id, String password, String name, String phone, String email, String birth) {
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
        	conn = JDBCUtil.getConnection();
            String strQuery = "update users set password = ?, name = ?, phone = ?, email =?, birth = ?, where id = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1, password);
            pstmt.setString(2, name);
            pstmt.setString(3, phone);
            pstmt.setString(4, email);
            pstmt.setString(5, birth);
            pstmt.setString(6, id);

            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JDBCUtil.close(rs, pstmt, conn);
        }
        
        return flag;
    	
    }
    
    public List<Map<String, String>> MemberList() {
    	List<Map<String, String>> members = new ArrayList<>();
    	Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try {
        	conn = JDBCUtil.getConnection();
            String strQuery = "select * from users";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(strQuery);
            
            while(rs.next()) {
            	 Map<String, String> member = new HashMap<>();
                 member.put("id", rs.getString("id"));
                 member.put("name", rs.getString("name"));
                 member.put("phone", rs.getString("phone"));
                 member.put("email", rs.getString("email"));
                 member.put("birth", rs.getString("birth"));
                 member.put("authority", rs.getString("authority"));

                 members.add(member);    	
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JDBCUtil.close(rs, stmt, conn);
        }
        return members;
    }
}
