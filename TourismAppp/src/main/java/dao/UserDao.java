package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import utilities.ConnectionFactory;

public class UserDao {

    public int registerUser(
            String username,
            String password,
            String name,
            String email,
            String phno) {

        int result = 0;

        String sql =
            "INSERT INTO users(username, password, name, email, phno) "
          + "VALUES (?, ?, ?, ?, ?)";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, email);
            ps.setString(5, phno);

            result = ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return result;
    }
    public boolean loginUser(String username, String password) {

        boolean result = false;

        String sql =
            "SELECT * FROM users WHERE username=? AND password=?";

        try {

            Connection con =
                    ConnectionFactory.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            java.sql.ResultSet rs =
                    ps.executeQuery();

            if (rs.next()) {

                result = true;

            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return result;
    }
}