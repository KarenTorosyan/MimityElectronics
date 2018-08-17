package manager;

import db.DBConnectionProvider;
import model.Wishlist;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class WishlistManager {
    private Connection connection;
    ProductManager productManager = new ProductManager();
    UserManager userManager = new UserManager();

    public WishlistManager() {
        connection = DBConnectionProvider.getProvider().getConnection();
    }

   public void addToWishlist(Wishlist wishlist){
        String query = "INSERT INTO wishlist(product,user) VALUES(?,?)";
       try {
           PreparedStatement statement = connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
           statement.setLong(1,wishlist.getProduct().getId());
           statement.setLong(2,wishlist.getUser().getId());
           statement.executeUpdate();
           ResultSet resultSet = statement.executeQuery();
           if(resultSet.next()){
               long id = resultSet.getLong(1);
               wishlist.setId(id);
           }
       } catch (SQLException e) {
           e.printStackTrace();
       }
   }

   public List<Wishlist> getWishlist(){
        String query = "SELECT * FROM wishlist";
        List<Wishlist> wishlists = new LinkedList<>();
       try {
           Statement statement = connection.createStatement();
           ResultSet resultSet = statement.executeQuery(query);
           while (resultSet.next()){
               Wishlist wishlist = new Wishlist();
               wishlist.setId(resultSet.getLong(1));
               wishlist.setProduct(productManager.getProductsById(resultSet.getLong(2)));
               wishlist.setUser(userManager.getUserById(resultSet.getLong(3)));
               wishlists.add(wishlist);
           }
       } catch (SQLException e) {
           e.printStackTrace();
       }
       return wishlists;
   }


}
