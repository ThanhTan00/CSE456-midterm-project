 

<nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="admin">
          <h1 class="tm-site-title mb-0">Manager Page</h1>
        </a>
        <button
          class="navbar-toggler ml-auto mr-0"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto h-100">
            <li ${active==4? "class='nav-item active'":"class='nav-item'"}>
                <a class="nav-link" href="AdminServlet?mode=storeManage">
                    <i class="fas fa-tachometer-alt"></i>
                       DASHBOARD
                </a>
            </li>
            <li ${active==2? "class='nav-item active'":"class='nav-item'"} >
              <a class="nav-link" href="manage?mode=productManage">
                <i class="fas fa-shopping-cart"></i>Manage Product
              </a>
            </li>
            <li ${active==1? "class='nav-item active'":"class='nav-item'"}>
              <a class="nav-link" href="manage?mode=orderManage">
                <i class="far fa-file-alt"></i> Manage Order
              </a>
            </li>
            <li ${active==3? "class='nav-item dropdown active'":"class='nav-item dropdown'"}>
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false">
                <i class="fas fa-user"></i>
                <span> Manage Account <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="manager?mode=staffAccount">Staff Account</a>
                <a class="dropdown-item" href="manage?mode=customerAccount">Customer Account</a>
              </div>
            </li>
          </ul>
          <ul class="navbar-nav">
            <li class="d-flex justify-between nav-item ${active==5?'active':''}">
                <a class="d-block nav-link" href="AdminServlet?mode=personalProfile">${sessionScope.account.getName()}!!</a>
            </li>
            <li class="nav-item">
                <a class="d-block nav-link" href="account?mode=signout"><b>Logout</b></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>