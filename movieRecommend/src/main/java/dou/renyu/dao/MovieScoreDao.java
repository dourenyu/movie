package dou.renyu.dao;

import java.util.List;

import dou.renyu.domain.MovieScore;

public interface MovieScoreDao {

	/**
	 * ��Ӱ����
	 * @param movieScore
	 * @return
	 */
	public int addMscore(MovieScore movieScore);
	
	/**
	 * ��ѯĳ����Ӱ����������
	 * @param mid
	 * @return
	 */
	public List<MovieScore> selectMS(String mid);
}
