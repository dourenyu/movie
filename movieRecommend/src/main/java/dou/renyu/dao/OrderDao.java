package dou.renyu.dao;

import java.util.List;

import dou.renyu.domain.Order;

public interface OrderDao {

	public int addOrder(Order order);
	
	/**
	 * ��ѯ�û�����
	 * @param uid
	 * @return
	 */
	public List<Order> selectOrder(String uid);
}
