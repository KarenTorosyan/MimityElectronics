package filter;

import model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebFilter(urlPatterns = {"/userHome", "/adminHome"})

public class AuthorizationFilter implements Filter {

    List<String> exceptURL = new ArrayList<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        exceptURL.add(".js");
        exceptURL.add(".jpg");
        exceptURL.add(".png");

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        if (!exceptURL.contains(httpServletRequest.getRequestURI())) {
            HttpSession httpSession = httpServletRequest.getSession();
            User user = (User) httpSession.getAttribute("user");
            if (user == null) {
               ((HttpServletResponse) servletResponse).sendRedirect("/home.jsp");
                //httpSession.invalidate();
            } else {
                filterChain.doFilter(servletRequest, servletResponse);
            }
        }
    }

    @Override
    public void destroy() {

    }
}
