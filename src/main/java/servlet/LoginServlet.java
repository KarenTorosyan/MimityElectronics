package servlet;

import manager.UserManager;
import model.User;
import model.UserType;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")

public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserManager userManager = new UserManager();
        User user = userManager.getEmailAndPassword(email, password);
        if (user == null || email == null || password == null) {
            resp.sendRedirect("/home.jsp");
        } else {
            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("user", user);
            if (user.getType() == UserType.ADMIN) {
                resp.sendRedirect("/adminHome");
            } else if (user.getType() == UserType.USER) {
                resp.sendRedirect("/userHome");
            } else {
                httpSession.invalidate();
            }
        }
    }
}
