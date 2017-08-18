package com.mkki.movie.dto.copy;

public class MovieVO {
	private Integer code, price;
	private String title, director, actor, poster, synopsis;
	
	// getter, setter
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
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
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	
	@Override
	public String toString() {
		return "MovieDTO [code=" + code + ", price=" + price + ", title=" + title + ", director=" + director
				+ ", actor=" + actor + ", poster=" + poster + ", synopsis=" + synopsis + "]";
	}
}
