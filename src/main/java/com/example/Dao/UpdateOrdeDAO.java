package com.example.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class UpdateOrdeDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void updateDeliveryDateAndStatusForOrder(Integer orderId, String status) {
	    jdbcTemplate.update("Call update_order_status(?, ?)", orderId, status);
	}

}
