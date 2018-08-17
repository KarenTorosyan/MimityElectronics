package manager;

import db.DBConnectionProvider;
import model.Cart;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class CartManager {
    private Connection connection;
    ProductManager productManager = new ProductManager();
    UserManager userManager = new UserManager();

    public CartManager(){
        connection = DBConnectionProvider.getProvider().getConnection();
    }

    public void addToCart(Cart cart){
        String query = "INSERT INTO cart(product,user) VALUES(?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setLong(1,cart.getProduct().getId());
            statement.setLong(2,cart.getUser().getId());
            statement.executeUpdate();
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                long id = resultSet.getLong(1);
                cart.setId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Cart> getAllProductFromCart(){
        String query = "SELECT * FROM cart";
        List<Cart> carts = new LinkedList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while(resultSet.next()){
                Cart cart = new Cart();
                cart.setId(resultSet.getLong(1));
                cart.setProduct(productManager.getProductsById(resultSet.getLong(2)));
                cart.setUser(userManager.getUserById(resultSet.getLong(3)));
                carts.add(cart);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carts;
    }
}
