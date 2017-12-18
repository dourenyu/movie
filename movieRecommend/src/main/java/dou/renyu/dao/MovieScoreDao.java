package dou.renyu.dao;

import java.util.List;

import dou.renyu.domain.MovieScore;

public interface MovieScoreDao {

	/**
	 * 电影评分
	 * @param movieScore
	 * @return
	 */
	public int addMscore(MovieScore movieScore);
	
	/**
	 * 查询某部电影的所有评分
	 * @param mid
	 * @return
	 */
	public List<MovieScore> selectMS(String mid);
}
