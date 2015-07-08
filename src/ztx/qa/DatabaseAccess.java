package ztx.qa;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * Created by s016374 on 15/6/12.
 */
@WebServlet(name = "DatabaseAccess")
public class DatabaseAccess extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // JDBC 驱动器名称和数据库的 URL
        final String JDBC_DRIVER = "org.sqlite.JDBC";
//        final String DB_URL="jdbc:sqlite:helloServlet";
        final String DB_URL = "/Applications/IntelliJ IDEA 14.app/Contents/bin/helloServlet";

        //  数据库的凭据
        final String USER = "";
        final String PASS = "";

        // 设置响应内容类型
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String title = "数据库结果";
        String docType =
                "<!doctype html public \"-//w3c//dtd html 4.0 " +
                        "transitional//en\">\n";
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n");
        try {
            // 注册 JDBC 驱动器
            Class.forName("org.sqlite.JDBC");

            // 打开一个连接
            Connection conn = DriverManager.getConnection("jdbc:sqlite:" + DB_URL);

            // 执行 SQL 查询
            Statement stmt = conn.createStatement();
            String sql;
            sql = "SELECT id, first, last, age FROM Employees";
            ResultSet rs = stmt.executeQuery(sql);

            // 从结果集中提取数据
            while (rs.next()) {
                // 根据列名称检索
                int id = rs.getInt("id");
                int age = rs.getInt("age");
                String first = rs.getString("first");
                String last = rs.getString("last");

                // 显示值
                out.println("ID: " + id + "<br>");
                out.println(", Age: " + age + "<br>");
                out.println(", First: " + first + "<br>");
                out.println(", Last: " + last + "<br>");
            }
            out.println("</body></html>");

            // 清理环境
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            // 处理 JDBC 错误
            se.printStackTrace();
        } catch (Exception e) {
            // 处理 Class.forName 错误
            e.printStackTrace();
        } finally {
            // 最后是用于关闭资源的块
            try {
                Statement stmt = null;
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// 我们不能做什么
            try {
                Connection conn = null;
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        } //end try
    }
}
