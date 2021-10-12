package memberDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import member.bean.MemberDTO;

public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private DataSource ds;
	
	public static MemberDAO instance = null;
	
	public MemberDAO() {
		
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	public void write(MemberDTO memberDTO) {
		
		
		String sql = "insert into member values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getName());
			pstmt.setString(2, memberDTO.getId());
			pstmt.setString(3, memberDTO.getPwd());
			pstmt.setString(4, memberDTO.getGender());
			pstmt.setString(5, memberDTO.getEmail1());
			pstmt.setString(6, memberDTO.getEmail2());
			pstmt.setString(7, memberDTO.getTel1());
			pstmt.setString(8, memberDTO.getTel2());
			pstmt.setString(9, memberDTO.getTel3());
			pstmt.setString(10, memberDTO.getZipcode());
			pstmt.setString(11, memberDTO.getAddr1());
			pstmt.setString(12, memberDTO.getAddr2());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally { unConnection(); }
		
		
	}
	
	public String[] check(String id, String pwd) {

		
		String sql = "select * from member where id = ? and pwd = ?";
		String my[] = new String[3];
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				System.out.println(rs.getString("name"));
				my[0] = rs.getString("name");
				my[1] = rs.getString("id");
				my[2] = rs.getString("email1") + "@" + rs.getString("email2");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally { unConnection(); }
		
		return my;
	}
	
	public boolean checkId(String id) {
		boolean tf = true;
		
		String sql = "select * from member where id = ?";
		System.out.println("id = " + id);
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) tf = false;
			System.out.println("tf = " + tf);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally { unConnection(); }
		
		return tf;
	}

	
	
	public static MemberDAO getInstance() {
		
		if(instance == null)
		{
			synchronized (MemberDAO.class)
			{
				instance = new MemberDAO();				
			}
		}
		
		return instance;	
	}
	
	public void unConnection() {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
