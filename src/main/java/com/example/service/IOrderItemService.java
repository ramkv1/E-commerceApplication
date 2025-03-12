package com.example.service;


import java.util.List;

import com.example.entity.OrderItem;

public interface IOrderItemService {
	
	OrderItem addOrderItem(OrderItem orderItem);
	OrderItem getOrderItemById(Integer orderItemId);
	List<OrderItem> getAllOrderItems();
}
