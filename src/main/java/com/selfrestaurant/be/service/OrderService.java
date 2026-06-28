package com.selfrestaurant.be.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Service;

import com.selfrestaurant.be.dto.request.CreateOrderRequest;
import com.selfrestaurant.be.dto.request.OrderItemRequest;
import com.selfrestaurant.be.dto.response.OrderResponse;
import com.selfrestaurant.be.model.Option;
import com.selfrestaurant.be.model.Order;
import com.selfrestaurant.be.model.OrderItem;
import com.selfrestaurant.be.model.Product;
import com.selfrestaurant.be.repository.OptionRepository;
import com.selfrestaurant.be.repository.OrderRepository;
import com.selfrestaurant.be.repository.ProductRepository;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class OrderService {

    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;
    private final OptionRepository optionRepository;

    public OrderResponse createOrder(CreateOrderRequest request) {

        Order order = new Order();

        BigDecimal totalAmount = BigDecimal.ZERO;
        long totalQuantity = 0L;

        List<OrderItem> orderItems = new ArrayList<>();

        for (OrderItemRequest itemRequest : request.getItems()) {

            Product product = productRepository
                    .findById(itemRequest.getProductId())
                    .orElseThrow(() -> new RuntimeException("Product not found: " + itemRequest.getProductId()));

            // Bug BE-2 fix: tránh NullPointerException khi selectedOptionIds là null hoặc empty
            // Trước: optionRepository.findAllById(null) → NullPointerException
            List<Integer> optionIds = itemRequest.getSelectedOptionIds();
            List<Option> options = (optionIds == null || optionIds.isEmpty())
                    ? Collections.emptyList()
                    : optionRepository.findAllById(optionIds);

            BigDecimal optionPrice = options.stream()
                    .map(Option::getOptionPrice)
                    .reduce(BigDecimal.ZERO, BigDecimal::add);

            BigDecimal unitPrice = product.getProductPrice().add(optionPrice);

            OrderItem orderItem = OrderItem.builder()
                    .order(order)
                    .product(product)
                    .quantity(itemRequest.getQuantity())
                    .unitPrice(unitPrice)
                    .selectedOptions(options)
                    .build();

            orderItems.add(orderItem);

            totalQuantity += itemRequest.getQuantity();

            totalAmount = totalAmount.add(
                    unitPrice.multiply(
                            BigDecimal.valueOf(itemRequest.getQuantity())));
        }

        order.setItems(orderItems);
        order.setTotalQuantity(totalQuantity);
        order.setTotalAmount(totalAmount);

        Order savedOrder = orderRepository.save(order);

        return OrderResponse.builder()
                .orderId(savedOrder.getOrderId())
                .totalQuantity(savedOrder.getTotalQuantity())
                .totalAmount(savedOrder.getTotalAmount())
                .build();
    }

    public OrderResponse getOrder(Integer orderId) {

        Order order = orderRepository
                .findById(orderId)
                .orElseThrow(() -> new RuntimeException("Order not found: " + orderId));

        return OrderResponse.builder()
                .orderId(order.getOrderId())
                .totalQuantity(order.getTotalQuantity())
                .totalAmount(order.getTotalAmount())
                .build();
    }
}