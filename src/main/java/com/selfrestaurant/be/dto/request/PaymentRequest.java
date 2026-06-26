package com.selfrestaurant.be.dto.request;

import com.selfrestaurant.be.model.PaymentMethod;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PaymentRequest {

    private Integer orderId;
    private PaymentMethod method;
}
