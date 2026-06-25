package com.selfrestaurant.be.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.selfrestaurant.be.model.Order;

public interface OrderRepository extends JpaRepository<Order, Integer>{

}
