package com.selfrestaurant.be.dto.request;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OptionRequest {

    private String optionName;
    private BigDecimal optionPrice;
    private Integer groupId;
}
