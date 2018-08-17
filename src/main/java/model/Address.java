package model;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Address {
    private long id;
    private String address;
    private String country;
    private String region;
    private String city;
    private int zipCode;
    private User user;
}
