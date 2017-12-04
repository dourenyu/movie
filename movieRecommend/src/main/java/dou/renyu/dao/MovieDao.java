package dou.renyu.dao;

import java.util.List;

import dou.renyu.domain.Movie;

public interface MovieDao {

	/**
	 * ��ѯ��Ӱ ���۸����� ������������
	 * @param movie
	 * @return
	 */
	public List<Movie> selectMovie(Movie movie);
	
	
	/**
	 * ��ӵ�Ӱ
	 * @param movie
	 * @return
	 */
	public int insertMovie(Movie movie);
}
