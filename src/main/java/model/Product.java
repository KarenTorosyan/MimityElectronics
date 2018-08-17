package model;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class Product {
    private long id;
    private String name;
    private String description;
    private double price;
    private String picture;
    private Category category;
}
