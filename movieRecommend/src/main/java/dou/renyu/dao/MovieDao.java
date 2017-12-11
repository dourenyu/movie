package dou.renyu.dao;

import java.util.List;

import dou.renyu.domain.Movie;

public interface MovieDao {

	/**
	 * 查询电影 按价格排序 或者热门排序
	 * @param movie
	 * @return
	 */
	public List<Movie> selectMovie(Movie movie);
	
	
	/**
	 * 添加电影
	 * @param movie
	 * @return
	 */
	public int insertMovie(Movie movie);
	
	/**
	 * 通过电影id查询详情
	 * @param mid
	 * @return
	 */
	public Movie selectMovieByMid(String mid);
	
	/**
	 * 根据电影名进行模糊查询
	 * @param likeName
	 * @return
	 */
	public List<Movie> selectMovieForLike(String likeName);
}
