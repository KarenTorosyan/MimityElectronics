package manager;

import db.DBConnectionProvider;
import model.Category;
import model.Product;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class CategoryManager {
    private Connection connection;

    public CategoryManager() {
        connection = DBConnectionProvider.getProvider().getConnection();
    }

    public void addCategories(Category category) {
        String query = "INSERT INTO category(name) VALUES(?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, category.getName());
            statement.executeUpdate();
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                long id = resultSet.getLong(1);
                category.setId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Category> getAllCategories() {
        String query = "SELECT * FROM category";
        List<Category> categories = new LinkedList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Category category = Category.builder()
                        .id(resultSet.getLong(1))
                        .name(resultSet.getString(2))
                        .build();
                categories.add(category);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    public Category getCategoryById(long id){
        String query = "SELECT * FROM category WHERE id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setLong(1,id);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                return Category.builder()
                        .id(resultSet.getLong(1))
                        .name(resultSet.getString(2))
                        .build();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  null;
    }

}
