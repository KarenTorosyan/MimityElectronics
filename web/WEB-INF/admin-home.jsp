<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="manager.UserManager" %>
<%@ page import="java.util.List" %>
<%@ page import="model.*" %>
<%--
  Created by IntelliJ IDEA.
  User: Karen
  Date: 8/15/2018
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%List<User> users = (List<User>) request.getAttribute("users");%>
<%List<Product> products = (List<Product>) request.getAttribute("products");%>
<%List<Category> categories = (List<Category>) request.getAttribute("categories");%>
<%List<Cart> carts = (List<Cart>) request.getAttribute("carts");%>
<%List<Wishlist> wishlists = (List<Wishlist>) request.getAttribute("wishlists");%>
<%List<Address> addresses = (List<Address>) request.getAttribute("addresses");%>
<%List<OrderedProduct> orderedProducts = (List<OrderedProduct>) request.getAttribute("orderedProducts");%>

<%for (User user1 : users) {%>
<%}%>


<h3>All users</h3>
<table style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:5px;">
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
        <th>Avatar</th>
    </tr>
    <%for (User user : users) {%>
    <tr>
        <td><%=user.getName()%>
        </td>
        <td><%=user.getSurname()%>
        </td>
        <td><%=user.getEmail()%>
        </td>
        <%if (user.getPicture() != null) {%>
        <td><img src="getUserFiles?pictureName=<%=user.getPicture()%>" style="width: 60px;"/></td>
        <%}%>
        <td>
            <form action="deleteUser" method="post">
                <input hidden type="text" name="id" value="<%=user.getId()%>">
                <input style="background: #333;border:1px; border-color: #333;color: #fff;" type="submit"
                       value="Delete">
            </form>
        </td>
    </tr>
    <%}%>
</table>
<h3>Add category</h3>
<form action="addCategory" method="post">
    <input type="text" name="name" placeholder="Name">
    <input style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:20px;" type="submit"
           value="Add category">
</form>

<c:forEach items="${categories}" var="category">
    <h5>${category.name}</h5>
</c:forEach>

<h3>Add product</h3>
<form action="addProduct" method="post" enctype="multipart/form-data">
    <%--<%for (Category category : categories) {%>--%>
    <input type="text" name="name" placeholder="Name"><br>
    <input type="text" name="description" placeholder="Description"><br>
    <input type="number" name="price" placeholder="Price"><br>
    <input type="file" name="picture" accept="image/*"><br>
    <select style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:20px;" name="category">
        <c:forEach items="${categories}" var="category">
            <option value="${category.id}">${category.name}</option>
        </c:forEach>
    </select>
    <br><input style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:20px;" type="submit"
               value="Add product">
</form>

<h3>All products</h3>


<table style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:5px;">
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Picture</th>
        <th>Category</th>
    </tr>
    <%for (Product product : products) {%>
    <tr>
        <td><%=product.getName() %>
        </td>
        <td><textarea style="background: #333; color: #fff;"><%=product.getDescription()%>
        </textarea></td>
        <td><%=product.getPrice()%>
        </td>
            <%if (product.getPicture() != null) {%>
        <td><img src="getProductFiles?pictureName=<%=product.getPicture()%>" width="60"></td>
            <%}%>
        <td><%=product.getCategory().getName()%>
        </td>
        <td>
            <form action="/addToCart" method="post">

                <input hidden type="number" name="product" value="<%=product.getId()%>">

                <%for (User user : users) {%>
                <input hidden type="number" name="user" value="<%=user.getId()%>">
                <%}%>
                <input style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:20px;"
                       type="submit" value="Add to cart">
            </form>
        </td>
        <td>
            <form action="addToWishList" method="post">
                <input hidden type="number" name="product" value="<%=product.getId()%>">
                <input hidden type="number" name="product" value="<%=product.getPrice()%>">
                <%for (User user : users) {%>
                <input hidden type="number" name="user" value="<%=user.getId()%>">
                <%}%>
                <input style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:20px;"
                       type="submit" value="Add to wish list">
            </form>
        </td>
            <%}%>
</table>


<h3>Products from cart</h3>


<table style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:5px;">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Category</th>
        <th>User</th>
    </tr>
    <c:forEach items="${carts}" var="cart">
        <tr>
            <td>${cart.product.name}</td>
            <td>${cart.product.price}</td>
            <td>${cart.product.category.name}</td>
            <td>${cart.user.name}</td>
            <td>
                <form action="addOrderedProduct">
                    <input hidden type="number" name="product" value="${cart.product.id}">
                    <input style="width: 45px;" type="number" name="total" placeholder="total" >
                    <input hidden type="number" name="user" value="${cart.user.id}">
                    <input type="text" name="address" placeholder="Address">
                    <input type="text" name="country" placeholder="Country">
                    <input type="text" name="region" placeholder="Region/State">
                    <input type="text" name="city" placeholder="City">
                    <input type="number" name="phone" placeholder="Phone number">
                    <input type="submit" value="Order">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<h3>Wish list</h3>

<table style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:5px;">
    <tr>
        <th>Product</th>
        <th>Price</th>
    </tr>
    <%
        for (Wishlist wishlist : wishlists) {%>
    <tr>
        <th><%=wishlist.getProduct().getName()%>
        </th>
        <th><%=wishlist.getProduct().getPrice()%>
        </th>
    </tr>
    <%}%>
</table>

<h3>Add address</h3>

<form action="/addAddress" method="post">
    <input type="text" name="address" placeholder="Address"><br>
    <input type="text" name="country" placeholder="Country"><br>
    <input type="text" name="region" placeholder="Region"><br>
    <input type="text" name="city" placeholder="City"><br>
    <input type="number" name="zipCode" placeholder="Zip code"><br>
    <%for (User user : users) {%>
    <input hidden type="number" name="user" value="<%=user.getId()%>">
    <%}%>
    <input style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:20px;" type="submit"
           value="Add address">
</form>

<table style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:5px;">
    <tr>
        <th>Address</th>
        <th>Country</th>
        <th>Region/State</th>
        <th>City</th>
        <th>Zip code</th>
        <th>User</th>
    </tr>
    <%for (Address address : addresses) {%>
    <tr>
        <td><%=address.getAddress()%>
        </td>
        <td><%=address.getCountry()%>
        </td>
        <td><%=address.getRegion()%>
        </td>
        <td><%=address.getCity()%>
        </td>
        <td><%=address.getZipCode()%>
        </td>
        <td><%=address.getUser().getName()%>
        </td>
    </tr>
    <%}%>
</table>


<h3>All ordered products</h3>

<table style="background: #333;border:1px; border-color: #333;color: #fff; border-radius:5px;">
    <tr>
        <th>Product</th>
        <th>Total</th>
        <th>Price</th>
        <th>User</th>
        <th>Address</th>
        <th>Country</th>
        <th>Region/State</th>
        <th>City</th>
        <th>Phone number</th>
    </tr>
    <%for (OrderedProduct orderedProduct : orderedProducts) {%>
    <tr>
        <td><%=orderedProduct.getProduct().getName() + " " + orderedProduct.getProduct().getCategory().getName()%>
        </td>
        <td><%=orderedProduct.getTotal()%>
        </td>
        <td><%=orderedProduct.getProduct().getPrice()%>
        </td>
        <td><%=orderedProduct.getUser().getName() + orderedProduct.getUser().getSurname()%>
        </td>
        <td><%=orderedProduct.getAddress()%>
        </td>
        <td><%=orderedProduct.getCountry()%>
        </td>
        <td><%=orderedProduct.getRegion()%>
        </td>
        <td><%=orderedProduct.getCity()%>
        </td>
        <td><%=orderedProduct.getPhone()%>
        </td>
    </tr>
    <%}%>
</table>

<b><a style="border: #0b3251" href="logout">Logout</a></b>


</body>
</html>
