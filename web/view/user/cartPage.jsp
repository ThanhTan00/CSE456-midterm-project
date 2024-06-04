<%-- 
    Document   : userHomePage
    Created on : Apr 22, 2024, 6:27:50 PM
    Author     : ADMIN
--%>
<%--<%@page import="entity.Category"%>--%>
<%@page import="java.util.ArrayList"%>
<%--<%@page import="entity.Product"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tan's Shoes Store | Shopping Cart</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
        <link rel="stylesheet" type="text/css" href="asset/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="asset/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="asset/fonts/iconic/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" type="text/css" href="asset/fonts/linearicons-v1.0.0/icon-font.min.css">
        <link rel="stylesheet" type="text/css" href="asset/vendor/animate/animate.css">	
        <link rel="stylesheet" type="text/css" href="asset/vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="asset/vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="asset/vendor/select2/select2.min.css">	
        <link rel="stylesheet" type="text/css" href="asset/vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="asset/vendor/slick/slick.css">
        <link rel="stylesheet" type="text/css" href="asset/vendor/MagnificPopup/magnific-popup.css">
        <link rel="stylesheet" type="text/css" href="asset/vendor/perfect-scrollbar/perfect-scrollbar.css">
        <link rel="stylesheet" type="text/css" href="asset/css/util.css">
        <link rel="stylesheet" type="text/css" href="asset/css/main.css">
        <script src="https://kit.fontawesome.com/d69b483815.js" crossorigin="anonymous"></script>
        <!--===============================================================================================-->
    </head>
    <body class="animsition">
        <!-- Header -->
        <header>
            <jsp:include page="userIncludes/header.jsp"></jsp:include>
            </header>
            <!--End Header-->

            <!-- Cart -->
        <jsp:include page="userIncludes/cart.jsp"></jsp:include>
            <!-- End Cart -->

            <!--            <div class="container">
                            <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
                                <a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
                                    Home
                                    <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                                </a>
            
                                <span class="stext-109 cl4">
                                    Shoping Cart
                                </span>
                            </div>
                        </div>-->
            <!-- Shoping Cart -->
            <form class="bg0 p-t-100 p-b-85">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 col-xl-8 m-lr-auto m-b-50">
                            <div class="m-l-25 m-r--38 m-lr-0-xl">
                                <div class="wrap-table-shopping-cart">
                                    <table class="table-shopping-cart">
                                        <tr class="table_head">
                                            <th class="column-6">Remove</th>
                                            <th class="column-1">Product</th>
                                            <th class="column-2"></th>
                                            <th class="column-6">Size</th>
                                            <th class="column-4">Price</th>
                                            <th class="column-5">Quantity</th>
                                            <th class="column-6">Total</th>
                                        </tr>
                                    <c:forEach items="${cart.items}" var="i">

                                        <tr class="table_row">
                                            <td class="column-6"><a href="cart?mode=remove&pid=${i.getProduct().getId()}"><i class="fa fa-remove" style="font-size:36px;color:red"></i></a></td>
                                            <td class="column-1">
                                                <div class="how-itemcart1">
                                                    <img src="${i.getProduct().getImage()}" alt="IMG">
                                                </div>
                                            </td>
                                            <td class="column-2"><a style="color: black" href="product?mode=detail&id=${i.getProduct().getId()}">${i.getProduct().getName()}</a></td>
                                            <td class="column-6">${i.getSize()}</td>
                                            <td class="column-4">${i.getProduct().getFormatedPrice()}</td>
                                            <td class="column-5">
                                                ${i.getQuantity()}
                                            </td>
                                            <td class="column-6">${i.getFormatedItemPrice()}</td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>

                            <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
                                <div class="flex-w flex-m m-r-20 m-tb-5">
                                    <input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">

                                    <div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
                                        Apply coupon
                                    </div>
                                </div>
                                <div class="flex-w flex-m m-r-20 m-tb-5">
                                    <a href="cart?mode=empty"><div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
                                        Empty Cart
                                    </div></a>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="col-sm-10 col-lg-7 col-xl-4 m-lr-auto m-b-50">
                        <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
                            <h4 class="mtext-109 cl2 p-b-30">
                                Cart Totals
                            </h4>

                            <div class="flex-w flex-t bor12 p-b-13">
                                <div class="size-208">
                                    <span class="stext-110 cl2">
                                        Subtotal:
                                    </span>
                                </div>

                                <div style="text-align: end;" class="size-209">
                                    <span class="mtext-110 cl2">
                                        ${cart.getFormatedTotalPrice(cart.getTotalMoney())}
                                    </span>
                                </div>
                            </div>

                            <div class="flex-w flex-t bor12 p-t-15 p-b-30">
                                <div class="size-208 w-full-ssm">
                                    <span class="stext-110 cl2">
                                        Shipping:
                                    </span>
                                </div>
                                <div style="text-align: end;" class="size-209">
                                    <span class="mtext-110 cl2">
                                        ${cart.getFormatedTotalPrice(45000)}
                                    </span>
                                </div>
                            </div>

                            <div class="flex-w flex-t p-t-27 p-b-33">
                                <div class="size-208">
                                    <span class="mtext-101 cl2">
                                        Total:
                                    </span>
                                </div>

                                <div style="text-align: end;" class="size-209 p-t-1">
                                    <span class="mtext-110 cl2">
                                        ${cart.getFormatedTotalPrice(cart.getTotalMoney()+45000)}
                                    </span>
                                </div>
                            </div>

                                    <a href="cart?mode=checkout" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 text-center pointer">
                                Proceed to Checkout
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!-- Footer -->
        <jsp:include page="userIncludes/footer.jsp"></jsp:include>
        <!-- End Footer -->
        `

        <!--============================================== Script =================================================-->
        <script src="asset/vendor/jquery/jquery-3.2.1.min.js"></script>

        <script src="asset/vendor/animsition/js/animsition.min.js"></script>

        <script src="asset/vendor/bootstrap/js/popper.js"></script>
        <script src="asset/vendor/bootstrap/js/bootstrap.min.js"></script>

        <script src="asset/vendor/select2/select2.min.js"></script>
        <script>
            $(".js-select2").each(function () {
                $(this).select2({
                    minimumResultsForSearch: 20,
                    dropdownParent: $(this).next('.dropDownSelect2')
                });
            })
        </script>

        <script src="asset/vendor/daterangepicker/moment.min.js"></script>
        <script src="asset/vendor/daterangepicker/daterangepicker.js"></script>

        <script src="asset/vendor/slick/slick.min.js"></script>
        <script src="asset/js/slick-custom.js"></script>

        <script src="asset/vendor/parallax100/parallax100.js"></script>
        <script>
            $('.parallax100').parallax100();
        </script>

        <script src="asset/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>

        <script src="asset/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
        <script>
            $('.js-pscroll').each(function () {
                $(this).css('position', 'relative');
                $(this).css('overflow', 'hidden');
                var ps = new PerfectScrollbar(this, {
                    wheelSpeed: 1,
                    scrollingThreshold: 1000,
                    wheelPropagation: false,
                });

                $(window).on('resize', function () {
                    ps.update();
                })
            });
        </script>
        <script src="asset/js/main.js"></script>
    </body>
</html>
