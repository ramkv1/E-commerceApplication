package com.example.service;

import com.example.entity.Customer;

;

public interface ICustomerService {
	//add cusst
	public Customer createCustomer(Customer customer);
	//get Customer
	public Customer getCustomer(Integer cid);

}
