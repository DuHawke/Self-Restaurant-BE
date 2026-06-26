package com.selfrestaurant.be.dto.request;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProductRequest {

    private String productName;
    private BigDecimal productPrice;
    private String productUrl;
    private Integer categoryId;
}
