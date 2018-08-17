package servlet;

import manager.AddressManager;
import manager.UserManager;
import model.Address;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/addAddress")

public class AddressServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String address = req.getParameter("address");
        String country = req.getParameter("country");
        String region = req.getParameter("region");
        String city = req.getParameter("city");
        String zipCode = req.getParameter("zipCode");
        String user = req.getParameter("user");

        AddressManager addressManager = new AddressManager();
        UserManager userManager = new UserManager();
        User user1 = userManager.getUserById(Long.parseLong(user));
        addressManager.addAddress(Address.builder()
        .address(address)
        .country(country)
        .region(region)
        .city(city)
        .zipCode(Integer.parseInt(zipCode))
        .user(user1)
        .build());
        resp.sendRedirect("/adminHome");
    }
}
