package com.selfrestaurant.be.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.selfrestaurant.be.dto.response.OptionGroupResponse;
import com.selfrestaurant.be.dto.response.OptionResponse;
import com.selfrestaurant.be.dto.response.ProductResponse;
import com.selfrestaurant.be.model.OptionGroup;
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
                .findByCategoryId(categoryId)
                .stream()
                .map(this::mapToResponse)
                .toList();
    }

    public ProductResponse getProductDetail(Integer productId) {

        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new RuntimeException("Product not found: " + productId));

        return mapToResponse(product);
    }

    private ProductResponse mapToResponse(Product p) {

        // Bug BE-1 fix: map đầy đủ categoryId, categoryName, optionGroups
        // Trước: chỉ map productId/productName/productPrice/productUrl → thiếu category + options
        // Note: field trong Product là "categoryId" nhưng type là Category object (naming misleading)
        List<OptionGroupResponse> optionGroupResponses = p.getOptionGroups().stream()
                .map(this::mapOptionGroup)
                .toList();

        return ProductResponse.builder()
                .productId(p.getProductId())
                .productName(p.getProductName())
                .productPrice(p.getProductPrice())
                .productUrl(p.getProductUrl())              // image URL (sau khi sửa data.sql)
                .categoryId(p.getCategoryId().getCategoryId())   // Bug BE-1: lấy từ Category object
                .categoryName(p.getCategoryId().getCategoryName())
                .optionGroups(optionGroupResponses)              // Bug BE-1: map optionGroups
                .build();
    }

    private OptionGroupResponse mapOptionGroup(OptionGroup group) {

        List<OptionResponse> optionResponses = group.getOptions().stream()
                .map(opt -> OptionResponse.builder()
                        .optionId(opt.getOptionId())
                        .optionName(opt.getOptionName())
                        .optionPrice(opt.getOptionPrice())
                        .groupId(group.getGroupId())
                        .groupName(group.getGroupName())
                        .build())
                .toList();

        return OptionGroupResponse.builder()
                .groupId(group.getGroupId())
                .groupName(group.getGroupName())
                .required(group.isRequired())
                .productId(group.getProduct().getProductId())
                .options(optionResponses)
                .build();
    }
}