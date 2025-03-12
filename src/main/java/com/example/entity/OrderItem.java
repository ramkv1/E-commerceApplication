package com.example.entity;

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
@Table(name = "Orderitem")
@Data
public class OrderItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "orderid", nullable = false)
    private Orders orders;

    @Column(name = "productname",nullable = false, length = 255)
    private String productName;

    @Column(nullable = false, length = 50)
    private String category;

    @Column(nullable = false)
    private Integer quantity;
    private Double price;
}
