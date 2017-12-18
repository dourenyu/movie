package dou.renyu.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import dou.renyu.dao.MovieDao;
import dou.renyu.dao.MoviePictureDao;
import dou.renyu.domain.Movie;
import dou.renyu.domain.MovieComment;
import dou.renyu.domain.MoviePicture;

@Controller
@RequestMapping("/movie")
public class MoiveController {

	@Resource
	private MovieDao movieDao;
	@Resource
	private MoviePictureDao moviePictureDao;
	 
	/**
	 * 查詢所有電影
	 * @param session
	 * @return
	 */
	@RequestMapping("/list")
	public String selectMooiveList(HttpSession session){
		Movie movie = new Movie();
		List<Movie> ltMoive = movieDao.selectMovie(movie);
		session.setAttribute("ltMoive", ltMoive);
		return "/movie";
	}
	
	
	@RequestMapping("/addMovie")
	@ResponseBody
	public Map addMovie(MultipartFile[] file,HttpServletRequest request) throws IOException{
		
		Movie movie = new Movie();
		String mid = UUID.randomUUID().toString();//电影id
		String mv_name = request.getParameter("mv_name");//名称
		String mv_details = request.getParameter("mv_details");//简介
		String mv_grade  = request.getParameter("mv_grade");//评分
		String mv_price  = request.getParameter("mv_price");//价格
		movie.setMid(mid);
		movie.setMname(mv_name);
		movie.setMcontent(mv_details);
		movie.setMprice(Double.parseDouble(mv_price));
		movie.setMgrade(Double.parseDouble(mv_grade));
		
		int isAddmovie = movieDao.insertMovie(movie);
		
		String path = request.getServletContext().getRealPath("/upload");
		String name = null;
		int c = 0;
		MoviePicture picture = new MoviePicture();
		if(file!=null&&file.length>0){
			for(int i =0;i<file.length;i++){
				MultipartFile file1 = file[i];
				name = System.currentTimeMillis()+file1.getOriginalFilename();
				file1.transferTo(new File(path,name));
			}		
			picture.setMid(mid);
			picture.setMpid(UUID.randomUUID().toString());
			picture.setMppath(path+name);
			c = moviePictureDao.insertMovivePicture(picture);
		}
		Map map = new HashMap();
		if(isAddmovie!=0 || c!=0){
			map.put("message", "true");
			request.getSession().setAttribute("picture",picture);
			request.getSession().setAttribute("movie", movie);
		}
		else{
			map.put("message", "error");
		}
		return map;
	}
	
	/**
	 * 查詢電影明顯
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("/minfo")
	public String queryMovieInfo(HttpServletRequest request,HttpSession session){
		String mid = request.getParameter("mid");
		Movie movie = movieDao.selectMovieByMid(mid);
		MoviePicture moviePicture = moviePictureDao.selectMoviePictureByMid(mid);
		MovieCommentController movieCommentController = new MovieCommentController();
		List<MovieComment> list = new ArrayList<MovieComment>();
		list = movieCommentController.queryMovieComment(mid);
		session.setAttribute("movie", movie);
		session.setAttribute("moviePicture", moviePicture);
		session.setAttribute("movieCommentList", list);
		return "";
	}
	
	/**
	 * 根据电影名称进行模糊查询
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("/qlike")
	public String queryMovieForLike(HttpServletRequest request,HttpSession session){
		String mname = request.getParameter("likeName");
		List<Movie> ltMovie =  movieDao.selectMovieForLike(mname);
		return "";
	}
	
}
