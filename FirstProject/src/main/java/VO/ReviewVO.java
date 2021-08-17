package VO;

public class ReviewVO {

	private int rev_no;
	private int pdt_code;
	private String title;
	private String content;
	private int rating;
	
	public int getRev_no() {
		return rev_no;
	}
	public int getPdt_code() {
		return pdt_code;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public int getRating() {
		return rating;
	}
	
	public ReviewVO(int rev_no, int pdt_code, String title, String content, int rating) {
		this.rev_no = rev_no;
		this.pdt_code = pdt_code;
		this.title = title;
		this.content = content;
		this.rating = rating;
	}
	
}
