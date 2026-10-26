package utilities;

import java.sql.Connection;

public class TestConnection {

    public static void main(String[] args) {

        Connection con = ConnectionFactory.getConnection();

        if (con != null) {
            System.out.println("MySQL Connection Successful!");
        } else {
            System.out.println("MySQL Connection Failed!");
        }
    }
}