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

	public RecipeVO(int recipeNo, String title, String content, String image, int hits, int likes, String wroteDate,
			MemberVO memberVO, CategoryVO categoryVO) {
		super();
		this.recipeNo = recipeNo;
		this.title = title;
		this.content = content;
		this.image = image;
		this.hits = hits;
		this.likes = likes;
		this.wroteDate = wroteDate;
		this.memberVO = memberVO;
		this.categoryVO = categoryVO;
	}

	public int getRecipeNo() {
		return recipeNo;
	}

	public void setRecipeNo(int recipeNo) {
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getWroteDate() {
		return wroteDate;
	}

	public void setWroteDate(String wroteDate) {
		this.wroteDate = wroteDate;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	public CategoryVO getCategoryVO() {
		return categoryVO;
	}

	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}

	@Override
	public String toString() {
		return "RecipeVO [recipeNo=" + recipeNo + ", title=" + title + ", content=" + content + ", image=" + image
				+ ", hits=" + hits + ", likes=" + likes + ", wroteDate=" + wroteDate + ", memberVO=" + memberVO
				+ ", categoryVO=" + categoryVO + "]";
	}
}
