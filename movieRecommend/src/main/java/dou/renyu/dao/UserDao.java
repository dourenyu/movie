package dou.renyu.dao;

import dou.renyu.domain.User;

public interface UserDao {

	public User selectUserByAccAndPwd(User user);
	
	public int addUser(User user);
}
