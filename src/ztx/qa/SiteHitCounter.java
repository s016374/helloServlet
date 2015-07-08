package ztx.qa;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by s016374 on 15/6/16.
 */
@WebFilter(filterName = "SiteHitCounter")
public class SiteHitCounter implements Filter {
    private int hitCount;

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        // 把计数器的值增加 1
        hitCount++;

        // 输出计数器
        System.out.println("网站访问统计：" + hitCount);

        // 把请求传回到过滤器链

        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        hitCount = 0;
    }

}
