package com.selfrestaurant.be.dto.response;

import java.math.BigDecimal;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OrderItemResponse {

    private Integer orderItemId;
    private Integer productId;
    private String productName;
    private String productUrl;
    private int quantity;
    private BigDecimal unitPrice;
    private BigDecimal subtotal;
    private List<OptionResponse> selectedOptions;
}
