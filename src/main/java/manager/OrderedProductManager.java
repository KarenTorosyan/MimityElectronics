package manager;

import db.DBConnectionProvider;
import model.OrderedProduct;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class OrderedProductManager {
    private Connection connection;
    ProductManager productManager = new ProductManager();
    UserManager userManager = new UserManager();
    AddressManager addressManager = new AddressManager();

    public OrderedProductManager() {
        connection = DBConnectionProvider.getProvider().getConnection();
    }

    public void addOrderedPrdouct(OrderedProduct orderedProducts) {
        String query = "INSERT INTO ordered_products(product,total,user,address,country,region,city,phone) VALUES(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setLong(1, orderedProducts.getProduct().getId());
            statement.setInt(2, orderedProducts.getTotal());
            statement.setLong(3, orderedProducts.getUser().getId());
            statement.setString(4,orderedProducts.getAddress());
            statement.setString(5,orderedProducts.getCountry());
            statement.setString(6,orderedProducts.getRegion());
            statement.setString(7,orderedProducts.getCity());
            statement.setInt(8,orderedProducts.getPhone());
            statement.executeUpdate();
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                long id = resultSet.getLong(1);
                orderedProducts.setId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<OrderedProduct> getOrderedProducts() {
        String query = "SELECT * FROM ordered_products";
        List<OrderedProduct> orderedProducts = new LinkedList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                OrderedProduct orderedProduct = new OrderedProduct();
                orderedProduct.setId(resultSet.getLong(1));
                orderedProduct.setProduct(productManager.getProductsById(resultSet.getLong(2)));
                orderedProduct.setTotal(resultSet.getInt(3));
                orderedProduct.setUser(userManager.getUserById(resultSet.getLong(4)));
                orderedProduct.setAddress(resultSet.getString(5));
                orderedProduct.setCountry(resultSet.getString(6));
                orderedProduct.setRegion(resultSet.getString(7));
                orderedProduct.setCity(resultSet.getString(8));
                orderedProduct.setPhone(resultSet.getInt(9));
                orderedProducts.add(orderedProduct);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderedProducts;
    }
}
