package com.selfrestaurant.be.dto.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OptionGroupRequest {

    private String groupName;
    private boolean required;
    private Integer productId;
}
