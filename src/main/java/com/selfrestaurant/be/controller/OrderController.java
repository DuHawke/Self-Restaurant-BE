package com.selfrestaurant.be.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.selfrestaurant.be.dto.request.CreateOrderRequest;
import com.selfrestaurant.be.dto.response.OrderResponse;
import com.selfrestaurant.be.service.OrderService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/self-restaurant/order")
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @PostMapping
    public ResponseEntity<OrderResponse> createOrder(
            @RequestBody CreateOrderRequest request) {

        return ResponseEntity.ok(
                orderService.createOrder(request));
    }

    @GetMapping("/{orderId}")
    public ResponseEntity<OrderResponse> getOrder(@PathVariable Integer orderId) {

        return ResponseEntity.ok(
                orderService.getOrder(orderId));
    }
}
