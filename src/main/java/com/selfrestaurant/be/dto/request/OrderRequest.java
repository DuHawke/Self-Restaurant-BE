package com.selfrestaurant.be.dto.request;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

public class OrderRequest {

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class AddItemRequest {
        private Integer productId;
        private int quantity;
        private List<Integer> selectedOptionIds;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class UpdateItemRequest {
        private Integer orderItemId;
        private int quantity;
    }
}
