<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Fira+Sans">
    <link rel="stylesheet" href="../plugins/_mod/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../plugins/perfect-scrollbar/css/perfect-scrollbar.min.css">
    <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../plugins/nouislider/nouislider.min.css">
    <link rel="stylesheet" href="../dist/css/style.css">

    <title>Shop Grid - Mimity</title>
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
            <a href="categories.jsp" class="list-group-item list-group-item-action"><i class="fa fa-th fa-lg fa-fw"></i> Categories</a>
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

          <!-- Category Banner -->
          <div class="card border-0 mb-3">
            <img src="../img/categories/1-wide.jpeg" alt="" class="card-img">
            <div class="card-img-overlay">
              <h2 class="card-title text-white title">Computers &amp; Accessories</h2>
            </div>
          </div>
          <!-- /Category Banner -->

          <div class="d-flex justify-content-between">
            <!-- Tags -->
            <div class="btn-tags">
              <a href="#" class="btn btn-light btn-sm active">Laptops</a>
              <a href="#" class="btn btn-light btn-sm">Desktops</a>
              <a href="#" class="btn btn-light btn-sm">PC Gaming</a>
              <a href="#" class="btn btn-light btn-sm">Monitors</a>
              <a href="#" class="btn btn-light btn-sm">Tablets</a>
              <a href="#" class="btn btn-light btn-sm">Computer Accessories</a>
              <a href="#" class="btn btn-light btn-sm">Networking</a>
              <a href="#" class="btn btn-light btn-sm">Computer Components</a>
              <a href="#" class="btn btn-light btn-sm">Storage &amp; Hard Drives</a>
            </div>
            <!-- /Tags -->

            <!-- Filter Modal Toggler -->
            <span>
              <button class="btn btn-outline-info btn-sm" data-toggle="modal" data-target="#filterModal"><i class="fa fa-filter"></i> FILTER</button>
            </span>
          </div>

          <!-- Grid -->
          <h3 class="title mt-4">Laptops</h3>
          <div class="row no-gutters gutters-2">

            <div class="col-6 col-md-3 mb-2">
              <div class="card card-product">
                <div class="ribbon"><span class="bg-info text-white">New</span></div>
                <button class="wishlist" title="Add to wishlist"><i class="fa fa-heart"></i></button>
                <a href="detail.jsp"><img src="../img/product/1.jpg" alt="NEW Microsoft Surface Go" class="card-img-top"></a>
                <div class="card-body">
                  <span class="price">$549.00</span>
                  <a href="detail.jsp" class="card-title h6">NEW Microsoft Surface Go</a>
                  <div class="d-flex justify-content-between align-items-center">
                    <button type="button" class="btn btn-outline-info btn-sm btn-block">Add to cart</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-6 col-md-3 mb-2">
              <div class="card card-product">
                <button class="wishlist active" title="Added to wishlist"><i class="fa fa-heart"></i></button>
                <a href="detail.jsp"><img src="../img/product/2.jpg" alt='Apple 15.4" MacBook Pro Laptop Space Gray' class="card-img-top"></a>
                <div class="card-body">
                  <span class="price">$2,720.38</span>
                  <a href="detail.jsp" class="card-title h6">Apple 15.4" MacBook Pro Laptop Space Gray</a>
                  <div class="d-flex justify-content-between align-items-center">
                    <span class="rating" data-value="4"></span>
                    <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-6 col-md-3 mb-2">
              <div class="card card-product">
                <button class="wishlist" title="Add to wishlist"><i class="fa fa-heart"></i></button>
                <a href="detail.jsp"><img src="../img/product/9.jpg" alt="ASUS VivoBook F510UA FHD Laptop" class="card-img-top"></a>
                <div class="card-body">
                  <span class="price">$509.99</span>
                  <a href="detail.jsp" class="card-title h6">ASUS VivoBook F510UA FHD Laptop</a>
                  <div class="d-flex justify-content-between align-items-center">
                    <span class="rating" data-value="4"></span>
                    <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-6 col-md-3 mb-2">
              <div class="card card-product">
                <button class="wishlist" title="Add to wishlist"><i class="fa fa-heart"></i></button>
                <a href="detail.jsp"><img src="../img/product/13.jpg" alt="Acer Aspire E 15, 15.6&quot; Full HD, 8th Gen Intel Core i3" class="card-img-top"></a>
                <div class="card-body">
                  <span class="price">$379.99</span>
                  <a href="detail.jsp" class="card-title h6">Acer Aspire E 15, 15.6&quot; Full HD, 8th Gen Intel Core i3</a>
                  <div class="d-flex justify-content-between align-items-center">
                    <span class="rating" data-value="4"></span>
                    <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-6 col-md-3 mb-2">
              <div class="card card-product">
                <button class="wishlist" title="Add to wishlist"><i class="fa fa-heart"></i></button>
                <a href="detail.jsp"><img src="../img/product/14.jpg" alt="MSI GV62 8RD-200 15.6&quot; Full HD" class="card-img-top"></a>
                <div class="card-body">
                  <span class="price">$799.00</span>
                  <a href="detail.jsp" class="card-title h6">MSI GV62 8RD-200 15.6&quot; Full HD</a>
                  <div class="d-flex justify-content-between align-items-center">
                    <span class="rating" data-value="4.5"></span>
                    <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-6 col-md-3 mb-2">
              <div class="card card-product">
                <button class="wishlist" title="Add to wishlist"><i class="fa fa-heart"></i></button>
                <a href="detail.jsp"><img src="../img/product/15.jpg" alt="LG Electronics gram Thin and Light Laptop" class="card-img-top"></a>
                <div class="card-body">
                  <span class="price">$1,196.99</span>
                  <a href="detail.jsp" class="card-title h6">LG Electronics gram Thin and Light Laptop</a>
                  <div class="d-flex justify-content-between align-items-center">
                    <span class="rating" data-value="5"></span>
                    <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-6 col-md-3 mb-2">
              <div class="card card-product">
                <button class="wishlist" title="Add to wishlist"><i class="fa fa-heart"></i></button>
                <a href="detail.jsp"><img src="../img/product/16.jpg" alt="Dell Inspiron 13 5000 2-in-1 - 13.3&quot; FHD Touch" class="card-img-top"></a>
                <div class="card-body">
                  <span class="price">$649.99</span>
                  <a href="detail.jsp" class="card-title h6">Dell Inspiron 13 5000 2-in-1 - 13.3&quot; FHD Touch</a>
                  <div class="d-flex justify-content-between align-items-center">
                    <span class="rating" data-value="3.5"></span>
                    <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-6 col-md-3 mb-2">
              <div class="card card-product">
                <button class="wishlist" title="Add to wishlist"><i class="fa fa-heart"></i></button>
                <a href="detail.jsp"><img src="../img/product/17.jpg" alt="ASUS ZenBook 13 Ultra-Slim Laptop, 13.3&quot; Full HD" class="card-img-top"></a>
                <div class="card-body">
                  <span class="price">$749.00</span>
                  <a href="detail.jsp" class="card-title h6">ASUS ZenBook 13 Ultra-Slim Laptop, 13.3&quot; Full HD</a>
                  <div class="d-flex justify-content-between align-items-center">
                    <span class="rating" data-value="4"></span>
                    <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                  </div>
                </div>
              </div>
            </div>

          </div>
          <!-- /Grid -->

          <!-- Pagination -->
          <nav aria-label="Page navigation Shop Grid">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled"><a class="page-link" href="grid.jsp" tabindex="-1">Previous</a></li>
              <li class="page-item active"><a class="page-link" href="grid.jsp">1</a></li>
              <li class="page-item"><a class="page-link" href="grid.jsp">2</a></li>
              <li class="page-item"><a class="page-link" href="grid.jsp">3</a></li>
              <li class="page-item disabled"><a class="page-link" href="grid.jsp" tabindex="-1">...</a></li>
              <li class="page-item"><a class="page-link" href="grid.jsp">70</a></li>
              <li class="page-item">
                <a class="page-link" href="grid.jsp">Next</a>
              </li>
            </ul>
          </nav>
          <!-- /Pagination -->

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
    <!-- Modal filter -->
    <div class="modal fade modal-filter" id="filterModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="filterSortBy">Sort by</label>
                <select class="form-control custom-select" id="filterSortBy">
                  <option>Popular</option>
                  <option>Price: low to high</option>
                  <option>Price: high to low</option>
                </select>
              </div>
              <hr>
              <div class="form-group">
                <label for="filterCategory">Category</label>
                <select id="filterCategory" class="form-control custom-select">
                  <option>Laptops</option>
                  <option>Desktops</option>
                  <option>PC Gaming</option>
                  <option>Monitors</option>
                  <option>Tablets</option>
                  <option>Computer Accessories</option>
                  <option>Networking</option>
                  <option>Computer Components</option>
                  <option>Storage &amp; Hard Drives</option>
                </select>
              </div>
              <hr>
              <div class="form-group">
                <label class="mb-5">Price Range</label>
                <div id="price-range"></div>
              </div>
              <hr>
              <div class="form-group">
                <label>Rating</label>
                <div id="star-rating" data-score="4.5"></div>
              </div>
              <hr>
              <div class="form-group text-center">
                <div class="btn-group" role="group" aria-label="Basic example">
                  <button type="reset" class="btn btn-light">CLEAR ALL</button>
                  <button type="button" class="btn btn-info" data-dismiss="modal" aria-label="Close">DONE</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <script src="../plugins/jquery/jquery.min.js"></script>
    <script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../plugins/perfect-scrollbar/js/perfect-scrollbar.min.js"></script>
    <script src="../plugins/nouislider/nouislider.min.js"></script>
    <script src="../plugins/raty-fa/jquery.raty-fa.min.js"></script>
    <script src="../dist/js/script.js"></script>
  </body>
</html>