package servlet;

import manager.CartManager;
import manager.ProductManager;
import manager.UserManager;
import model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/addToCart")

public class CartServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String product = req.getParameter("product");
        String user = req.getParameter("user");

        ProductManager productManager = new ProductManager();
        UserManager userManager = new UserManager();

        CartManager cartManager = new CartManager();
        cartManager.addToCart(Cart.builder()
                .product(productManager.getProductsById(Long.parseLong(product)))
                .user(userManager.getUserById(Long.parseLong(user)))
                .build());

        resp.sendRedirect("/adminHome");

    }
}
