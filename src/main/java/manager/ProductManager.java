package manager;

import db.DBConnectionProvider;
import model.Product;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public class ProductManager {
    private Connection connection;
    CategoryManager categoryManager = new CategoryManager();

    public ProductManager() {
        connection = DBConnectionProvider.getProvider().getConnection();
    }

    public Product addProduct(Product product){
        String query = "INSERT INTO product(name,description,price,picture,category) VALUES(?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1,product.getName());
            statement.setString(2,product.getDescription());
            statement.setDouble(3,product.getPrice());
            statement.setString(4,product.getPicture());
            statement.setLong(5,product.getCategory().getId());
            statement.executeUpdate();
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                long id = resultSet.getLong(1);
                product.setId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Product getProductsById(long id){
        String query = "SELECT * FROM product WHERE id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setLong(1,id);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()) {
                return Product.builder()
                        .id(resultSet.getLong(1))
                        .name(resultSet.getString(2))
                        .description(resultSet.getString(3))
                        .price(resultSet.getDouble(4))
                        .picture(resultSet.getString(5))
                        .category(categoryManager.getCategoryById(resultSet.getLong(6)))
                        .build();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> getAllProducts(){
        String query = "SELECT * FROM product";
        List<Product> products = new LinkedList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while(resultSet.next()){
              Product product1 = new Product();
              product1.setId(resultSet.getLong(1));
              product1.setName(resultSet.getString(2));
              product1.setDescription(resultSet.getString(3));
              product1.setPrice(resultSet.getDouble(4));
              product1.setPicture(resultSet.getString(5));
              product1.setCategory(categoryManager.getCategoryById(resultSet.getLong(6)));
              products.add(product1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}
