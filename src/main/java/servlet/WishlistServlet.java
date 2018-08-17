package servlet;

import manager.ProductManager;
import manager.UserManager;
import manager.WishlistManager;
import model.Product;
import model.User;
import model.Wishlist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/addToWishList")

public class WishlistServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String product = req.getParameter("product");
        String user = req.getParameter("user");

        WishlistManager wishlistManager = new WishlistManager();
        ProductManager productManager = new ProductManager();
        Product product1 = productManager.getProductsById(Long.parseLong(product));
        UserManager userManager = new UserManager();
        User user1 = userManager.getUserById(Long.parseLong(user));
        wishlistManager.addToWishlist(Wishlist.builder()
        .product(product1)
        .user(user1)
        .build());
        resp.sendRedirect("/adminHome");
    }
}
