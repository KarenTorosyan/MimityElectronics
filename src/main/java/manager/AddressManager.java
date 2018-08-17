package manager;

import db.DBConnectionProvider;
import model.Address;
import model.Product;
import sun.nio.cs.US_ASCII;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class AddressManager {
    private Connection connection;
    UserManager userManager = new UserManager();

    public AddressManager(){
        connection = DBConnectionProvider.getProvider().getConnection();
    }

    public void addAddress(Address address){
        String query = "INSERT INTO address(address,country,region,city,zip_code,user) VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
            statement.setString(1,address.getAddress());
            statement.setString(2,address.getCountry());
            statement.setString(3,address.getRegion());
            statement.setString(4,address.getCity());
            statement.setInt(5,address.getZipCode());
            statement.setLong(6,address.getUser().getId());
            statement.executeUpdate();
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                long id = resultSet.getLong(1);
                address.setId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Address> getAddress(){
        String query = "SELECT * FROM address";
        List<Address> addresses = new LinkedList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()){
                Address address = new Address();
                address.setId(resultSet.getLong(1));
                address.setAddress(resultSet.getString(2));
                address.setCountry(resultSet.getString(3));
                address.setRegion(resultSet.getString(4));
                address.setCity(resultSet.getString(5));
                address.setZipCode(resultSet.getInt(6));
                address.setUser(userManager.getUserById(resultSet.getLong(7)));
                addresses.add(address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return addresses;
    }

    public Address getAddressById(long id){
        String query = "SELECT * FROM address WHERE id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setLong(1,id);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                return Address.builder()
                        .id(resultSet.getLong(1))
                        .address(resultSet.getString(2))
                        .country(resultSet.getString(3))
                        .region(resultSet.getString(4))
                        .city(resultSet.getString(5))
                        .zipCode(resultSet.getInt(6))
                        .user(userManager.getUserById(resultSet.getLong(7)))
                        .build();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
