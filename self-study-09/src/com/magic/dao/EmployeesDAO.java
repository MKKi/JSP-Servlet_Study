package com.magic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.magic.dto.EmployeesVO;

public class EmployeesDAO {
	private EmployeesDAO() {

	}

	private static EmployeesDAO instance = new EmployeesDAO();

	public static EmployeesDAO getInstance() {
		return instance;
	}

	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();

		return conn;
	}

	// userCheck()
	public int userCheck(String id, String pass, String lev) {
		int result = 2;
		String sql = "select * from employees where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (pass.equals(rs.getString("pass"))) {
					// lev="A"일 경우, result=3
					if (lev.equals(rs.getString("lev"))) {
						result = 3;
						// lev="B"일 경우, result=2
						if (lev.equals("B"))
							result = 2;
					} else {
						if(rs.getString("lev").equals("A")) result = 3;
						else result = 2;
					}
				} else {
					// 비밀번호가 틀릴 경우, result = 1
					result = 1;
				}
			} else {
				// 아이디가 틀릴 경우, result = 0;
				result = 0;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	//getMember()
	public EmployeesVO getMember(String id) {
		EmployeesVO eVo = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
		String sql = "select * from employees where id=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				eVo = new EmployeesVO();
				eVo.setId(rs.getString("id"));
				eVo.setPass(rs.getString("pass"));
				eVo.setName(rs.getString("name"));
				eVo.setLev(rs.getString("lev"));
				eVo.setEnter(rs.getDate("enter"));
				eVo.setGender(rs.getInt("gender"));
				eVo.setPhone(rs.getString("phone"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return eVo;
	}
	
	//updateMember()
	public int updateMember(EmployeesVO eVo) {
		int result = -1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update employees set pass=?, name=?, lev=?, gender=?, phone=? where id=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eVo.getPass());
			pstmt.setString(2, eVo.getName());
			pstmt.setString(3, eVo.getLev());
			pstmt.setInt(4, eVo.getGender());
			pstmt.setString(5, eVo.getPhone());
			pstmt.setString(6, eVo.getId());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//insertMember()
	
	public void insertMember(EmployeesVO eVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into employees values(?, ?, ?, ?, SYSDATE, ?, ?)";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eVo.getId());
			pstmt.setString(2, eVo.getPass());
			pstmt.setString(3, eVo.getName());
			pstmt.setString(4, eVo.getLev());
			pstmt.setInt(5, eVo.getGender());
			pstmt.setString(6, eVo.getPhone());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
