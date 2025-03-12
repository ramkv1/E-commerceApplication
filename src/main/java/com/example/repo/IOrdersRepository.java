package com.example.repo;

import com.example.Datatypes.DeliveryStatus;
import com.example.entity.Orders;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface IOrdersRepository extends JpaRepository<Orders, Integer> {

    @Modifying
    @Transactional
    @Query(value = "UPDATE Orders SET status = :status WHERE order_id  = :id", nativeQuery = true)
    int updateStatusAndDeliveryTime(@Param("id") Integer id,
                                    @Param("status") String status);


}
