package dou.renyu.dao;

import dou.renyu.domain.UserInformation;

public interface UserInformationDao {

	//创建用户信息
	public int insertUserInfo(UserInformation userInformation);
	
	//修改用户信息
	public int updateUserInfo(UserInformation userInformation);
	
}
