package model;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class User {
    private long id;
    private String name;
    private String surname;
    private String email;
    private String password;
    private UserType type;
    private String picture;
}
