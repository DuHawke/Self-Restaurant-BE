package com.selfrestaurant.be.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.selfrestaurant.be.dto.response.CategoryResponse;
import com.selfrestaurant.be.repository.CategoryRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public List<CategoryResponse> getAllCategories() {

        return categoryRepository.findAll()
                .stream()
                .map(category -> CategoryResponse.builder()
                        .categoryId(category.getCategoryId())
                        .categoryName(category.getCategoryName())
                        .categoryUrl(category.getCategoryUrl())
                        .build())
                .toList();
    }
}
