package com.example.service;

import java.util.List;

import com.example.entity.Orders;


public interface IOrderService {

	public Orders createOrder(Orders order);
	public Orders getOrderById(Integer orderId);
	public String updateOrderStatus(Integer orderId, String status);
	public List<Orders> getAllOrders();
	public String deleteOrder(Integer oid);
}
