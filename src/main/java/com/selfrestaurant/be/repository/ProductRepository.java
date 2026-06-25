package com.selfrestaurant.be.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.selfrestaurant.be.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
