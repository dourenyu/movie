package dou.renyu.dao;

import java.util.List;

import dou.renyu.domain.MovieComment;

public interface MovieCommentDao {

	//�������
	public int addComment(MovieComment movieComment);
	
	//���ݵ�Ӱid��ѯ����
	public List<MovieComment> selectComment(String mid);
}
