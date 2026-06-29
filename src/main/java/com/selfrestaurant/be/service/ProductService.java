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
                List<OptionGroupResponse> optionGroupResponses = p.getOptionGroups().stream()
                                .map(this::mapOptionGroup)
                                .toList();

                return ProductResponse.builder()
                                .productId(p.getProductId())
                                .productName(p.getProductName())
                                .productPrice(p.getProductPrice())
                                .productUrl(p.getProductUrl())
                                .categoryId(p.getCategoryId().getCategoryId())
                                .categoryName(p.getCategoryId().getCategoryName())
                                .optionGroups(optionGroupResponses)
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