package com.selfrestaurant.be.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.selfrestaurant.be.dto.request.PaymentRequest;
import com.selfrestaurant.be.dto.response.PaymentResponse;
import com.selfrestaurant.be.service.PaymentService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/self-restaurant/payment")
@RequiredArgsConstructor
public class PaymentController {

    private final PaymentService paymentService;

    @PostMapping
    public ResponseEntity<PaymentResponse> createPayment(
            @RequestBody PaymentRequest request) {

        return ResponseEntity.ok(
                paymentService.createPayment(request));
    }
}
