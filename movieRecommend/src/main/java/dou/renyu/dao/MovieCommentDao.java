package dou.renyu.dao;

import java.util.List;

import dou.renyu.domain.MovieComment;

public interface MovieCommentDao {

	//添加评论
	public int addComment(MovieComment movieComment);
	
	//根据电影id查询评论
	public List<MovieComment> selectComment(String mid);
}
