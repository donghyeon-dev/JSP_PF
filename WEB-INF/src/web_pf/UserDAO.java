package web_pf;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
	private UserDAO() {}
	private static UserDAO instance= null;
	public static UserDAO getInstance() {
		if(instance==null)
		instance = new UserDAO();
		return instance;
	}
	Connection conn = null;
	PreparedStatement pstmt = null;			
	ResultSet rs = null;					
	public Connection getConn() {
		try{
			Context initctx = new InitialContext();
			Context envctx = (Context)initctx.lookup("java:comp/env");
			DataSource ds = (DataSource)envctx.lookup("jdbc/pool");
			conn = ds.getConnection();
		}catch(Exception e) {}
		return conn;
	}
	public void deleteUser(String id) {
		try {
			conn = getConn();
			String sql = "DELETE FROM users WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {try {conn.close();} catch (SQLException e) {}}
			if(pstmt != null) {try {pstmt.close();} catch (SQLException e) {}}
		}
	}
	public void updateUser(User user) {
		System.out.println(user.getId());
		try {
			conn = getConn();
			String sql = "UPDATE users SET pw=?, name=?, tel=?, email=? WHERE id=?";
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, user.getPw());
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getTel());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getId());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {try {conn.close();} catch (Exception e) {}}
			if(pstmt != null) {try {conn.close();} catch (Exception e) {}}
		}
	}
	
	public void jointUser(User user) {
		try {
			conn = getConn();
			String sql = "INSERT INTO users VALUES(?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getTel());
			pstmt.setString(5, user.getEmail());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {try {conn.close();} catch (Exception e) {}}
			if(pstmt != null) {try {conn.close();} catch (Exception e) {}}
		}
	}
	
	public boolean checkId(User user){
		try{
			conn = getConn();
			String sql = "SELECT * FROM users WHERE ID=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.id);
			rs = pstmt.executeQuery();
			String id = rs.getString(1);
			if(rs.next() && user.id.equals(id)){
				return true;
			}else{
				return false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {try {conn.close();} catch (Exception e) {}}
			if(pstmt != null) {try {conn.close();} catch (Exception e) {}
			if(rs != null) {try {rs.close();} catch (SQLException e) {}}}
		}
		return false;
		
		
	}
	public Vector<User> getAllUser(){
		Vector<User> vec = new Vector<User>();	
		try {
			conn = getConn();
			String sql = "select * from users";
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			while(rs.next()) {
				User temp = new User();
				temp.setId(rs.getString("id"));
				temp.setPw(rs.getString("pw"));
				temp.setName(rs.getString("name"));
				temp.setTel(rs.getString("tel"));
				temp.setEmail(rs.getString("email"));
				vec.add(temp);
			}
		}catch(Exception e) {}
		finally {
			if(conn != null) {try {conn.close();} catch (SQLException e) {}}
			if(pstmt != null) {try {pstmt.close();} catch (SQLException e) {}}
			if(rs != null) {try {rs.close();} catch (SQLException e) {}}
		}
		
		return vec;
	}
	public User getOneUser(String id) {
		User user = new User();	
		try {
			
			conn = getConn();
			
			String sql = "SELECT * FROM users WHERE id=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				user.setId(rs.getString(1));
//				rs.getString(  column index    or column name     )
				user.setPw(rs.getString(2));
				user.setName(rs.getString(3));
				user.setTel(rs.getString(4));
				user.setEmail(rs.getString(5));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			if(conn != null) {try {conn.close();} catch (SQLException e) {}}
			if(pstmt != null) {try {pstmt.close();} catch (SQLException e) {}}
			if(rs != null) {try {rs.close();} catch (SQLException e) {}}
		}	
		return user;
	}
	
	public boolean loginUser(String id , String pw) {
		boolean isFind = false;
		try {
			conn = getConn();
			String sql = "select * from users where id=? and pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw"))  ) {
					System.out.println("찾았다.");
					isFind =  true;
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(conn != null) {try {conn.close();} catch (Exception e) {}}
			if(pstmt != null) {try {pstmt.close();} catch (Exception e) {}}
			if(rs != null) {try {rs.close();} catch (Exception e) {}}
		}
		
		return isFind;
	}
}
