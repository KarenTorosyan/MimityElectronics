package servlet;

import manager.AddressManager;
import manager.OrderedProductManager;
import manager.ProductManager;
import manager.UserManager;
import model.Address;
import model.OrderedProduct;
import model.Product;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/addOrderedProduct")

public class OrderedProductServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String product = req.getParameter("product");
        String total = req.getParameter("total");
        String user = req.getParameter("user");
        String address = req.getParameter("address");
        String country = req.getParameter("country");
        String region = req.getParameter("region");
        String city = req.getParameter("city");
        String phone = req.getParameter("phone");

        OrderedProductManager orderedProductManager = new OrderedProductManager();
        ProductManager productManager = new ProductManager();
        Product product1 = productManager.getProductsById(Long.parseLong(product));
        UserManager userManager = new UserManager();
        User user1 = userManager.getUserById(Long.parseLong(user));
        orderedProductManager.addOrderedPrdouct(OrderedProduct.builder()
                .product(product1)
                .total(Integer.parseInt(total))
                .user(user1)
                .address(address)
                .country(country)
                .region(region)
                .city(city)
                .phone(Integer.parseInt(phone))
                .build());
        resp.sendRedirect("/adminHome");
    }
}
