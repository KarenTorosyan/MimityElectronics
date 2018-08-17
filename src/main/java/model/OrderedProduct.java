package model;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OrderedProduct {
    private long id;
    private Product product;
    private int total;
    private User user;
    private String address;
    private String country;
    private String region;
    private String city;
    private int phone;
}
