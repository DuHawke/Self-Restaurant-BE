package com.selfrestaurant.be.dto.response;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OptionGroupResponse {

    private Integer groupId;
        private String groupName;
        private boolean required;
        private Integer productId;
        private List<OptionResponse> options;
}
