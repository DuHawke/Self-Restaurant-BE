package com.selfrestaurant.be.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.selfrestaurant.be.model.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Integer>{

}
