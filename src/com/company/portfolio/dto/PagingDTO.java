package com.company.portfolio.dto;

public class PagingDTO {
	private int pageTotal; //전체게시팜(레코드) 갯수:103
	private int onepagelimit; //한페이지당보여주는(레코드)개수:10
	private int pageAll; //전체페이지:11 ceil(103/10)
	private int pstartno; //db에서 가져올 번호
	private int bottomlist; //하단페이지네비:123456910
	private int pre_bottom; //하단이전
	private int next_bottom; //하단다음
	private int current_bottom; //현제피이지번호
	
	public PagingDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PagingDTO(int pageTotal, int onepagelimit, int pageAll, int pstartno, int bottomlist, int pre_bottom,
			int next_bottom, int current_bottom) {
		super();
		this.pageTotal = pageTotal;
		this.onepagelimit = onepagelimit;
		this.pageAll = pageAll;
		this.pstartno = pstartno;
		this.bottomlist = bottomlist;
		this.pre_bottom = pre_bottom;
		this.next_bottom = next_bottom;
		this.current_bottom = current_bottom;
	}

	public int getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}
	public int getOnepagelimit() {
		return onepagelimit;
	}
	public void setOnepagelimit(int onepagelimit) {
		this.onepagelimit = onepagelimit;
	}
	public int getPageAll() {
		return pageAll;
	}
	public void setPageAll(int pageAll) {
		this.pageAll = pageAll;
	}
	public int getpstartno() {
		return pstartno;
	}
	public void setpstartno(int pstartno) {
		this.pstartno = pstartno;
	}
	public int getBottomlist() {
		return bottomlist;
	}
	public void setBottomlist(int bottomlist) {
		this.bottomlist = bottomlist;
	}
	public int getPre_bottom() {
		return pre_bottom;
	}
	public void setPre_bottom(int pre_bottom) {
		this.pre_bottom = pre_bottom;
	}
	public int getNext_bottom() {
		return next_bottom;
	}
	public void setNext_bottom(int next_bottom) {
		this.next_bottom = next_bottom;
	}
	public int getCurrent_bottom() {
		return current_bottom;
	}
	public void setCurrent_bottom(int current_bottom) {
		this.current_bottom = current_bottom;
	}
	@Override
	public String toString() {
		return "PagingDTO [pageTotal=" + pageTotal + ", onepagelimit=" + onepagelimit + ", pageAll=" + pageAll
				+ ", pstartno=" + pstartno + ", bottomlist=" + bottomlist + ", pre_bottom=" + pre_bottom
				+ ", next_bottom=" + next_bottom + ", current_bottom=" + current_bottom + "]";
	}
}
