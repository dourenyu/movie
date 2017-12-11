package dou.renyu.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import dou.renyu.dao.MovieDao;
import dou.renyu.dao.MoviePictureDao;
import dou.renyu.dao.OrderDao;
import dou.renyu.domain.Movie;
import dou.renyu.domain.MoviePicture;
import dou.renyu.domain.Order;
import dou.renyu.domain.OrderForOrder;
import dou.renyu.domain.User;

@Controller
public class OrderController {
	
	@Resource
	private OrderDao orderDao;
	
	@Resource
	private MovieDao movieDao;
	@Resource
	private MoviePictureDao moviePictureDao;
	
	
	public Map buyTicket(HttpServletRequest request,HttpSession session){
		String mid = request.getParameter("mid");
		User user = session.getAttribute("user")==null?null: (User)session.getAttribute("user");
		String uid = user.getuId();
		String oid = UUID.randomUUID().toString();
		SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd");
		String otime = sdf.format(new Date());
		Order order = new Order(oid,uid,mid,otime);
		int isOk = orderDao.addOrder(order);
		Map<String,String> map = new HashMap<String,String>();
		if(isOk>0)
			map.put("message", "success");
		else
			map.put("message", "false");
		return map;
	}
	
	public String queryMyOrder(HttpServletRequest request,HttpSession session){
		User user = session.getAttribute("user")==null?null: (User)session.getAttribute("user");
		String uid = user.getuId();
		List<OrderForOrder> ltOrderForOrder = new ArrayList<OrderForOrder>();
		List<Order> ltOrder = new ArrayList<Order>();
		ltOrder = orderDao.selectOrder(uid);
		if(ltOrder.size()>0){
			for(Order order:ltOrder){
				String mid = order.getMid();
				Movie movie = movieDao.selectMovieByMid(mid);
				MoviePicture moviePicture = moviePictureDao.selectMoviePictureByMid(mid);
				OrderForOrder orderForOrder = new OrderForOrder(order,movie,moviePicture);
				ltOrderForOrder.add(orderForOrder);
			}
		}
		session.setAttribute("ltOrder", ltOrder);
		return "";
	}
}
