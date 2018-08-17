package servlet;

import manager.CategoryManager;
import manager.UserManager;
import model.Category;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/userHome")

public class UserHomeServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ///////////////////////////////////
        UserManager userManager = new UserManager();
        List<User> users = userManager.getAllUsers();
        req.setAttribute("users",users);
        ///////////////////////////////////
        CategoryManager categoryManager = new CategoryManager();
        List<Category> categories = categoryManager.getAllCategories();
        req.setAttribute("categories",categories);
        ///////////////////////////////////
//        req.getRequestDispatcher("home.jsp").forward(req,resp);
        resp.sendRedirect("/home");
    }
}
