package dou.renyu.dao;

import java.util.List;

import dou.renyu.domain.Order;

public interface OrderDao {

	public int addOrder(Order order);
	
	/**
	 * 查询用户订单
	 * @param uid
	 * @return
	 */
	public List<Order> selectOrder(String uid);
}
