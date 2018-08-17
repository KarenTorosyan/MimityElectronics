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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/home")

public class HomeServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryManager categoryManager = new CategoryManager();
        List<Category> categories = categoryManager.getAllCategories();
        req.setAttribute("categories",categories);

        UserManager userManager = new UserManager();
        List<User> users = userManager.getAllUsers();
        req.setAttribute("users",users);

        req.getRequestDispatcher("WEB-INF/home.jsp").forward(req,resp);

    }
}
