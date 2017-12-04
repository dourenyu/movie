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
}
