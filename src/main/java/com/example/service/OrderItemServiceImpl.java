package com.example.service;

import java.util.List;

import com.example.entity.OrderItem;
import com.example.repo.IOrderItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("orderItemService")
public class OrderItemServiceImpl implements IOrderItemService {

	@Autowired
	private IOrderItemRepository itemRepository;



	@Override
	public OrderItem getOrderItemById(Integer orderItemId) {
		List<Integer> productIds = getProductIdsByOrderItemId(orderItemId);
		return itemRepository.findById(orderItemId).get();
	}

	public List<Integer> getProductIdsByOrderItemId(Integer orderItemId) {
		return null;
	}

	@Override
	public OrderItem addOrderItem(OrderItem orderItem) {

		return itemRepository.save(orderItem);
	}

	@Override
	public List<OrderItem> getAllOrderItems() {
		return itemRepository.findAll();
	}

}
