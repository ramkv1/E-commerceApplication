package com.example.controller;

import com.example.entity.Customer;
import com.example.service.ICustomerService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/customer")
public class CustomerOperationController {
	
	private final ICustomerService customerService;
	
	CustomerOperationController(ICustomerService customerService) {
		this.customerService = customerService;
	}
	
	@PostMapping(value ="/create")
	public ResponseEntity<Customer> createCustomer(@RequestBody Customer customer) {
		return new ResponseEntity<Customer>(customerService.createCustomer(customer), HttpStatus.CREATED);
	}
	
	@GetMapping(value ="/get/{id}")
	public ResponseEntity<Customer> getCustomer(@PathVariable("id") Integer cid) {
		return new ResponseEntity<Customer>(customerService.getCustomer(cid), HttpStatus.OK);
	}

}
