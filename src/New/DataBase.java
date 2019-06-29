package New;

import java.sql.*;
import java.util.Scanner;

public class DataBase {

    static String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static String DB_URL = "jdbc:mysql://localhost:3306/iProject";
    Connection con;
    Statement stat;
    ResultSet res;

    public DataBase() {
        con = null;
        stat = null;
        res = null;
    }

    public boolean check(String mail, String pass) throws SQLException {
        try {
            Class.forName(JDBC_DRIVER);
            con = DriverManager.getConnection(DB_URL, "root", "");
            stat = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            res = stat.executeQuery("SELECT * FROM Users");

            while (res.next()) {
                System.out.println("res.next()");
                if (mail.equalsIgnoreCase(res.getString(3))) {
                    System.out.println("mail.equalsIgnoreCase(res.getString(3))");
                    if (pass.equals(res.getString(4))) {
                        System.out.println("pass.equals(res.getString(4))");
                        return true;
                    }
                }
            }
        } catch (SQLException e) {
            System.out.println("Exc" + e.getMessage());
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        } finally {
            con.close();
        }
        return false;
    }

    public void insertUser(String name, String mail, String pass) throws SQLException {
        try {
            Class.forName(JDBC_DRIVER);
            con = DriverManager.getConnection(DB_URL, "root", "");
            stat = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            res = stat.executeQuery("SELECT * FROM Users");

//            while (res.next())
//                res.deleteRow();
            res.moveToInsertRow();
            res.updateString(2, name);
            res.updateString(3, mail);
            res.updateString(4, pass);
            res.insertRow();
//            System.out.println("Inserted Successfully");

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            con.close();
        }
    }

//    public static void main(String[] args) throws SQLException {
//        Scanner sc = new Scanner(System.in);
//        System.out.println(new DataBase().check("Ammar@iProject.fci", "geek"));
//    }
}

// INSERT INTO Users (Name, Email, Pass) VALUES ("", "", "")
