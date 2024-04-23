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
        <title>Tan's Shoes Store | Blog</title>
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
        <header class="header-v4">
            <jsp:include page="userIncludes/header.jsp"></jsp:include>
        </header>
        <!--End Header-->
        
        <!-- Cart -->
        <jsp:include page="userIncludes/cart.jsp"></jsp:include>
        <!-- End Cart -->
        
        <!-- Title page -->
        <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-02.jpg');">
            <h2 class="ltext-105 cl0 txt-center">
                Blog
            </h2>
        </section>	


        <!-- Content page -->
        <section class="bg0 p-t-62 p-b-60">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-lg-9 p-b-80">
                        <div class="p-r-45 p-r-0-lg">
                            <!-- item blog -->
                            <div class="p-b-63">
                                <a href="blog-detail.html" class="hov-img0 how-pos5-parent">
                                    <img src="images/blog-04.jpg" alt="IMG-BLOG">

                                    <div class="flex-col-c-m size-123 bg9 how-pos5">
                                        <span class="ltext-107 cl2 txt-center">
                                            22
                                        </span>

                                        <span class="stext-109 cl3 txt-center">
                                            Jan 2018
                                        </span>
                                    </div>
                                </a>

                                <div class="p-t-32">
                                    <h4 class="p-b-15">
                                        <a href="blog-detail.html" class="ltext-108 cl2 hov-cl1 trans-04">
                                            8 Inspiring Ways to Wear Dresses in the Winter
                                        </a>
                                    </h4>

                                    <p class="stext-117 cl6">
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
                                    </p>

                                    <div class="flex-w flex-sb-m p-t-18">
                                        <span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
                                            <span>
                                                <span class="cl4">By</span> Admin  
                                                <span class="cl12 m-l-4 m-r-6">|</span>
                                            </span>

                                            <span>
                                                StreetStyle, Fashion, Couple  
                                                <span class="cl12 m-l-4 m-r-6">|</span>
                                            </span>

                                            <span>
                                                8 Comments
                                            </span>
                                        </span>

                                        <a href="blog-detail.html" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10">
                                            Continue Reading

                                            <i class="fa fa-long-arrow-right m-l-9"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <!-- item blog -->
                            <div class="p-b-63">
                                <a href="blog-detail.html" class="hov-img0 how-pos5-parent">
                                    <img src="images/blog-05.jpg" alt="IMG-BLOG">

                                    <div class="flex-col-c-m size-123 bg9 how-pos5">
                                        <span class="ltext-107 cl2 txt-center">
                                            18
                                        </span>

                                        <span class="stext-109 cl3 txt-center">
                                            Jan 2018
                                        </span>
                                    </div>
                                </a>

                                <div class="p-t-32">
                                    <h4 class="p-b-15">
                                        <a href="blog-detail.html" class="ltext-108 cl2 hov-cl1 trans-04">
                                            The Great Big List of Men’s Gifts for the Holidays 
                                        </a>
                                    </h4>

                                    <p class="stext-117 cl6">
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
                                    </p>

                                    <div class="flex-w flex-sb-m p-t-18">
                                        <span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
                                            <span>
                                                <span class="cl4">By</span> Admin  
                                                <span class="cl12 m-l-4 m-r-6">|</span>
                                            </span>

                                            <span>
                                                StreetStyle, Fashion, Couple  
                                                <span class="cl12 m-l-4 m-r-6">|</span>
                                            </span>

                                            <span>
                                                8 Comments
                                            </span>
                                        </span>

                                        <a href="blog-detail.html" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10">
                                            Continue Reading

                                            <i class="fa fa-long-arrow-right m-l-9"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <!-- item blog -->
                            <div class="p-b-63">
                                <a href="blog-detail.html" class="hov-img0 how-pos5-parent">
                                    <img src="images/blog-06.jpg" alt="IMG-BLOG">

                                    <div class="flex-col-c-m size-123 bg9 how-pos5">
                                        <span class="ltext-107 cl2 txt-center">
                                            16
                                        </span>

                                        <span class="stext-109 cl3 txt-center">
                                            Jan 2018
                                        </span>
                                    </div>
                                </a>

                                <div class="p-t-32">
                                    <h4 class="p-b-15">
                                        <a href="blog-detail.html" class="ltext-108 cl2 hov-cl1 trans-04">
                                            5 Winter-to-Spring Fashion Trends to Try Now
                                        </a>
                                    </h4>

                                    <p class="stext-117 cl6">
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget dictum tortor. Donec dictum vitae sapien eu varius
                                    </p>

                                    <div class="flex-w flex-sb-m p-t-18">
                                        <span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
                                            <span>
                                                <span class="cl4">By</span> Admin  
                                                <span class="cl12 m-l-4 m-r-6">|</span>
                                            </span>

                                            <span>
                                                StreetStyle, Fashion, Couple  
                                                <span class="cl12 m-l-4 m-r-6">|</span>
                                            </span>

                                            <span>
                                                8 Comments
                                            </span>
                                        </span>

                                        <a href="blog-detail.html" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10">
                                            Continue Reading

                                            <i class="fa fa-long-arrow-right m-l-9"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <!-- Pagination -->
                            <div class="flex-l-m flex-w w-full p-t-10 m-lr--7">
                                <a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
                                    1
                                </a>

                                <a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
                                    2
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-lg-3 p-b-80">
                        <div class="side-menu">
                            <div class="bor17 of-hidden pos-relative">
                                <input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55" type="text" name="search" placeholder="Search">

                                <button class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </div>

                            <div class="p-t-55">
                                <h4 class="mtext-112 cl2 p-b-33">
                                    Categories
                                </h4>

                                <ul>
                                    <li class="bor18">
                                        <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                            Fashion
                                        </a>
                                    </li>

                                    <li class="bor18">
                                        <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                            Beauty
                                        </a>
                                    </li>

                                    <li class="bor18">
                                        <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                            Street Style
                                        </a>
                                    </li>

                                    <li class="bor18">
                                        <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                            Life Style
                                        </a>
                                    </li>

                                    <li class="bor18">
                                        <a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                                            DIY & Crafts
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="p-t-65">
                                <h4 class="mtext-112 cl2 p-b-33">
                                    Featured Products
                                </h4>

                                <ul>
                                    <li class="flex-w flex-t p-b-30">
                                        <a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
                                            <img src="images/product-min-01.jpg" alt="PRODUCT">
                                        </a>

                                        <div class="size-215 flex-col-t p-t-8">
                                            <a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                                                White Shirt With Pleat Detail Back
                                            </a>

                                            <span class="stext-116 cl6 p-t-20">
                                                $19.00
                                            </span>
                                        </div>
                                    </li>

                                    <li class="flex-w flex-t p-b-30">
                                        <a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
                                            <img src="images/product-min-02.jpg" alt="PRODUCT">
                                        </a>

                                        <div class="size-215 flex-col-t p-t-8">
                                            <a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                                                Converse All Star Hi Black Canvas
                                            </a>

                                            <span class="stext-116 cl6 p-t-20">
                                                $39.00
                                            </span>
                                        </div>
                                    </li>

                                    <li class="flex-w flex-t p-b-30">
                                        <a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
                                            <img src="images/product-min-03.jpg" alt="PRODUCT">
                                        </a>

                                        <div class="size-215 flex-col-t p-t-8">
                                            <a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                                                Nixon Porter Leather Watch In Tan
                                            </a>

                                            <span class="stext-116 cl6 p-t-20">
                                                $17.00
                                            </span>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="p-t-55">
                                <h4 class="mtext-112 cl2 p-b-20">
                                    Archive
                                </h4>

                                <ul>
                                    <li class="p-b-7">
                                        <a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                                            <span>
                                                July 2018
                                            </span>

                                            <span>
                                                (9)
                                            </span>
                                        </a>
                                    </li>

                                    <li class="p-b-7">
                                        <a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                                            <span>
                                                June 2018
                                            </span>

                                            <span>
                                                (39)
                                            </span>
                                        </a>
                                    </li>

                                    <li class="p-b-7">
                                        <a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                                            <span>
                                                May 2018
                                            </span>

                                            <span>
                                                (29)
                                            </span>
                                        </a>
                                    </li>

                                    <li class="p-b-7">
                                        <a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                                            <span>
                                                April  2018
                                            </span>

                                            <span>
                                                (35)
                                            </span>
                                        </a>
                                    </li>

                                    <li class="p-b-7">
                                        <a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                                            <span>
                                                March 2018
                                            </span>

                                            <span>
                                                (22)
                                            </span>
                                        </a>
                                    </li>

                                    <li class="p-b-7">
                                        <a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                                            <span>
                                                February 2018
                                            </span>

                                            <span>
                                                (32)
                                            </span>
                                        </a>
                                    </li>

                                    <li class="p-b-7">
                                        <a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                                            <span>
                                                January 2018
                                            </span>

                                            <span>
                                                (21)
                                            </span>
                                        </a>
                                    </li>

                                    <li class="p-b-7">
                                        <a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                                            <span>
                                                December 2017
                                            </span>

                                            <span>
                                                (26)
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="p-t-50">
                                <h4 class="mtext-112 cl2 p-b-27">
                                    Tags
                                </h4>

                                <div class="flex-w m-r--5">
                                    <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                        Fashion
                                    </a>

                                    <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                        Lifestyle
                                    </a>

                                    <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                        Denim
                                    </a>

                                    <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                        Streetstyle
                                    </a>

                                    <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                                        Crafts
                                    </a>
                                </div>
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
