package org.kosta.sharecipe.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	private DataSource dataSource;

	private MemberDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}

	public static MemberDAO getInstance() {
		return instance;
	}

	public void closeAll(PreparedStatement pstmt, Connection con) throws SQLException {
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if (rs != null)
			rs.close();
		closeAll(pstmt, con);
	}

	public MemberVO login(String id, String password) throws SQLException {
		MemberVO memberVO = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "select name,address,signInDate,birthday,eMail,tel from recipe_member where id=? and password=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				memberVO = new MemberVO(id, password, rs.getString(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6));
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return memberVO;
	}

	public void updateMember(MemberVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "update mvc_member set password=?,name=?,address=?,birthday=to_date(?,'YYYY-MM-DD')  where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getPassword());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getAddress());
			pstmt.setString(4, vo.getBirthday());
			pstmt.setString(5, vo.getId());
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}

	public boolean checkId(String id) throws SQLException {
		boolean result = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "select count(*) from recipe_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next() && rs.getInt(1) == 1)
				result = true;
		} finally {
			closeAll(rs, pstmt, con);
		}
		return result;
	}

	public void register(MemberVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into recipe_member(ID,NAME,PASSWORD,ADDRESS,SIGN_IN_DATE,BIRTHDAY,E_MAIL,TEL) ");
			sql.append("values(?,?,?,?,sysdate,to_date(?,'YYYY-MM-DD'),?,?)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getPassword());
			pstmt.setString(4, vo.getAddress());
			pstmt.setString(5, vo.getBirthday());
			pstmt.setString(6, vo.geteMail());
			pstmt.setString(7, vo.getTel());
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}
}
