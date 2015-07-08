package ztx.qa;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

/**
 * Created by s016374 on 15/6/10.
 */
@WebServlet(name = "DisplayHeader")
public class DisplayHeader extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String title = "HTTP Header 请求实例";
        String docType = "<!DOCTYPE html>";
        out.println(docType +
                "<html>\n" +
                "<head lang=\"en\">" +
                "<title>" + title + "</title>" +
                "<meta charset=\"UTF-8\"></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<table width=\"100%\" border=\"1\" align=\"center\">\n" +
                "<tr bgcolor=\"#949494\">\n" +
                "<th>Header名称</th><th>Header值</th>\n" +
                "</tr>\n");

        Enumeration headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String paraName = (String) headerNames.nextElement();
            out.print("<tr><td>" + paraName + "</td>\n");
            String paraValue = request.getHeader(paraName);
            out.println("<td>" + paraValue + "</td></tr>\n");
        }
        out.println("</table>\n</body></html>");
    }
}
