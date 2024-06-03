<%-- 
    Document   : header
    Created on : Apr 22, 2024, 10:22:39 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Header desktop -->
<div class="container-menu-desktop">
    <!-- Topbar -->
    <div class="top-bar">
        <div class="content-topbar flex-sb-m h-full container">
            <div class="left-top-bar">
                <i class="fa-regular fa-square-check"></i> <span>Commitment to 100% genuine products. Exchange for a new product if found to be fake or poor quality!</span>
            </div>

            <div class="right-top-bar flex-w h-full">
                <c:if test="${account == null || account.getIsAdmin() == 1}">
                <a href="navigate?target=login" class="flex-c-m trans-04 p-lr-25">
                    Sing in
                </a>

                <a href="navigate?target=register" class="flex-c-m trans-04 p-lr-25">
                    Sign up
                </a>
                </c:if>
                <c:if test="${account.getIsAdmin() == 0}">
                    <img class="p-2 m-r-3" style="border-radius: 50%;" src=${account.getAvatar()} width="40px" height="100%" alt="alt"/>
                <a href="navigate?target=profile" class="flex-c-m trans-04 p-r-25">
                    ${account.getName()}
                </a>

                <a href="account?mode=signout" class="flex-c-m trans-04 p-lr-25">
                    Sign out
                </a>  
                </c:if>

                <a href="#" class="flex-c-m trans-04 p-lr-25">
                    EN
                </a>

                <a href="#" class="flex-c-m trans-04 p-lr-25">
                    VNĐ
                </a>
            </div>
        </div>
    </div>

    <div class="wrap-menu-desktop how-shadow1">
        <nav class="limiter-menu-desktop container">

            <!-- Logo desktop -->		
            <a href="start" class="logo mr-0" align="end">
                <img src="images/icons/favicon.png" alt="IMG-LOGO">

                <strong><span style="color: #747474">TAN'</span><span style="color: #444444">S</span><span style="color: black">HOES</span></strong>
            </a>

            <!-- Menu desktop -->
            <div class="menu-desktop">
                <ul class="main-menu">
                    <li class="${ activeTab==0 ? "active-menu":" "}">
                        <a href="start">Home</a>
                    </li>
                    <li class="${ activeTab==1 ? "active-menu":" "}" data-label1="hot">
                        <a href="navigate?target=shop">Shop</a>
                        <ul class="sub-menu">
                            <c:forEach items="${listBrand}" var="b">
                                <li><a href="product?mode=filter&brand=${b.getId()}">${b.getName()}</a></li>
                                </c:forEach>
                        </ul>
                    </li>

                    <li class="${ activeTab==2 ? "active-menu":" "}">
                        <a href="navigate?target=blog">Blog</a>
                    </li>

                    <li class="${ activeTab==3 ? "active-menu":" "}">
                        <a href="navigate?target=about">About</a>
                    </li>

                    <li class="${ activeTab==4 ? "active-menu":" "}">
                        <a href="navigate?target=contact">Contact</a>
                    </li>
                </ul>
            </div>	

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m">
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                    <i class="zmdi zmdi-search"></i>
                </div>

                <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"  data-notify="${cart.getTotalQuantity()!=null ? cart.getTotalQuantity() : 0}">
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>

                <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                    <i class="zmdi zmdi-favorite-outline"></i>
                </a>
            </div>
        </nav>
    </div>	
</div>

<!-- Header Mobile -->
<div class="wrap-header-mobile">
    <!-- Logo moblie -->		
    <div class="logo-mobile">
        <a href="index.html"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
    </div>

    <!-- Icon header -->
    <div class="wrap-icon-header flex-w flex-r-m m-r-15">
        <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
            <i class="zmdi zmdi-search"></i>
        </div>

        <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
            <i class="zmdi zmdi-shopping-cart"></i>
        </div>

        <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
            <i class="zmdi zmdi-favorite-outline"></i>
        </a>
    </div>

    <!-- Button show menu -->
    <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
        <span class="hamburger-box">
            <span class="hamburger-inner"></span>
        </span>
    </div>
</div>


<!-- Menu Mobile -->
<div class="menu-mobile">
    <ul class="topbar-mobile">
        <li>
            <div class="left-top-bar">
                Free shipping for standard order over $100
            </div>
        </li>

        <li>
            <div class="right-top-bar flex-w h-full">
                <a href="#" class="flex-c-m p-lr-10 trans-04">
                    Help & FAQs
                </a>

                <a href="#" class="flex-c-m p-lr-10 trans-04">
                    My Account
                </a>

                <a href="#" class="flex-c-m p-lr-10 trans-04">
                    EN
                </a>

                <a href="#" class="flex-c-m p-lr-10 trans-04">
                    USD
                </a>
            </div>
        </li>
    </ul>
</div>

<!-- Modal Search -->
<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
    <div class="container-search-header">
        <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
            <img src="images/icons/icon-close2.png" alt="CLOSE">
        </button>

        <form class="wrap-search-header flex-w p-l-15">
            <button class="flex-c-m trans-04">
                <i class="zmdi zmdi-search"></i>
            </button>
            <input class="plh3" type="text" name="search" placeholder="Search...">
        </form>
    </div>
</div>

