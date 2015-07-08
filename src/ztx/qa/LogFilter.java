package ztx.qa;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.Date;

/**
 * Created by s016374 on 15/6/10.
 */
@WebFilter(filterName = "LogFilter")
public class LogFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String ipAddress = req.getRemoteAddr();
        System.out.println("IP:" + ipAddress + "\nTime:" + new Date().toString());

        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        String testParam = config.getInitParameter("test-param");
        System.out.println("Test Parm = " + testParam);
    }

}
