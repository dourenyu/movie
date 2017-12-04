package dou.renyu.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dou.renyu.dao.UserDao;
import dou.renyu.domain.User;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Resource
	private UserDao userDao;
	
	
	@RequestMapping(value="/toLogin")
	@ResponseBody
	public Map login(User user,HttpSession session){
		Map map = new HashMap();
		User nowUser = userDao.selectUserByAccAndPwd(user);
		if(nowUser==null){
			map.put("message", "error");
		}else{
			session.setAttribute("user", nowUser);
			map.put("message", "success");
		}
		return map;
	}
	
	
}
