package com.selfrestaurant.be.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.selfrestaurant.be.dto.response.ProductResponse;
import com.selfrestaurant.be.model.Product;
import com.selfrestaurant.be.repository.ProductRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public List<ProductResponse> getAllProducts() {

        return productRepository.findAll()
                .stream()
                .map(this::mapToResponse)
                .toList();
    }

    public List<ProductResponse> getProductsByCategory(Integer categoryId) {

        return productRepository
                .findByProductCategoryCategoryId(categoryId)
                .stream()
                .map(this::mapToResponse)
                .toList();
    }

    public ProductResponse getProductDetail(Integer productId) {

        Product product = productRepository.findById(productId)
                .orElseThrow();

        return ProductResponse.builder()
                .productId(product.getProductId())
                .productName(product.getProductName())
                .productPrice(product.getProductPrice())
                .productUrl(product.getProductUrl())
                .build();
    }

    private ProductResponse mapToResponse(Product p) {

        return ProductResponse.builder()
                .productId(p.getProductId())
                .productName(p.getProductName())
                .productPrice(p.getProductPrice())
                .productUrl(p.getProductUrl())
                .build();
    }
}
