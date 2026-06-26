package com.selfrestaurant.be.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.selfrestaurant.be.model.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{

}
