package com.selfrestaurant.be.dto.response;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OptionResponse {

    private Integer optionId;
    private String optionName;
    private BigDecimal optionPrice;
    private Integer groupId;
    private String groupName;
}
