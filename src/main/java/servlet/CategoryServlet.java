package servlet;

import manager.CategoryManager;
import model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/category")

public class CategoryServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryManager categoryManager = new CategoryManager();
        List<Category> categories = categoryManager.getAllCategories();
        req.setAttribute("categories",categories);
        req.getRequestDispatcher("WEB-INF/categories.jsp").forward(req,resp);
    }
}
