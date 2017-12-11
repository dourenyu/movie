package dou.renyu.dao;

import dou.renyu.domain.MoviePicture;

public interface MoviePictureDao {

	/**
	 * ��ӵ�ӰͼƬ
	 * @param moviePicture
	 * @return
	 */
	public int insertMovivePicture(MoviePicture moviePicture);
	
	/**
	 * ���ݵ�Ӱid����ѯ��ӰͼƬ
	 * @param mid
	 * @return
	 */
	public MoviePicture selectMoviePictureByMid(String mid);
}
