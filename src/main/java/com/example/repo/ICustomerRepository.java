package com.example.repo;

import com.example.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ICustomerRepository extends JpaRepository<Customer, Integer>{
}
