package com.example.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "Orders")
@Data
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "customerid")
    private Customer customer;

    @Column(name = "orderdate")
    private LocalDateTime orderDate = LocalDateTime.now();

    @Column(nullable = false, length = 50)
    private String status;

    
    private Double totalamount;

    @Column(name = "deliverydate")
    private LocalDateTime deliveryDate;

}