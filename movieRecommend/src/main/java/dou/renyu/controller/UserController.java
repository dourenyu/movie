package dou.renyu.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.buf.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import dou.renyu.dao.UserDao;
import dou.renyu.dao.UserInformationDao;
import dou.renyu.domain.User;
import dou.renyu.domain.UserInformation;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Resource
	private UserDao userDao;
	
	@Resource
	private UserInformationDao userInformationDao;
	
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
	
	@ResponseBody
	@RequestMapping("/alterInfo")
	@Transactional
	public Map alterInformantion(MultipartFile[] file,HttpSession session,HttpServletRequest request) throws IOException{
		String uiname = request.getParameter("uiname");
		String sex = request.getParameter("sex");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String days = request.getParameter("days");
		String[] uilike = request.getParameterValues("uilike");
		String like =  StringUtils.join(uilike);
		String path = request.getServletContext().getRealPath("/upload");
		String name = null;
		if(file!=null&&file.length>0){
			for(int i =0;i<file.length;i++){
				MultipartFile file1 = file[i];
				name = System.currentTimeMillis()+file1.getOriginalFilename();
				file1.transferTo(new File(path,name));
			}
		}
		String uiPicture = path+name;
		UserInformation userInformation = new UserInformation();
		userInformation.setUiName(uiname);
		userInformation.setUiSex(sex);
		userInformation.setUibrithdate(year+","+month+","+days);
		userInformation.setUiLike(like);
		userInformation.setUiPicture(uiPicture);
		
		
		User user = session.getAttribute("user")==null?null:(User)session.getAttribute("user");
		if(user!=null){
			String uid = user.getuId();
			userInformation.setuId(uid);
		}
		int isOk = userInformationDao.updateUserInfo(userInformation);
		Map map = new HashMap();
		if(isOk!=0){
			map.put("message", "true");
		}
		else{
			map.put("message", "error");
		}
		return map;
	}
	
	@RequestMapping("/reg")
	@ResponseBody
	@Transactional
	public Map<String,String> regUser(HttpServletRequest request,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();
		String  name = request.getParameter("name");
		String password = request.getParameter("password");
		String  phone = request.getParameter("phone");
		String uid = UUID.randomUUID().toString();
		User user = new User(uid,name,password);
		int isOk = userDao.addUser(user);
		
		UserInformation userInformation = new UserInformation();
		String uiid = UUID.randomUUID().toString();
		userInformation.setTelePhone(phone);
		userInformation.setuId(uid);
		userInformation.setUiId(uiid);
		int isOk1 = userInformationDao.insertUserInfo(userInformation);
		if(isOk>0&&isOk1>0){
			map.put("message", "success");
			session.setAttribute("user", user);
		}else{
			map.put("message", "error");
		}
		return map;
	}
}
