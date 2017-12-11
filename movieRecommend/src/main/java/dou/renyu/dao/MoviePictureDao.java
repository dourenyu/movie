package dou.renyu.dao;

import dou.renyu.domain.MoviePicture;

public interface MoviePictureDao {

	/**
	 * 添加电影图片
	 * @param moviePicture
	 * @return
	 */
	public int insertMovivePicture(MoviePicture moviePicture);
	
	/**
	 * 根据电影id来查询电影图片
	 * @param mid
	 * @return
	 */
	public MoviePicture selectMoviePictureByMid(String mid);
}
