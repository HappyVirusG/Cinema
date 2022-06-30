package model;

public class ReviewDTO {
	private String moviecode;
	private String idx;
	private java.sql.Date postdate;
	private String hit;
	private String content;
	private String membercode;
	private String score;
	private String movietitle;
	private String id;
	
	public String getMoviecode() {
		return moviecode;
	}
	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
	}
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}

	public java.util.Date getPostdate() {
		return postdate;
	}
	public void setPostdate(java.sql.Date postdate) {
		this.postdate = postdate;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMembercode() {
		return membercode;
	}
	public void setMembercode(String membercode) {
		this.membercode = membercode;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	
	//DB에는 없지만 필요하기 때문에 저장 
	public String getMovietitle() {
		return movietitle;
	}
	public void setMovietitle(String movietitle) {
		this.movietitle = movietitle;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	

}
