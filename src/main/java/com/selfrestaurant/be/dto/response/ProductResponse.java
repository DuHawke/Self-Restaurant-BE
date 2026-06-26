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
public class ProductResponse {

    private Integer productId;
        private String productName;
        private BigDecimal productPrice;
        private String productUrl;
        private Integer categoryId;
        private String categoryName;
        private List<OptionGroupResponse> optionGroups;
}
