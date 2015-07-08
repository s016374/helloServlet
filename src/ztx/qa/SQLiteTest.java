package ztx.qa;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by s016374 on 15/6/15.
 */
public class SQLiteTest {
    public static void main(String[] args) {
        try {
            // The SQLite (3.3.8) Database File
            // This database has one table (pmp_countries) with 3 columns (country_id, country_code, country_name)
            // It has like 237 records of all the countries I could think of.
            String fileName = "/Applications/IntelliJ IDEA 14.app/Contents/bin/helloServlet";
            // Driver to Use
            // http://www.zentus.com/sqlitejdbc/index.html
            Class.forName("org.sqlite.JDBC");
            // Create Connection Object to SQLite Database
            // If you want to only create a database in memory, exclude the +fileName
            Connection conn = DriverManager.getConnection("jdbc:sqlite:" + fileName);
            // Create a Statement object for the database connection, dunno what this stuff does though.
            Statement stmt = conn.createStatement();
            // Create a result set object for the statement
            ResultSet rs = stmt.executeQuery("SELECT id, first, last, age FROM Employees");
            // Iterate the result set, printing each column
            // if the column was an int, we could do rs.getInt(column name here) as well, etc.
            while (rs.next()) {
                int id = rs.getInt("id");
                int age = rs.getInt("age");
                String first = rs.getString("first");
                String last = rs.getString("last");
                // 显示值
                System.out.println("ID: " + id + "<br>");
                System.out.println(", Age: " + age + "<br>");
                System.out.println(", First: " + first + "<br>");
                System.out.println(", Last: " + last + "<br>");
            }
            // Close the connection
            conn.close();
        } catch (Exception e) {
            // Print some generic debug info
            System.out.println(e.getMessage());
            System.out.println(e.toString());
        }
    }
}
