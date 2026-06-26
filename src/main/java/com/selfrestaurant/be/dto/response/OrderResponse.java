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
public class OrderResponse {

    private Integer orderId;
        private Long totalQuantity;
        private BigDecimal totalAmount;
        private List<OrderItemResponse> items;
        private PaymentResponse payment;
}
