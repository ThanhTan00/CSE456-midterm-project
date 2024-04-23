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
        <title>Tan's Shoes Store | Contact</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" type="image/png" href="images/icons/favicon.npg"/>
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
        <header class="header-v4">
            <jsp:include page="userIncludes/header.jsp"></jsp:include>
            </header>
            <!--End Header-->

            <!-- Cart -->
        <jsp:include page="userIncludes/cart.jsp"></jsp:include>
            <!-- End Cart -->

            <!-- Title page -->
            <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
                <h2 class="ltext-105 cl0 txt-center">
                    Contact
                </h2>
            </section>	


            <!-- Content page -->
            <section class="bg0 p-t-104 p-b-116">
                <div class="container">
                    <div class="flex-w flex-tr">
                        <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                            <form>
                                <h4 class="mtext-105 cl2 txt-center p-b-30">
                                    Send Us A Message
                                </h4>

                                <div class="bor8 m-b-20 how-pos4-parent">
                                    <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="email" placeholder="Your Email Address">
                                    <img class="how-pos4 pointer-none" src="images/icons/icon-email.png" alt="ICON">
                                </div>

                                <div class="bor8 m-b-30">
                                    <textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" placeholder="How Can We Help?"></textarea>
                                </div>

                                <button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                                    Submit
                                </button>
                            </form>
                        </div>

                        <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
                            <div class="flex-w w-full p-b-42">
                                <span class="fs-18 cl5 txt-center size-211">
                                    <span class="lnr lnr-map-marker"></span>
                                </span>

                                <div class="size-212 p-t-2">
                                    <span class="mtext-110 cl2">
                                        Address
                                    </span>

                                    <p class="stext-115 cl6 size-213 p-t-18">
                                        3M38+6F3, Nam Kỳ Khởi Nghĩa, Định Hoà, Thủ Dầu Một, Bình Dương, Vietnam
                                    </p>
                                </div>
                            </div>

                            <div class="flex-w w-full p-b-42">
                                <span class="fs-18 cl5 txt-center size-211">
                                    <span class="lnr lnr-phone-handset"></span>
                                </span>

                                <div class="size-212 p-t-2">
                                    <span class="mtext-110 cl2">
                                        Lets Talk
                                    </span>

                                    <p class="stext-115 cl1 size-213 p-t-18">
                                        <a href="">(+84) 768 613 782</a>
                                    </p>
                                </div>
                            </div>

                            <div class="flex-w w-full">
                                <span class="fs-18 cl5 txt-center size-211">
                                    <span class="lnr lnr-envelope"></span>
                                </span>

                                <div class="size-212 p-t-2">
                                    <span class="mtext-110 cl2">
                                        Sale Support
                                    </span>

                                    <p class="stext-115 cl1 size-213 p-t-18">
                                        <a href="mailto:tan.lenguyen.cit19@eiu.edu.vn">tan.lenguyen.cit19@eiu.edu.vn</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>	

            <!-- Footer -->
        <jsp:include page="userIncludes/footer.jsp"></jsp:include>
        <!-- End Footer -->

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
        <script>
            $('.gallery-lb').each(function () { // the containers for all your galleries
                $(this).magnificPopup({
                    delegate: 'a', // the selector for gallery item
                    type: 'image',
                    gallery: {
                        enabled: true
                    },
                    mainClass: 'mfp-fade'
                });
            });
        </script>

        <script src="asset/vendor/isotope/isotope.pkgd.min.js"></script>

        <script src="asset/vendor/sweetalert/sweetalert.min.js"></script>
        <script>
            $('.js-addwish-b2').on('click', function (e) {
                e.preventDefault();
            });

            $('.js-addwish-b2').each(function () {
                var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
                $(this).on('click', function () {
                    swal(nameProduct, "is added to wishlist !", "success");

                    $(this).addClass('js-addedwish-b2');
                    $(this).off('click');
                });
            });

            $('.js-addwish-detail').each(function () {
                var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

                $(this).on('click', function () {
                    swal(nameProduct, "is added to wishlist !", "success");

                    $(this).addClass('js-addedwish-detail');
                    $(this).off('click');
                });
            });

            /*---------------------------------------------*/

            $('.js-addcart-detail').each(function () {
                var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
                $(this).on('click', function () {
                    swal(nameProduct, "is added to cart !", "success");
                });
            });

        </script>

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
