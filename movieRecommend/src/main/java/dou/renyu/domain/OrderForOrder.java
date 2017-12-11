package dou.renyu.domain;

public class OrderForOrder {

	private Order order;
	private Movie movie;
	private MoviePicture moviePicture;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	public MoviePicture getMoviePicture() {
		return moviePicture;
	}
	public void setMoviePicture(MoviePicture moviePicture) {
		this.moviePicture = moviePicture;
	}
	public OrderForOrder(Order order, Movie movie, MoviePicture moviePicture) {
		super();
		this.order = order;
		this.movie = movie;
		this.moviePicture = moviePicture;
	}
	
	
}
