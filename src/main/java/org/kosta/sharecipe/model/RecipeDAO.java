package org.kosta.sharecipe.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class RecipeDAO {
	private static RecipeDAO instance = new RecipeDAO();
	private DataSource dataSource;

	private RecipeDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}

	public static RecipeDAO getInstance() {
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

	/* 레시피 목록 전체 */
	public ArrayList<RecipeVO> getRecipeList() throws SQLException {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder(
					"select c.category_name,r.RECIPE_NUM,r.image,r.title,r.id,r.hits,r.likes,To_CHAR(r.reg_date,'YYYY.MM.DD') as reg_date ");
			sql.append("from recipe r,category c ");
			sql.append("where r.category_num=c.category_num ");
			sql.append("order by r.reg_date desc");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				RecipeVO rvo = new RecipeVO();
				CategoryVO cvo = new CategoryVO();
				cvo.setcName(rs.getString("category_name"));
				rvo.setCategoryVO(cvo);

				rvo.setRecipeNo(rs.getInt("recipe_num"));
				rvo.setImage(rs.getString("image"));
				rvo.setTitle(rs.getString("title"));

				MemberVO mvo = new MemberVO();
				mvo.setId(rs.getString("id"));
				rvo.setMemberVO(mvo);

				rvo.setHits(rs.getInt("hits"));
				rvo.setLikes(rs.getInt("likes"));
				rvo.setWroteDate(rs.getString("reg_date"));

				list.add(rvo);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}

	/* 레시피 등록 */
	public int createRecipe(RecipeVO rvo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			con = dataSource.getConnection();

			StringBuilder sql = new StringBuilder(
					"INSERT INTO recipe(RECIPE_NUM,id,title,content,category_num,image) ");
			sql.append("values(recipe_seq.nextval,?,?,?,?,?) ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, rvo.getMemberVO().getId());
			pstmt.setString(2, rvo.getTitle());
			pstmt.setString(3, rvo.getContent());
			pstmt.setInt(4, rvo.getCategoryVO().getCategoryNo());
			pstmt.setString(5, rvo.getImage());

			result = pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
		return result;
	}

	// 레시피 상세보기
	public RecipeVO getRecipeByNo(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		RecipeVO rvo = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder(
					"select r.recipe_num,r.title,m.id,r.content,r.hits,r.likes,to_char(r.reg_date,'yyyy.mm.dd') as reg_date,r.image ");
			sql.append("from recipe r, recipe_member m ");
			sql.append("where r.id=m.id and r.recipe_num=? ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rvo = new RecipeVO();
				rvo.setRecipeNo(rs.getInt("recipe_num"));
				rvo.setTitle(rs.getString("title"));
				rvo.setContent(rs.getString("content"));
				rvo.setHits(rs.getInt("hits"));
				rvo.setLikes(rs.getInt("likes"));
				rvo.setWroteDate(rs.getString("reg_date"));
				rvo.setImage(rs.getString("image"));
				MemberVO mvo = new MemberVO();
				mvo.setId(rs.getString("id"));
				rvo.setMemberVO(mvo);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return rvo;
	}

	// 조회수 증가
	public void updateHits(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = dataSource.getConnection();
			String sql = "update recipe set hits=hits+1 where recipe_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}
	
	// 레시피 삭제
	public void deleteRecipeByNo(String no) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "delete from RECIPE where recipe_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}
	
	//레시피 수정 
	public int updateRecipeByNo(RecipeVO rvo) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		int result =0;
		try {
			con=dataSource.getConnection();
			StringBuilder sql=new StringBuilder("update recipe set category_num=?,title=?,content=? , image=?");
			sql.append("where recipe_num=?");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setInt(1, rvo.getCategoryVO().getCategoryNo());
			pstmt.setString(2, rvo.getTitle());
			pstmt.setString(3, rvo.getContent());
			pstmt.setString(4, rvo.getImage());
			pstmt.setInt(5, rvo.getRecipeNo());
			result = pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
		return result;
	}
}




