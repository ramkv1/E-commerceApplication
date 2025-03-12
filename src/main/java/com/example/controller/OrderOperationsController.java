package com.example.controller;

import com.example.entity.Orders;
import com.example.service.ICustomerService;
import com.example.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/orders")
public class OrderOperationsController {
	
	@Autowired
	private IOrderService iOrderService;

	@Autowired
	private ICustomerService iCustomerService;
	
	
	@PostMapping(value ="/order",consumes ="application/json", produces = "application/json")
	public ResponseEntity<Orders> createAnOrder(@RequestBody Orders orders){
		return new ResponseEntity<Orders>(iOrderService.createOrder(orders),HttpStatus.CREATED);
	}
	
	@GetMapping("/find/{id}")
	public ResponseEntity<Orders> findTheOrderById(@PathVariable("id") Integer oId){
		return new ResponseEntity<Orders>(iOrderService.getOrderById(oId),HttpStatus.OK);
	}


	@DeleteMapping("/delete/{id}")
	public ResponseEntity<?> deleteOrderById(@PathVariable("id") Integer oid){
		return new ResponseEntity<String>(iOrderService.deleteOrder(oid), HttpStatus.OK);
	

	}
	
	@GetMapping("/all")
	public ResponseEntity<?> getAllOrders() {
		return new ResponseEntity<>(iOrderService.getAllOrders(), HttpStatus.OK);
	}
	
	

}
