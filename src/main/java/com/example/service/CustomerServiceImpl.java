package com.example.service;

import com.example.entity.Customer;
import com.example.repo.ICustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;





@Service("customerService")
public class CustomerServiceImpl implements ICustomerService{
	
	@Autowired
	private ICustomerRepository customerRepository;

	@Override
	public Customer createCustomer(Customer customer) {
		return customerRepository.save(customer);
		
	}

	@Override
	public Customer getCustomer(Integer cid) {
		
		return customerRepository.findById(cid).get();
	}
}
