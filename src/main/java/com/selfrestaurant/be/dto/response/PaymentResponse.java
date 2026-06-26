package com.selfrestaurant.be.dto.response;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.selfrestaurant.be.model.PaymentMethod;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PaymentResponse {

    private Integer paymentId;
    private BigDecimal totalPrice;
    private LocalDateTime timePayment;
    private PaymentMethod method;
    private Integer orderId;
}
