package dou.renyu.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dou.renyu.dao.MovieCommentDao;
import dou.renyu.domain.MovieComment;
import dou.renyu.domain.User;

@Controller
@RequestMapping("/comm")
public class MovieCommentController {

	@Resource
	private MovieCommentDao movieCommentDao;
	
	@RequestMapping("/add")
	@ResponseBody
	public Map publishComment(HttpServletRequest request,HttpSession session){
		String mccontent = request.getParameter("mccontent");//评论内容
		String mid =  request.getParameter("mid");//电影id
		LocalDateTime dateNow = LocalDateTime.now();
		SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd");
		String mctime = sdf.format(new Date());
		String mcid = UUID.randomUUID().toString();
		User user =session.getAttribute("user")==null?null:(User)session.getAttribute("user");
		String uid = user.getuId();
		MovieComment movieComment = new MovieComment();
		movieComment.setMcid(mcid);
		movieComment.setMid(mid);
		movieComment.setUid(uid);
		int isOk = movieCommentDao.addComment(movieComment);
		Map map = new HashMap();
		if(isOk>0){
			map.put("message", "success");
		}else{
			map.put("message", "false");
		}
		return map;
	}
}
