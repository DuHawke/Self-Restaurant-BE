package com.selfrestaurant.be.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.selfrestaurant.be.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
    
}
