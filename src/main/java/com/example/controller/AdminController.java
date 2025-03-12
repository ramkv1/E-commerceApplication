package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.Dao.UpdateOrdeDAO;
import com.example.entity.Orders;
import com.example.service.IOrderService;


@RestController
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private IOrderService service;
	
	@Autowired
	private UpdateOrdeDAO dao;
	
	@GetMapping("/orders")
	public ResponseEntity<List<Orders>> getAllOrders(){
		return new ResponseEntity<List<Orders>>(service.getAllOrders(),HttpStatus.OK);
	}
	
	@PutMapping("orders/{id}/{status}")
	public ResponseEntity<?> updateStatus(@PathVariable("id") Integer oid, @PathVariable("status") String statu){
		dao.updateDeliveryDateAndStatusForOrder(oid, statu);
		return new ResponseEntity<String>("Order status is Updated",HttpStatus.OK);
	}
}
