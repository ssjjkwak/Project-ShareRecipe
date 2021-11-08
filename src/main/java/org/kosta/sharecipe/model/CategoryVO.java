package org.kosta.sharecipe.model;

public class CategoryVO {
	private int categoryNo;
	private String cName;
	public CategoryVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CategoryVO(int categoryNo, String cName) {
		super();
		this.categoryNo = categoryNo;
		this.cName = cName;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	@Override
	public String toString() {
		return "CategoryVO [categoryNo=" + categoryNo + ", cName=" + cName + "]";
	}
	
	
}


