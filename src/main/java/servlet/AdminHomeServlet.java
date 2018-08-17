package servlet;

import manager.*;
import model.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/adminHome")

public class AdminHomeServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ////////////////////////////////
        UserManager userManager = new UserManager();
        List<User> users = userManager.getAllUsers();
        req.setAttribute("users", users);
        ////////////////////////////////
        CategoryManager categoryManager = new CategoryManager();
        List<Category> categories = categoryManager.getAllCategories();
        req.setAttribute("categories", categories);
        ////////////////////////////////
        ProductManager productManager = new ProductManager();
        List<Product> products = productManager.getAllProducts();
        req.setAttribute("products", products);
        ////////////////////////////////
        CartManager cartManager = new CartManager();
        List<Cart> carts = cartManager.getAllProductFromCart();
        req.setAttribute("carts", carts);
        ////////////////////////////////
        WishlistManager wishlistManager = new WishlistManager();
        List<Wishlist> wishlists = wishlistManager.getWishlist();
        req.setAttribute("wishlists", wishlists);
        ////////////////////////////////
        AddressManager addressManager = new AddressManager();
        List<Address> addresses = addressManager.getAddress();
        req.setAttribute("addresses",addresses);
        ////////////////////////////////
        OrderedProductManager orderedProductManager = new OrderedProductManager();
        List<OrderedProduct> orderedProducts = orderedProductManager.getOrderedProducts();
        req.setAttribute("orderedProducts",orderedProducts);
        ///////////////////////////////
        req.getRequestDispatcher("WEB-INF/admin-home.jsp").forward(req, resp);
    }
}
