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

    <title>Checkout - Mimity</title>
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
            <a href="cart.jsp" class="list-group-item list-group-item-action sub">Cart</a>
            <a href="checkout.jsp" class="list-group-item list-group-item-action sub active">Checkout</a>
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

          <div class="row">
            <div class="col-md-8">
              <h3 class="title"><i class="fa fa-credit-card"></i> Payment</h3>
              <span class="text-muted">Step 2 of 3</span>
              <hr>
              <div class="bg-light p-3 border shadow-sm">
                <ul class="nav nav-pills payment-nav mb-4" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="cc-tab" data-toggle="pill" href="#cc" role="tab" aria-controls="cc" aria-selected="true">
                      <i class="fa fa-fw fa-credit-card"></i> Pay with Credit Card
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="paypal-tab" data-toggle="pill" href="#paypal" role="tab" aria-controls="paypal" aria-selected="false">
                      <i class="fa fa-fw fa-paypal"></i> Pay with PayPal
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="redeem-tab" data-toggle="pill" href="#redeem" role="tab" aria-controls="redeem" aria-selected="false">
                      <i class="fa fa-fw fa-database"></i> Redeem Points
                    </a>
                  </li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane fade show active" id="cc" role="tabpanel" aria-labelledby="cc-tab">
                    <div class='card-wrapper mb-3'></div>
                    <form id="card">
                      <div class="form-row">
                        <div class="form-group col-sm-6">
                          <input type="text" name="number" class="form-control" placeholder="Card Number">
                        </div>
                        <div class="form-group col-sm-6">
                          <input type="text" name="name" class="form-control" placeholder="Full Name">
                        </div>
                      </div>
                      <div class="form-row">
                        <div class="form-group col-sm-3">
                          <input type="text" name="expiry" class="form-control" placeholder="Expiry Date">
                        </div>
                        <div class="form-group col-sm-3">
                          <input type="text" name="cvc" class="form-control" placeholder="CVC Code">
                        </div>
                        <div class="form-group col-sm-6">
                          <a href="checkout-3.jsp" class="btn btn-primary btn-block">NEXT <i class="fa fa-angle-right"></i></a>
                        </div>
                      </div>
                    </form>
                  </div>
                  <div class="tab-pane fade" id="paypal" role="tabpanel" aria-labelledby="paypal-tab">
                    <form id="card" class="p-sm-5 mx-sm-5">
                      <h5>Log in to your PayPal account</h5>
                      <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="Email">
                      </div>
                      <div class="form-group">
                        <input type="password" name="password" class="form-control" placeholder="Password">
                      </div>
                      <div class="form-group">
                        <a href="checkout-3.jsp" class="btn btn-primary">NEXT <i class="fa fa-angle-right"></i></a>
                      </div>
                    </form>
                  </div>
                  <div class="tab-pane fade" id="redeem" role="tabpanel" aria-labelledby="redeem-tab">
                    <div class="text-center">
                      <div class="alert alert-primary" role="alert">
                        You currently have <strong>9,386</strong> Points to spend.
                      </div>
                      <div class="custom-control custom-checkbox mb-3">
                        <input type="checkbox" class="custom-control-input" id="customCheck1">
                        <label class="custom-control-label" for="customCheck1">Use my Points to pay for this order.</label>
                      </div>
                      <a href="checkout-3.jsp" class="btn btn-primary">NEXT <i class="fa fa-angle-right"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4 pt-5">
              <h4 class="title mb-3">Order summary</h4>
              
              <div class="media border-bottom mb-3">
                <img src="../img/product/1.jpg" width="50" height="50" alt="NEW Microsoft Surface Go">
                <div class="media-body ml-3">
                  <h6>NEW Microsoft Surface Go</h6>
                  <div>1 x <span class="price">$549.00</span></div>
                </div>
              </div>
              
              <div class="media border-bottom mb-3">
                <img src="../img/product/3.jpg" width="50" height="50" alt="SanDisk Cruzer CZ36 64GB USB 2.0 Flash Drive">
                <div class="media-body ml-3">
                  <h6>SanDisk Cruzer CZ36 64GB USB 2.0 Flash Drive</h6>
                  <div>1 x <span class="price">$13.49</span></div>
                </div>
              </div>
              
              <div class="media border-bottom mb-3">
                <img src="../img/product/8.jpg" width="50" height="50" alt="Beats Studio3 Wireless Headphones">
                <div class="media-body ml-3">
                  <h6>Beats Studio3 Wireless Headphones</h6>
                  <div>1 x <span class="price">$299.99</span></div>
                </div>
              </div>
              
              <div class="media border-bottom mb-3">
                <img src="../img/product/12.jpg" width="50" height="50" alt="Essential Phone in Halo Gray - 128 GB Unlocked">
                <div class="media-body ml-3">
                  <h6>Essential Phone in Halo Gray - 128 GB Unlocked</h6>
                  <div>1 x <span class="price">$435.00</span></div>
                </div>
              </div>
              
              <div class="d-flex justify-content-between">
                <span>Items</span>
                <span>$1,297.48</span>
              </div>
              <div class="d-flex justify-content-between">
                <span>Estimated tax</span>
                <span>$20.00</span>
              </div>
              <div class="d-flex justify-content-between">
                <span>Shipping</span>
                <span>$9.95</span>
              </div>
              <hr>
              <div class="box-total">
                  <h4>TOTAL</h4>
                  <h4><span class="price">$1,297.48</span></h4>
              </div>
            </div>
          </div>

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
    <script src="../plugins/card/jquery.card.min.js"></script>
    <script src="../dist/js/script.js"></script>
  </body>
</html>