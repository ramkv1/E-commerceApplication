package com.example.service;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import com.example.Datatypes.DeliveryStatus;
import com.example.entity.Orders;
import com.example.repo.IOrdersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service("OrderService")
public class OrderServiceImpl implements IOrderService{
	
	
	@Autowired
	private IOrdersRepository repository;

	@Override
	public Orders createOrder(Orders order) {
		return repository.save(order);
	}

	@Override
	public Orders getOrderById(Integer orderId) {
		return repository.findById(orderId).get();
	}

	@Override
	public String updateOrderStatus(Integer orderId, String status) {
		return "" +repository.updateStatusAndDeliveryTime(orderId,status);
	}

	@Override
	public List<Orders> getAllOrders() {
		return repository.findAll();
	}

	@Override
	public String deleteOrder(Integer oid) {
		Optional<Orders> opt=repository.findById(oid);
		if(opt.isPresent()) {
			repository.deleteById(oid);
			return oid+"::Order is Deleted";
		}
		else {
			return oid + " Order Not Found for Deletion";
		}
	}

}
