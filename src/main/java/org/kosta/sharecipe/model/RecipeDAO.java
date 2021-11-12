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
	public ArrayList<RecipeVO> getRecipeList(PagingBean pagingBean) throws SQLException {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			/*
			 * con = dataSource.getConnection(); StringBuilder sql = new StringBuilder(
			 * "select c.category_name,r.RECIPE_NUM,r.image,r.title,r.id,r.hits,r.likes,To_CHAR(r.reg_date,'YYYY.MM.DD') as reg_date "
			 * ); sql.append("from recipe r,category c ");
			 * sql.append("where r.category_num=c.category_num ");
			 * sql.append("order by r.reg_date desc");
			 */
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder(
					"select RECIPE_NUM,category_name,image,title,id,hits,likes,reg_date from( ");
			sql.append("select row_number() over(order by RECIPE_NUM desc) ");
			sql.append("as rnum,r.RECIPE_NUM,c.category_name,r.image,r.title,r.id,r.hits,r.likes,r.reg_date  ");
			sql.append("from recipe r,category c where r.category_num=c.category_num) ");
			sql.append("where rnum between ? and ? ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, pagingBean.getStartRowNumber());
			pstmt.setInt(2, pagingBean.getEndRowNumber());
			
			rs = pstmt.executeQuery();
			/*
			 * select RECIPE_NUM,category_name,image,title,id,hits,likes,reg_date from(
			 * --카테고리명까지 조인해서 가져온 것으로부터 select row_number() over(order by RECIPE_NUM desc)
			 * as rnum,r.RECIPE_NUM,c.category_name,r.image,r.title,r.id,r.hits,r.likes,r.
			 * reg_date from recipe r,category c where r.category_num=c.category_num ) where
			 * rnum between 1 and 5;
			 */
			
			
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
					"select r.category_num, r.recipe_num,r.title,m.id,r.content,r.hits,r.likes,to_char(r.reg_date,'yyyy.mm.dd') as reg_date,r.image ");
			sql.append("from recipe r, recipe_member m ");
			sql.append("where r.id=m.id and r.recipe_num=? ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rvo = new RecipeVO();
				CategoryVO cvo = new CategoryVO();
				cvo.setCategoryNo(rs.getInt("category_num"));
				rvo.setCategoryVO(cvo);
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

	// 레시피 수정
	public int updateRecipeByNo(RecipeVO rvo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("update recipe set category_num=?,title=?,content=? , image=?");
			sql.append("where recipe_num=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, rvo.getCategoryVO().getCategoryNo());
			pstmt.setString(2, rvo.getTitle());
			pstmt.setString(3, rvo.getContent());
			pstmt.setString(4, rvo.getImage());
			pstmt.setInt(5, rvo.getRecipeNo());
			result = pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
		return result;
	}
	

	//카테고리별 레시피 리스트
	public ArrayList<RecipeVO> getRecipeByCategory (String category_name,PagingBean pagingBean) throws SQLException{
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			/*
			StringBuilder sql = new StringBuilder(
					"select RECIPE_NUM,image,title,id,hits,likes,reg_date ");
			sql.append("from( ");
			sql.append("select row_number() over(order by RECIPE_NUM desc) as rnum,RECIPE_NUM,image,title,id,hits,likes,reg_date  ");
			sql.append("from recipe ");
			sql.append("where category_num=? ");
			sql.append(")where rnum between ? and ?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, num);
			pstmt.setInt(2, pagingBean.getStartRowNumber());
			pstmt.setInt(3, pagingBean.getEndRowNumber());
			*/
			
			
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("select category_num,RECIPE_NUM,image,title,id,hits,likes,to_char(reg_date,'YYYY.MM.DD') AS reg_date ");
			sql.append("from(  ");
			sql.append("select row_number() over(order by RECIPE_NUM desc) as rnum,r.RECIPE_NUM,c.category_num,r.image,r.title,r.id,r.hits,r.likes,r.reg_date ");
			sql.append("from recipe r,category c ");
			sql.append("where r.category_num=c.category_num and category_name=? ");
			sql.append(")where rnum between ? and ?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, category_name);
			pstmt.setInt(2, pagingBean.getStartRowNumber());
			pstmt.setInt(3, pagingBean.getEndRowNumber());
			
			/*
			 * con = dataSource.getConnection(); StringBuilder sql = new
			 * StringBuilder("SELECT c.category_num,r.RECIPE_NUM,r.image,r.title,r.id,r.hits,r.likes,to_char(r.reg_date,'YYYY.MM.DD') AS reg_date "
			 * ); sql.append("FROM recipe r, category c ");
			 * sql.append("WHERE r.category_num=c.category_num AND category_name=?");
			 */
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RecipeVO rvo = new RecipeVO();
				CategoryVO cvo = new CategoryVO();
				cvo.setCategoryNo(rs.getInt("category_num"));
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
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	
	//최신 데이터 8개 
	public ArrayList<RecipeVO> getLatestRecipe () throws SQLException{
		ArrayList<RecipeVO> list  = new ArrayList<RecipeVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("SELECT r.recipe_num,r.image, r.title,r.likes,TO_CHAR(r.reg_date,'YYYY.MM.DD')AS reg_date , c.category_name ");
			sql.append("FROM (select * from recipe order by reg_date desc)   r, category c ");
			sql.append("WHERE rownum<=8 AND r.category_num=c.category_num ");
			pstmt = con.prepareStatement(sql.toString());
			rs= pstmt.executeQuery();
			while(rs.next()) {
				RecipeVO rvo = new RecipeVO();
				rvo.setRecipeNo(rs.getInt("recipe_num"));
				rvo.setImage(rs.getString("image"));
				rvo.setTitle(rs.getString("title"));
				rvo.setLikes(rs.getInt("likes"));
				rvo.setWroteDate(rs.getString("reg_date"));
				
				CategoryVO cvo = new CategoryVO();
				cvo.setcName(rs.getString("category_name"));
				rvo.setCategoryVO(cvo);
				list.add(rvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;	
	}
	
	//총 게시물수 구하기
	public int getTotalPostCount() throws SQLException {
		int TotalPostCount = 0;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "select count(*) from recipe";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				TotalPostCount = rs.getInt(1);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return TotalPostCount;
	}
	
	//검색으로 리스트 조회
	public ArrayList<RecipeVO> searchTitleRecipe(String search) throws SQLException {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("SELECT recipe_num, image,title,id,hits,likes,to_char(reg_date,'YYYY.MM.DD') AS reg_date ");
			sql.append("FROM recipe ");
			sql.append("WHERE title like ? order by recipe_num desc");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, "%"+search+"%");
			//pstmt.setString(1, search);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RecipeVO rvo = new RecipeVO();
				//CategoryVO cvo = new CategoryVO();
				//cvo.setCategoryNo(rs.getInt(null));
				rvo.setCategoryVO(null);

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
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	public int getMyTotalPostCount(String id) throws SQLException {
		int TotalPostCount = 0;

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "select count(*) from recipe where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				TotalPostCount = rs.getInt(1);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return TotalPostCount;
	}
	/*  나의 레시피 목록 전체 */
	public ArrayList<RecipeVO> getMyRecipeList(PagingBean pagingBean,String id) throws SQLException {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			/*
			 * con = dataSource.getConnection(); StringBuilder sql = new StringBuilder(
			 * "select c.category_name,r.RECIPE_NUM,r.image,r.title,r.id,r.hits,r.likes,To_CHAR(r.reg_date,'YYYY.MM.DD') as reg_date "
			 * ); sql.append("from recipe r,category c ");
			 * sql.append("where r.category_num=c.category_num ");
			 * sql.append("order by r.reg_date desc");
			 */
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder(
					"select RECIPE_NUM,category_name,image,title,id,hits,likes,reg_date from( ");
			sql.append("select row_number() over(order by RECIPE_NUM desc) ");
			sql.append("as rnum,r.RECIPE_NUM,c.category_name,r.image,r.title,r.id,r.hits,r.likes,r.reg_date  ");
			sql.append("from recipe r,category c,recipe_member m where r.category_num=c.category_num  and r.id=? and r.id=m.id) ");
			sql.append("where rnum between ? and ? ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.setInt(2, pagingBean.getStartRowNumber());
			pstmt.setInt(3, pagingBean.getEndRowNumber());
			
			rs = pstmt.executeQuery();
			/*
			 * select RECIPE_NUM,category_name,image,title,id,hits,likes,reg_date from(
			 * --카테고리명까지 조인해서 가져온 것으로부터 select row_number() over(order by RECIPE_NUM desc)
			 * as rnum,r.RECIPE_NUM,c.category_name,r.image,r.title,r.id,r.hits,r.likes,r.
			 * reg_date from recipe r,category c where r.category_num=c.category_num ) where
			 * rnum between 1 and 5;
			 */
			
			
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
	
	public ArrayList<RecipeVO> getPopularRecipeList () throws SQLException{
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		Connection con = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("SELECT recipe_num,image,title,hits FROM (SELECT * FROM recipe ORDER BY hits DESC)  ");
			sql.append("WHERE rownum<=10 ");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RecipeVO rvo = new RecipeVO();
				rvo.setRecipeNo(rs.getInt("recipe_num"));
				rvo.setTitle(rs.getString("title"));
				rvo.setImage(rs.getString("image"));
				rvo.setHits(rs.getInt("hits"));
				list.add(rvo);
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
}
