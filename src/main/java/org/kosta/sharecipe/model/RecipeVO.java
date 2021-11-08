package org.kosta.sharecipe.model;



public class RecipeVO {
	private int recipeNo;
	private String title;
	private String content;
	private String image;
	private int hits;
	private int likes;
	private String wroteDate;
	private MemberVO memberVO;
	private CategoryVO categoryVO;
	
	public RecipeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public RecipeVO(String title, String content, MemberVO memberVO) {
		super();
		this.title = title;
		this.content = content;
		this.memberVO = memberVO;
	}


	public RecipeVO(int recipeNo, String title, String content, int hits, String wroteDate, MemberVO memberVO) {
		super();
		this.recipeNo = recipeNo;
		this.title = title;
		this.content = content;
		this.hits = hits;
		this.wroteDate = wroteDate;
		this.memberVO = memberVO;
	}


	public int getrecipeNo() {
		return recipeNo;
	}


	public void setrecipeNo(int recipeNo) {
		this.recipeNo = recipeNo;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getHits() {
		return hits;
	}


	public void setHits(int hits) {
		this.hits = hits;
	}


	public String getwroteDate() {
		return wroteDate;
	}


	public void setwroteDate(String wroteDate) {
		this.wroteDate = wroteDate;
	}


	public MemberVO getMemberVO() {
		return memberVO;
	}


	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}


	@Override
	public String toString() {
		return "PostVO [recipeNo=" + recipeNo + ", title=" + title + ", content=" + content + ", hits=" + hits + ", wroteDate="
				+ wroteDate + ", memberVO=" + memberVO + "]";
	}
	
}










