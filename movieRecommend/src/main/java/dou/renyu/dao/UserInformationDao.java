package dou.renyu.dao;

import dou.renyu.domain.UserInformation;

public interface UserInformationDao {

	//�����û���Ϣ
	public int insertUserInfo(UserInformation userInformation);
	
	//�޸��û���Ϣ
	public int updateUserInfo(UserInformation userInformation);
	
}
