package db;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnectionProvider {

    private static DBConnectionProvider provider = new DBConnectionProvider();

    private Connection connection;

    private String db_driver;
    private String db_url;
    private String db_username;
    private String db_password;


    private DBConnectionProvider(){
        try {
            loadProperties();
            Class.forName(db_driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void loadProperties() {
        Properties properties = new Properties();
        try {
            properties.load(new FileInputStream("C:\\Users\\Karen\\IdeaProjects\\MimityElectronics\\src\\main\\resources\\db\\dbConfig.properties"));
            db_driver = properties.getProperty("db.driver");
            db_url = properties.getProperty("db.url");
            db_username = properties.getProperty("db.username");
            db_password = properties.getProperty("db.password");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static DBConnectionProvider getProvider(){
        return provider;
    }

    public  Connection getConnection(){
        try {
            if(connection == null || connection.isClosed()){
                connection = DriverManager.getConnection(db_url, db_username, db_password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }return connection;
    }

}