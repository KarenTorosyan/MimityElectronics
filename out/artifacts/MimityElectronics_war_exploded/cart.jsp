<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Fira+Sans">
    <link rel="stylesheet" href="../plugins/_mod/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../plugins/perfect-scrollbar/css/perfect-scrollbar.min.css">
    <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../plugins/swiper/swiper.min.css">
    <link rel="stylesheet" href="../dist/css/style.css">

    <title>Cart - Mimity</title>
  </head>
  <body>

    <!--Header -->
    <header class="navbar navbar-expand navbar-light fixed-top">

      <!-- Toggle Menu -->
      <span class="toggle-menu"><i class="fa fa-bars fa-lg"></i></span>

      <!-- Logo -->
      <a class="navbar-brand" href="index.jsp"><img src="../img/logo.svg" alt="Mimity">Mimity</a>

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
            <a href="index.jsp" class="list-group-item list-group-item-action"><i class="fa fa-home fa-lg fa-fw"></i> Home</a>
            <a href="grid.jsp" class="list-group-item list-group-item-action"><i class="fa fa-star fa-lg fa-fw text-warning"></i> Editor's Choice</a>
            <a href="categories.jsp" class="list-group-item list-group-item-action"><i class="fa fa-th fa-lg fa-fw"></i> Categories</a>
            <a href="grid.jsp" class="list-group-item list-group-item-action sub">Computers</a>
            <a href="grid.jsp" class="list-group-item list-group-item-action sub">Cell Phones</a>
            <a href="grid.jsp" class="list-group-item list-group-item-action sub">Photography</a>
            <a href="grid.jsp" class="list-group-item list-group-item-action sub">Home Entertainment</a>
            <a href="grid.jsp" class="list-group-item list-group-item-action sub">Video Games</a>
            <div class="collapse" id="categories">
              <a href="grid.jsp" class="list-group-item list-group-item-action sub">Headphones</a>
              <a href="grid.jsp" class="list-group-item list-group-item-action sub">Office Electronics</a>
              <a href="grid.jsp" class="list-group-item list-group-item-action sub">Office Supplies</a>
              <a href="grid.jsp" class="list-group-item list-group-item-action sub">Musical Instruments</a>
            </div>
            <a href="#categories" class="list-group-item list-group-item-action sub toggle" data-toggle="collapse" aria-expanded="false">MORE &#9662;</a>
            <a href="about.jsp" class="list-group-item list-group-item-action"><i class="fa fa-list fa-lg fa-fw"></i> Other Pages</a>
            <a href="about.jsp" class="list-group-item list-group-item-action sub">About Us</a>
            <a href="cart.jsp" class="list-group-item list-group-item-action sub active">Cart</a>
            <a href="checkout.jsp" class="list-group-item list-group-item-action sub">Checkout</a>
            <a href="compare.jsp" class="list-group-item list-group-item-action sub">Compare</a>
            <a href="contact.jsp" class="list-group-item list-group-item-action sub">Contact Us</a>
            <a href="404.jsp" class="list-group-item list-group-item-action sub">Error 404</a>
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

          <h3 class="title mb-3">You have 4 items in your cart</h3>

          <!-- Shopping Cart Table -->
          <table class="table table-cart">
            <tbody>
              
              <tr>
                <td><button class="btn btn-sm btn-outline-warning rounded-circle" title="Remove"><i class="fa fa-close"></i></button></td>
                <td>
                  <a href="detail.jsp"><img src="../img/product/1.jpg" width="50" height="50" alt="NEW Microsoft Surface Go"></a>
                  <button class="btn btn-sm btn-outline-warning rounded">Remove</button>
                </td>
                <td>
                  <h6><a href="detail.jsp" class="text-body">NEW Microsoft Surface Go</a></h6>
                  <h6 class="text-muted">$549.00</h6>
                  
                  <span class="badge badge-success font-weight-light">RAM: 4GB</span>
                  <span class="badge badge-dark font-weight-light">Storage: 64GB</span>
                  
                </td>
                <td>
                  <div class="input-spinner">
                    <input type="number" class="form-control" value="1" min="1" max="999">
                    <div class="btn-group-vertical">
                      <button type="button" class="btn btn-light"><i class="fa fa-chevron-up"></i></button>
                      <button type="button" class="btn btn-light"><i class="fa fa-chevron-down"></i></button>
                    </div>
                  </div>
                  <span class="price">$549.00</span>
                </td>
              </tr>
              
              <tr>
                <td><button class="btn btn-sm btn-outline-warning rounded-circle" title="Remove"><i class="fa fa-close"></i></button></td>
                <td>
                  <a href="detail.jsp"><img src="../img/product/3.jpg" width="50" height="50" alt="SanDisk Cruzer CZ36 64GB USB 2.0 Flash Drive"></a>
                  <button class="btn btn-sm btn-outline-warning rounded">Remove</button>
                </td>
                <td>
                  <h6><a href="detail.jsp" class="text-body">SanDisk Cruzer CZ36 64GB USB 2.0 Flash Drive</a></h6>
                  <h6 class="text-muted">$13.49</h6>
                  
                </td>
                <td>
                  <div class="input-spinner">
                    <input type="number" class="form-control" value="1" min="1" max="999">
                    <div class="btn-group-vertical">
                      <button type="button" class="btn btn-light"><i class="fa fa-chevron-up"></i></button>
                      <button type="button" class="btn btn-light"><i class="fa fa-chevron-down"></i></button>
                    </div>
                  </div>
                  <span class="price">$13.49</span>
                </td>
              </tr>
              
              <tr>
                <td><button class="btn btn-sm btn-outline-warning rounded-circle" title="Remove"><i class="fa fa-close"></i></button></td>
                <td>
                  <a href="detail.jsp"><img src="../img/product/8.jpg" width="50" height="50" alt="Beats Studio3 Wireless Headphones"></a>
                  <button class="btn btn-sm btn-outline-warning rounded">Remove</button>
                </td>
                <td>
                  <h6><a href="detail.jsp" class="text-body">Beats Studio3 Wireless Headphones</a></h6>
                  <h6 class="text-muted">$299.99</h6>
                  
                </td>
                <td>
                  <div class="input-spinner">
                    <input type="number" class="form-control" value="1" min="1" max="999">
                    <div class="btn-group-vertical">
                      <button type="button" class="btn btn-light"><i class="fa fa-chevron-up"></i></button>
                      <button type="button" class="btn btn-light"><i class="fa fa-chevron-down"></i></button>
                    </div>
                  </div>
                  <span class="price">$299.99</span>
                </td>
              </tr>
              
              <tr>
                <td><button class="btn btn-sm btn-outline-warning rounded-circle" title="Remove"><i class="fa fa-close"></i></button></td>
                <td>
                  <a href="detail.jsp"><img src="../img/product/12.jpg" width="50" height="50" alt="Essential Phone in Halo Gray - 128 GB Unlocked"></a>
                  <button class="btn btn-sm btn-outline-warning rounded">Remove</button>
                </td>
                <td>
                  <h6><a href="detail.jsp" class="text-body">Essential Phone in Halo Gray - 128 GB Unlocked</a></h6>
                  <h6 class="text-muted">$435.00</h6>
                  
                </td>
                <td>
                  <div class="input-spinner">
                    <input type="number" class="form-control" value="1" min="1" max="999">
                    <div class="btn-group-vertical">
                      <button type="button" class="btn btn-light"><i class="fa fa-chevron-up"></i></button>
                      <button type="button" class="btn btn-light"><i class="fa fa-chevron-down"></i></button>
                    </div>
                  </div>
                  <span class="price">$435.00</span>
                </td>
              </tr>
              
              <tr>
                <td colspan="4">
                  <div class="box-total">
                    <h4>Subotal: <span class="price">$1,297.48</span></h4>
                    <a href="checkout.jsp" class="btn btn-success">CHECKOUT</a>
                  </div>
                </td>
              </tr>

            </tbody>
          </table>
          <!-- /Shopping Cart Table -->

          <!-- Recently viewed-->
          <h4>Recently viewed items</h4>
          <div class="content-slider">
            <div class="swiper-container" id="popular-slider">
              <div class="swiper-wrapper">
                
                <div class="swiper-slide">
                  <div class="row no-gutters gutters-2">
                    <div class="col-6 col-md-3 mb-2">
                      <div class="card card-product">
                        <div class="badge badge-success badge-pill">save $89.01</div>
                        <button class="wishlist" title="Add tot wishlist"><i class="fa fa-heart"></i></button>
                        <a href="detail.jsp"><img src="../img/product/9.jpg" alt="ASUS VivoBook F510UA FHD Laptop" class="card-img-top"></a>
                        <div class="card-body">
                          <span class="price"><del class="small text-muted">$599.00</del> $509.99</span>
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
                        <div class="ribbon"><span class="bg-pink text-white">Hot</span></div>
                        <button class="wishlist" title="Add tot wishlist"><i class="fa fa-heart"></i></button>
                        <a href="detail.jsp"><img src="../img/product/10.jpg" alt="Nikon D7200 DX-format DSLR Body (Black)" class="card-img-top"></a>
                        <div class="card-body">
                          <span class="price">$996.95</span>
                          <a href="detail.jsp" class="card-title h6">Nikon D7200 DX-format DSLR Body (Black)</a>
                          <div class="d-flex justify-content-between align-items-center">
                            <span class="rating" data-value="5"></span>
                            <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-6 col-md-3 mb-2">
                      <div class="card card-product">
                        <button class="wishlist" title="Add tot wishlist"><i class="fa fa-heart"></i></button>
                        <a href="detail.jsp"><img src="../img/product/11.jpg" alt="Polk Audio PSW10 10-Inch Powered Subwoofer" class="card-img-top"></a>
                        <div class="card-body">
                          <span class="price">$99.99</span>
                          <a href="detail.jsp" class="card-title h6">Polk Audio PSW10 10-Inch Powered Subwoofer</a>
                          <div class="d-flex justify-content-between align-items-center">
                            <span class="rating" data-value="4"></span>
                            <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-6 col-md-3 mb-2">
                      <div class="card card-product">
                        <div class="badge badge-danger badge-pill">Only 1 left in stock</div>
                        <button class="wishlist" title="Add tot wishlist"><i class="fa fa-heart"></i></button>
                        <a href="detail.jsp"><img src="../img/product/12.jpg" alt="Essential Phone in Halo Gray – 128 GB Unlocked" class="card-img-top"></a>
                        <div class="card-body">
                          <span class="price"><del class="small text-muted">$499.99</del> $435.00</span>
                          <a href="detail.jsp" class="card-title h6">Essential Phone in Halo Gray – 128 GB Unlocked</a>
                          <div class="d-flex justify-content-between align-items-center">
                            <span class="rating" data-value="4"></span>
                            <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="swiper-slide">
                  <div class="row no-gutters gutters-2">
                    <div class="col-6 col-md-3 mb-2">
                      <div class="card card-product">
                        <div class="badge badge-success badge-pill">save $89.01</div>
                        <button class="wishlist" title="Add tot wishlist"><i class="fa fa-heart"></i></button>
                        <a href="detail.jsp"><img src="../img/product/9.jpg" alt="ASUS VivoBook F510UA FHD Laptop" class="card-img-top"></a>
                        <div class="card-body">
                          <span class="price"><del class="small text-muted">$599.00</del> $509.99</span>
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
                        <div class="ribbon"><span class="bg-pink text-white">Hot</span></div>
                        <button class="wishlist" title="Add tot wishlist"><i class="fa fa-heart"></i></button>
                        <a href="detail.jsp"><img src="../img/product/10.jpg" alt="Nikon D7200 DX-format DSLR Body (Black)" class="card-img-top"></a>
                        <div class="card-body">
                          <span class="price">$996.95</span>
                          <a href="detail.jsp" class="card-title h6">Nikon D7200 DX-format DSLR Body (Black)</a>
                          <div class="d-flex justify-content-between align-items-center">
                            <span class="rating" data-value="5"></span>
                            <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-6 col-md-3 mb-2">
                      <div class="card card-product">
                        <button class="wishlist" title="Add tot wishlist"><i class="fa fa-heart"></i></button>
                        <a href="detail.jsp"><img src="../img/product/11.jpg" alt="Polk Audio PSW10 10-Inch Powered Subwoofer" class="card-img-top"></a>
                        <div class="card-body">
                          <span class="price">$99.99</span>
                          <a href="detail.jsp" class="card-title h6">Polk Audio PSW10 10-Inch Powered Subwoofer</a>
                          <div class="d-flex justify-content-between align-items-center">
                            <span class="rating" data-value="4"></span>
                            <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-6 col-md-3 mb-2">
                      <div class="card card-product">
                        <div class="badge badge-danger badge-pill">Only 1 left in stock</div>
                        <button class="wishlist" title="Add tot wishlist"><i class="fa fa-heart"></i></button>
                        <a href="detail.jsp"><img src="../img/product/12.jpg" alt="Essential Phone in Halo Gray – 128 GB Unlocked" class="card-img-top"></a>
                        <div class="card-body">
                          <span class="price"><del class="small text-muted">$499.99</del> $435.00</span>
                          <a href="detail.jsp" class="card-title h6">Essential Phone in Halo Gray – 128 GB Unlocked</a>
                          <div class="d-flex justify-content-between align-items-center">
                            <span class="rating" data-value="4"></span>
                            <button type="button" class="btn btn-outline-info btn-sm">Add to cart</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
              </div>
            </div>
            <a href="#" role="button" class="carousel-control-prev" id="popular-slider-prev"><i class="fa fa-angle-left fa-lg"></i></a>
            <a href="#" role="button" class="carousel-control-next" id="popular-slider-next"><i class="fa fa-angle-right fa-lg"></i></a>
          </div>
          <!-- /Recently viewed-->

          <!-- Footer -->
          <div class="navbar navbar-expand navbar-light navbar-footer">
            <a class="navbar-brand" href="index.jsp">Mimity</a>
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
    <script src="../plugins/swiper/swiper.min.js"></script>
    <script src="../dist/js/script.js"></script>
  </body>
</html>