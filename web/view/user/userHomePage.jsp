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
        <title>Tan's Shoes Store | Home Page</title>
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

            <!-- Slider -->
            <section class="section-slide">
                <div class="wrap-slick1">
                    <div class="slick1">
                        <div class="item-slick1" style="background-image: url(images/other/slider-1.jpg);">
                            <div class="container h-full">
                                <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                                    <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
                                        <span class="ltext-101 cl0 respon2">
                                            Welcome to our website
                                        </span>
                                    </div>

                                    <div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
                                        <h2 class="ltext-201 cl0 p-t-19 p-b-43 respon1">
                                            TAN'SHOES
                                        </h2>
                                    </div>
                                    <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
                                        <span class="ltext-101 cl0 respon2">
                                            the heaven of shoes lovers
                                        </span>
                                    </div>

                                    <!--                                    <div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
                                                                            <a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                                                                Shop Now
                                                                            </a>
                                                                        </div>-->
                                </div>
                            </div>
                        </div>

                        <div class="item-slick1" style="background-image: url(images/other/slider-2.jpg);">
                            <div class="container h-full">
                                <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                                    <div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
                                        <span class="ltext-101 cl0 respon2">
                                            New Arrivals
                                        </span>
                                    </div>

                                    <div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
                                        <h2 class="ltext-201 cl0 p-t-19 p-b-43 respon1">
                                            Sneakers and Sandals
                                        </h2>
                                    </div>

                                    <div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
                                        <a href="navigate?target=shop" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                            Shop Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item-slick1" style="background-image: url(images/other/slider-3.jpg);">
                            <div class="container h-full">
                                <div style="" class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                                    <div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
                                        <span class="ltext-101 cl0 respon2">
                                            Read our latest
                                        </span>
                                    </div>

                                    <div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
                                        <h2 class="ltext-201 cl0 p-t-19 p-b-43 respon1">
                                            blog posts
                                        </h2>
                                    </div>

                                    <div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
                                        <a href="navigate?target=blog" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                            visit
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!-- Banner -->
            <div class="sec-banner bg0 p-t-80 p-b-50">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                            <!-- Block1 -->
                            <div class="block1 wrap-pic-w">
                                <img src="images/banner-01.jpg" alt="IMG-BANNER">

                                <a href="product.html" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                                    <div class="block1-txt-child1 flex-col-l">
                                        <span class="block1-name ltext-102 trans-04 p-b-8">
                                            Women
                                        </span>

                                        <span class="block1-info stext-102 trans-04">
                                            Spring 2018
                                        </span>
                                    </div>

                                    <div class="block1-txt-child2 p-b-4 trans-05">
                                        <div class="block1-link stext-101 cl0 trans-09">
                                            Shop Now
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                            <!-- Block1 -->
                            <div class="block1 wrap-pic-w">
                                <img src="images/banner-02.jpg" alt="IMG-BANNER">

                                <a href="product.html" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                                    <div class="block1-txt-child1 flex-col-l">
                                        <span class="block1-name ltext-102 trans-04 p-b-8">
                                            Men
                                        </span>

                                        <span class="block1-info stext-102 trans-04">
                                            Spring 2018
                                        </span>
                                    </div>

                                    <div class="block1-txt-child2 p-b-4 trans-05">
                                        <div class="block1-link stext-101 cl0 trans-09">
                                            Shop Now
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                            <!-- Block1 -->
                            <div class="block1 wrap-pic-w">
                                <img src="images/banner-03.jpg" alt="IMG-BANNER">

                                <a href="product.html" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                                    <div class="block1-txt-child1 flex-col-l">
                                        <span class="block1-name ltext-102 trans-04 p-b-8">
                                            Accessories
                                        </span>

                                        <span class="block1-info stext-102 trans-04">
                                            New Trend
                                        </span>
                                    </div>

                                    <div class="block1-txt-child2 p-b-4 trans-05">
                                        <div class="block1-link stext-101 cl0 trans-09">
                                            Shop Now
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Product -->
            <section class="bg0 p-t-23 p-b-140">
                <div class="container">
                    <div class="p-b-10">
                        <h3 class="ltext-103 cl5">
                            Latest Arrivals
                        </h3>
                    </div>
                <jsp:include page="userIncludes/categoriesNavBar.jsp"></jsp:include>

                    <div class="row isotope-grid">
                    <c:forEach items="${listProduct}" var="p">
                        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${p.getCategory()}">
                            <!-- Block2 -->
                            <div class="block2">
                                <div class="block2-pic hov-img0">
                                    <img style="height: 350px;" class="img-fluid" src="${p.getImage()}" alt="IMG-PRODUCT">

                                    <a href="product?mode=detail&id=${p.getId()}" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
                                        View Details
                                    </a>
                                </div>

                                <div class="block2-txt flex-w flex-t p-t-14">
                                    <div class="block2-txt-child1 flex-col-l ">
                                        <a href="product?mode=detail&id=${p.getId()}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                            ${p.getName()}
                                        </a>

                                        <span class="stext-105 cl3">
                                            ${p.getFormatedPrice()}
                                        </span>
                                    </div>

                                    <div class="block2-txt-child2 flex-r p-t-3">
                                        <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                                            <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON">
                                            <img class="icon-heart2 dis-block trans-04 ab-t-l" src="images/icons/icon-heart-02.png" alt="ICON">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <!-- Load more -->
                <div class="flex-c-m flex-w w-full p-t-45">
                    <a href="navigate?target=shop" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                        Load More
                    </a>
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
