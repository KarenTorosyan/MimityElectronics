package model;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class Cart {
    private long id;
    private Product product;
    private User user;
}
