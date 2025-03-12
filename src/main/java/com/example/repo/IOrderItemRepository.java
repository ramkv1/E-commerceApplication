package com.example.repo;

import com.example.entity.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;



public interface IOrderItemRepository extends JpaRepository<OrderItem, Integer>{
	
}
