package com.selfrestaurant.be.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.selfrestaurant.be.model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    
}
