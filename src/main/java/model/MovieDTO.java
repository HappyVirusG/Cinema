package model;

public class MovieDTO {
	private String moviecode;
	private String title;
	private String director;
	private String actors;
	private String country;
	private String genre;
	private String summary;
	private String runningtime;
	private String ratingcode;
	private java.sql.Date opendate;
	private String image;
	private String price;
	private String engtitle;
	private String youtube;
	
	public String getMoviecode() {
		return moviecode;
	}
	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActors() {
		return actors;
	}
	public void setActors(String actors) {
		this.actors = actors;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getRunningtime() {
		return runningtime;
	}
	public void setRunningtime(String runningtime) {
		this.runningtime = runningtime;
	}
	public String getRatingcode() {
		return ratingcode;
	}
	public void setRatingcode(String ratingcode) {
		this.ratingcode = ratingcode;
	}

	public java.sql.Date getOpendate() {
		return opendate;
	}
	public void setOpendate(java.sql.Date opendate) {
		this.opendate = opendate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getEngtitle() {
		return engtitle;
	}
	public void setEngtitle(String engtitle) {
		this.engtitle = engtitle;
	}
	public String getYoutube() {
		return youtube;
	}
	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}
	
	
}
