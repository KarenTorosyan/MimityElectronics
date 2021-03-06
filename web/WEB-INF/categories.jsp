<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Category" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Fira+Sans">
    <link rel="stylesheet" href="../plugins/_mod/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../plugins/perfect-scrollbar/css/perfect-scrollbar.min.css">
    <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../dist/css/style.css">

    <title>Categories - Mimity</title>
  </head>
  <body>


    <!--Header -->
    <header class="navbar navbar-expand navbar-light fixed-top">

      <!-- Toggle Menu -->
      <span class="toggle-menu"><i class="fa fa-bars fa-lg"></i></span>

      <!-- Logo -->
      <a class="navbar-brand" href="home"><img src="../img/logo.svg" alt="Mimity">Mimity</a>

      <!-- Search Form -->
      <form class="form-inline form-search d-none d-sm-inline">
        <div class="input-group">
          <button class="btn btn-light btn-search-back" type="button"><i class="fa fa-arrow-left"></i></button>
          <input type="text" class="form-control" placeholder="Search ..." aria-label="Search ...">
          <button class="btn btn-light" type="submit"><i class="fa fa-search"></i></button>
        </div>
      </form>
      <!-- /Search Form -->

      <!-- navbar-nav -->
      <ul class="navbar-nav ml-auto">

        <!-- Currency Dropdown -->
        <li class="nav-item dropdown d-none d-md-flex">
          <a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownCurrency" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            USD <i class="fa fa-caret-down fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownCurrency">
            <button class="dropdown-item" type="button">USD</button>
            <button class="dropdown-item" type="button">EUR</button>
          </div>
        </li>
        <!-- /Currency Dropdown -->

        <!-- Language Dropdown -->
        <li class="nav-item dropdown d-none d-md-flex">
          <a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownLanguage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            English <i class="fa fa-caret-down fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownLanguage">
            <button class="dropdown-item" type="button">English</button>
            <button class="dropdown-item" type="button">Spain</button>
          </div>
        </li>
        <!-- /Language Dropdown -->

        <!-- Search Toggle -->
        <li class="nav-item d-sm-none">
          <a href="#" class="nav-link" id="search-toggle"><i class="fa fa-search fa-lg"></i></a>
        </li>
        <!-- /Search Toggle -->

        <!-- Shopping Cart Toggle -->
        <li class="nav-item dropdown ml-1 ml-sm-3">
          <a href="#" class="nav-link" data-toggle="modal" data-target="#cartModal">
            <i class="fa fa-shopping-cart fa-lg"></i>
            <span class="badge badge-pink badge-count">4</span>
          </a>
        </li>
        <!-- /Shopping Cart Toggle -->

        <!-- Notification Dropdown -->
        <li class="nav-item dropdown ml-1 ml-sm-3">
          <a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownNotif" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-bell fa-lg"></i>
            <span class="badge badge-info badge-count">3</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownNotif">
            <a class="dropdown-item has-icon" href="#"><i class="fa fa-envelope"></i> 1 New Message</a>
            <a class="dropdown-item has-icon" href="#"><i class="fa fa-comment"></i> 2 New Comments</a>
          </div>
        </li>
        <!-- /Notification Dropdown -->

        <!-- Login Button -->
        <!-- <li class="nav-item ml-4">
          <a href="login.jsp" class="nav-link btn btn-light btn-sm"><i class="fa fa-sign-in"></i> Login</a>
        </li> -->
        <!-- /Login Button -->

      </ul>
      <!-- /navbar-nav -->

      <!-- User Dropdown -->
      <div class="dropdown dropdown-user">
        <a class="dropdown-toggle" href="#" role="button" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="../img/user.svg" alt="User">
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item has-icon" href="account-order.jsp"><i class="fa fa-shopping-bag fa-fw"></i> My Orders</a>
          <a class="dropdown-item has-icon has-badge" href="account-wishlist.jsp"><i class="fa fa-heart fa-fw"></i> Wishlist <span class="badge badge-secondary">3</span></a>
          <a class="dropdown-item has-icon" href="account-profile.jsp"><i class="fa fa-cog fa-fw"></i> Account Setting</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item has-icon" href="login.jsp"><i class="fa fa-sign-out fa-fw"></i> Sign out</a>
        </div>
      </div>
      <!-- /User Dropdown -->

    </header>
    <!-- /Header -->

    <div class="container-fluid" id="main-container">
      <div class="row">

        <!-- Sidebar -->
        <div class="col" id="main-sidebar">
          <div class="list-group list-group-flush">
            <a href="home" class="list-group-item list-group-item-action"><i class="fa fa-home fa-lg fa-fw"></i> Home</a>
            <a href="grid.jsp" class="list-group-item list-group-item-action"><i class="fa fa-star fa-lg fa-fw text-warning"></i> Editor's Choice</a>
            <a href="categories.jsp" class="list-group-item list-group-item-action active"><i class="fa fa-th fa-lg fa-fw"></i> Categories</a>


            <c:forEach items="${categories}" var="category">
              <a href="../grid.jsp" class="list-group-item list-group-item-action sub">${category.name}</a>
            </c:forEach>
            <div class="collapse" id="categories">
            </div>
            <a href="about.jsp" class="list-group-item list-group-item-action"><i class="fa fa-list fa-lg fa-fw"></i> Other Pages</a>
            <a href="about.jsp" class="list-group-item list-group-item-action sub">About Us</a>
            <a href="cart.jsp" class="list-group-item list-group-item-action sub">Cart</a>
            <a href="checkout.jsp" class="list-group-item list-group-item-action sub">Checkout</a>
            <a href="compare.jsp" class="list-group-item list-group-item-action sub">Compare</a>
            <a href="contact.jsp" class="list-group-item list-group-item-action sub">Contact Us</a>
            <a href="faq.jsp" class="list-group-item list-group-item-action sub">FAQ</a>
            <a href="login.jsp" class="list-group-item list-group-item-action sub">Login / Register</a>
            
            <div class="collapse" id="pages">
            
              <a href="account-profile.jsp" class="list-group-item list-group-item-action sub">My Profile</a>
              <a href="account-order.jsp" class="list-group-item list-group-item-action sub">My Orders</a>
              <a href="account-address.jsp" class="list-group-item list-group-item-action sub">My Address</a>
              <a href="account-wishlist.jsp" class="list-group-item list-group-item-action sub">My Wishlist</a>
            </div>
            
            <a href="#pages" class="list-group-item list-group-item-action sub toggle" data-toggle="collapse" aria-expanded="false">MORE &#9662;</a>
            
            <a href="#" class="list-group-item list-group-item-action"><i class="fa fa-question-circle fa-lg fa-fw"></i> Help</a>
            <a href="#" class="list-group-item list-group-item-action"><i class="fa fa-plus-circle fa-lg fa-fw"></i> Start Selling</a>
          </div>
          <div class="small p-3">Copyright © 2018 Mimity All right reserved</div>
        </div>
        <!-- /Sidebar -->

        <div class="col" id="main-content">

          <div class="card-columns category-columns">

            <!-- Computers & Accessories -->
            <div class="card">
              <a href="grid.jsp">
                <img class="card-img-top" src="../img/categories/1.jpeg" alt="Computers &amp; Accessories">
                <div class="card-body bg-pink text-white">
                  <h5 class="mb-0">Computers &amp; Accessories</h5>
                </div>
              </a>
              <div class="list-group list-group-flush">
                <a href="grid.jsp" class="list-group-item list-group-item-action">Laptops</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Desktops</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">PC Gaming</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Monitors</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Tablets</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Computer Accessories</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Networking</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Computer Components</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Storage &amp; Hard Drives</a>
              </div>
            </div>

            <!-- Cell Phones & Accessories -->
            <div class="card">
              <a href="grid2.jsp">
                <img class="card-img-top" src="../img/categories/2.jpeg" alt="Cell Phones &amp; Accessories">
                <div class="card-body bg-primary text-white">
                  <h5 class="mb-0">Cell Phones &amp; Accessories</h5>
                </div>
              </a>
              <div class="list-group list-group-flush">
                <a href="grid2.jsp" class="list-group-item list-group-item-action">Cell Phones</a>
                <a href="grid2.jsp" class="list-group-item list-group-item-action">Cases,  Holsters &amp; Sleevs</a>
                <a href="grid2.jsp" class="list-group-item list-group-item-action">Accessories</a>
                <a href="grid2.jsp" class="list-group-item list-group-item-action">SIM Cards &amp; Prepaid Minutes</a>
              </div>
            </div>

            <!-- Photography & Videography -->
            <div class="card">
              <a href="grid.jsp">
                <img class="card-img-top" src="../img/categories/3.jpeg" alt="Photography &amp; Videography">
                <div class="card-body bg-purple text-white">
                  <h5 class="mb-0">Photography &amp; Videography</h5>
                </div>
              </a>
              <div class="list-group list-group-flush">
                <a href="grid.jsp" class="list-group-item list-group-item-action">Digital SLRs</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Mirrorless Cameras</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Point-and-Shoots</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Lenses</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Camcorders</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Photography Drones</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Security Cameras</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Optics</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Accessories</a>
              </div>
            </div>

            <!-- Home Entertainment -->
            <div class="card">
              <a href="grid.jsp">
                <img class="card-img-top" src="../img/categories/4.jpeg" alt="Home Entertainment">
                <div class="card-body bg-info text-white">
                  <h5 class="mb-0">Home Entertainment</h5>
                </div>
              </a>
              <div class="list-group list-group-flush">
                <a href="grid.jsp" class="list-group-item list-group-item-action">Televisions</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Projectors</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Blu-ray Players</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Streaming Media Players</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Home Audio</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Audio &amp; Video Accessories</a>
              </div>
            </div>

            <!-- Video Games -->
            <div class="card">
              <a href="grid.jsp">
                <img class="card-img-top" src="../img/categories/5.jpeg" alt="Video Games">
                <div class="card-body bg-success text-white">
                  <h5 class="mb-0">Video Games</h5>
                </div>
              </a>
              <div class="list-group list-group-flush">
                <a href="grid.jsp" class="list-group-item list-group-item-action">Playstation</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Xbox One</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Xbox 360</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Nintendo Switch</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Wii</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Accessories</a>
              </div>
            </div>

            <!-- Headphones -->
            <div class="card">
              <a href="grid.jsp">
                <img class="card-img-top" src="../img/categories/6.jpeg" alt="Headphones">
                <div class="card-body bg-warning text-dark">
                  <h5 class="mb-0">Headphones</h5>
                </div>
              </a>
              <div class="list-group list-group-flush">
                <a href="grid.jsp" class="list-group-item list-group-item-action">In Ear Earbud Headphones</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Over-Ear Headphones</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">On-Ear Headphones</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Bluetooth Headphones</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Sports and Fitness Headphones</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Noise-cancelling Headphones</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Premium Audio Headphones</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">DJ/Professional Headphones</a>
              </div>
            </div>

            <!-- Office Electronics -->
            <div class="card">
              <a href="grid.jsp">
                <img class="card-img-top" src="../img/categories/7.jpeg" alt="Office Electronics">
                <div class="card-body bg-brown text-white">
                  <h5 class="mb-0">Office Electronics</h5>
                </div>
              </a>
              <div class="list-group list-group-flush">
                <a href="grid.jsp" class="list-group-item list-group-item-action">Printers &amp; Print Supplies</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Projectors</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Scanners</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Calculators</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Desk Organization</a>
              </div>
            </div>

            <!-- Office Supplies -->
            <div class="card">
              <a href="grid.jsp">
                <img class="card-img-top" src="../img/categories/8.jpeg" alt="Office Supplies">
                <div class="card-body bg-danger text-white">
                  <h5 class="mb-0">Office Supplies</h5>
                </div>
              </a>
              <div class="list-group list-group-flush">
                <a href="grid.jsp" class="list-group-item list-group-item-action">Writing</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Calendars &amp; Planners</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Notebook &amp; Pads</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Filing Products</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Paper</a>
                <a href="grid.jsp" class="list-group-item list-group-item-action">Presentation</a>
              </div>
            </div>

          </div>

          <!-- Footer -->
          <div class="navbar navbar-expand navbar-light navbar-footer">
            <a class="navbar-brand" href="home">Mimity</a>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="about.jsp">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Privacy</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Terms</a>
              </li>
            </ul>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="#"><i class="fa fa-question-circle"></i> Help</a>
              </li>
            </ul>
          </div>
          <!-- /Footer -->

        </div>
      </div>
    </div>

    <!-- Modal Cart -->
    <div class="modal fade modal-cart" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="cartModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="cartModalLabel">You have 4 items in your bag</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            
            <div class="media">
              <a href="detail.jsp"><img src="../img/product/1.jpg" width="50" height="50" alt="NEW Microsoft Surface Go"></a>
              <div class="media-body">
                <a href="detail.jsp" title="NEW Microsoft Surface Go">NEW Microsoft Surface Go</a>
                <div class="input-spinner input-spinner-sm">
                  <input type="number" class="form-control form-control-sm" value="1" min="1" max="999">
                  <div class="btn-group-vertical">
                    <button type="button" class="btn btn-light"><i class="fa fa-chevron-up"></i></button>
                    <button type="button" class="btn btn-light"><i class="fa fa-chevron-down"></i></button>
                  </div>
                </div>
                x <span class="price">$549.00</span>
                <button type="button" class="close" aria-label="Close"><i class="fa fa-trash-o"></i></button>
              </div>
            </div>
            
            <div class="media">
              <a href="detail.jsp"><img src="../img/product/3.jpg" width="50" height="50" alt="SanDisk Cruzer CZ36 64GB USB 2.0 Flash Drive"></a>
              <div class="media-body">
                <a href="detail.jsp" title="SanDisk Cruzer CZ36 64GB USB 2.0 Flash Drive">SanDisk Cruzer CZ36 64GB USB 2.0 Flash Drive</a>
                <div class="input-spinner input-spinner-sm">
                  <input type="number" class="form-control form-control-sm" value="1" min="1" max="999">
                  <div class="btn-group-vertical">
                    <button type="button" class="btn btn-light"><i class="fa fa-chevron-up"></i></button>
                    <button type="button" class="btn btn-light"><i class="fa fa-chevron-down"></i></button>
                  </div>
                </div>
                x <span class="price">$13.49</span>
                <button type="button" class="close" aria-label="Close"><i class="fa fa-trash-o"></i></button>
              </div>
            </div>
            
            <div class="media">
              <a href="detail.jsp"><img src="../img/product/8.jpg" width="50" height="50" alt="Beats Studio3 Wireless Headphones"></a>
              <div class="media-body">
                <a href="detail.jsp" title="Beats Studio3 Wireless Headphones">Beats Studio3 Wireless Headphones</a>
                <div class="input-spinner input-spinner-sm">
                  <input type="number" class="form-control form-control-sm" value="1" min="1" max="999">
                  <div class="btn-group-vertical">
                    <button type="button" class="btn btn-light"><i class="fa fa-chevron-up"></i></button>
                    <button type="button" class="btn btn-light"><i class="fa fa-chevron-down"></i></button>
                  </div>
                </div>
                x <span class="price">$299.99</span>
                <button type="button" class="close" aria-label="Close"><i class="fa fa-trash-o"></i></button>
              </div>
            </div>
            
            <div class="media">
              <a href="detail.jsp"><img src="../img/product/12.jpg" width="50" height="50" alt="Essential Phone in Halo Gray - 128 GB Unlocked"></a>
              <div class="media-body">
                <a href="detail.jsp" title="Essential Phone in Halo Gray - 128 GB Unlocked">Essential Phone in Halo Gray - 128 GB Unlocked</a>
                <div class="input-spinner input-spinner-sm">
                  <input type="number" class="form-control form-control-sm" value="1" min="1" max="999">
                  <div class="btn-group-vertical">
                    <button type="button" class="btn btn-light"><i class="fa fa-chevron-up"></i></button>
                    <button type="button" class="btn btn-light"><i class="fa fa-chevron-down"></i></button>
                  </div>
                </div>
                x <span class="price">$435.00</span>
                <button type="button" class="close" aria-label="Close"><i class="fa fa-trash-o"></i></button>
              </div>
            </div>
            
          </div>
          <div class="modal-footer">
            <div class="box-total">
              <h4>Subotal: <span class="price">$1,297.48</span></h4>
              <a href="cart.jsp" class="btn btn-success">VIEW CART</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script src="../plugins/jquery/jquery.min.js"></script>
    <script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../plugins/perfect-scrollbar/js/perfect-scrollbar.min.js"></script>
    <script src="../dist/js/script.js"></script>
  </body>
</html>