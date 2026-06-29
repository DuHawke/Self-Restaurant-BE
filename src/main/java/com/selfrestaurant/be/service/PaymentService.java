package com.selfrestaurant.be.service;

import org.springframework.stereotype.Service;

import com.selfrestaurant.be.dto.request.PaymentRequest;
import com.selfrestaurant.be.dto.response.PaymentResponse;
import com.selfrestaurant.be.model.Order;
import com.selfrestaurant.be.model.Payment;
import com.selfrestaurant.be.repository.OrderRepository;
import com.selfrestaurant.be.repository.PaymentRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PaymentService {

        private final PaymentRepository paymentRepository;
        private final OrderRepository orderRepository;

        public PaymentResponse createPayment(
                        PaymentRequest request) {

                Order order = orderRepository
                                .findById(request.getOrderId())
                                .orElseThrow(() -> new RuntimeException("Order not found"));

                Payment payment = Payment.builder()
                                .order(order)
                                .method(request.getMethod())
                                .totalPrice(order.getTotalAmount())
                                .build();

                Payment savedPayment = paymentRepository.save(payment);

                return PaymentResponse.builder()
                                .paymentId(savedPayment.getPaymentId())
                                .method(savedPayment.getMethod())
                                .totalPrice(savedPayment.getTotalPrice())
                                .timePayment(savedPayment.getTimePayment())
                                .build();
        }
}
