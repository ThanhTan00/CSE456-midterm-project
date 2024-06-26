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
        <title>Tan's Shoes Store | Product Detail</title>
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
        <style>
            .stars {
                width: fit-content;
                position: relative;
                white-space: nowrap;
            }
            .stars svg {
                width: 30px;
            }

            .overlay {
                background: #fff;
                height: 100%;
                overflow: hidden;
                mix-blend-mode: color;
                position: absolute;
                top: 0;
                right: 0;
            }

            svg {
                height: 30%;
                fill: gold;
            }
        </style>
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
            <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-product-detail.jpg');">
                <h2 class="ltext-105 cl0 txt-center">
                    Product Detail
                </h2>
            </section>	
            <div class="container">
                <div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
                    <div class="row">
                        <div class="col-md-6 col-lg-7 p-b-30">
                            <div class="p-l-25 p-r-30 p-lr-0-lg">
                                <div class="wrap-slick3 flex-sb flex-w">
                                    <div class="wrap-slick3-dots"></div>
                                    <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                                    <div class="slick3 gallery-lb">
                                        <div class="item-slick3" data-thumb="${product.getImage()}">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="${product.getImage()}" alt="IMG-PRODUCT">

                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="${product.getImage()}">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="item-slick3" data-thumb="${product.getImage()}">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="${product.getImage()}" alt="IMG-PRODUCT">

                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="${product.getImage()}">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="item-slick3" data-thumb="${product.getImage()}">
                                        <div class="wrap-pic-w pos-relative">
                                            <img src="${product.getImage()}" alt="IMG-PRODUCT">

                                            <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="${product.getImage()}">
                                                <i class="fa fa-expand"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-5 p-b-30">
                        <div class="p-r-50 p-t-5 p-lr-0-lg">
                            <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                                ${product.getName()}
                            </h4>

                            <span class="mtext-106 cl2">
                                ${product.getFormatedPrice()}
                            </span>

                            <p class="stext-102 cl3 p-t-23">
                                ${product.getDescription()}
                            </p>
                            <p class="mtext-106 cl2 mt-3 pb-1">Customer's Feedback:</p>
                            <div class="stars">
                                <svg width="100" height="100" viewBox="0 0 940.688 940.688">
                                <path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
                                </svg>
                                <svg width="100" height="100" viewBox="0 0 940.688 940.688">
                                <path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
                                </svg>
                                <svg width="100" height="100" viewBox="0 0 940.688 940.688">
                                <path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
                                </svg>
                                <svg width="100" height="100" viewBox="0 0 940.688 940.688">
                                <path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
                                </svg>
                                <svg width="100" height="100" viewBox="0 0 940.688 940.688">
                                <path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
                                </svg>
                                <div class="overlay"></div>
                            </div>

                            <!--  -->
                            <form id="add-to-card-form" action="cart?mode=add" method="post">

                                <div class="p-t-33">
                                    <div class="flex-w flex-r-m p-b-10">
                                        <div class="size-203 flex-c-m respon6">
                                            Size
                                        </div>
                                        <div class="size-204 respon6-next">
                                            <div class="rs1-select2 bor8 bg0">
                                                <select onchange="displayQuantity()" id="size" class="js-select2" name="size" required>
                                                    <option value="">Please choose your size...</option>
                                                    <c:forEach items="${product.getListSize()}" var="s">
                                                        <option value="${s.getSize()}">Size ${s.getSize()}</option>
                                                    </c:forEach>
                                                </select>
                                                <div class="dropDownSelect2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="flex-w flex-r-m p-b-10">
                                        <div class="size-203 flex-c-m respon6">
                                            Available:
                                        </div>
                                        <div class="size-204 respon6-next">
                                            <p id="size_quantity"></p>
                                        </div>
                                    </div>


                                    <div class="flex-w flex-r-m p-b-10">
                                        <div class="size-204 flex-w flex-m respon6-next">
                                            <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                                                <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                                    <i class="fs-16 zmdi zmdi-minus"></i>
                                                </div>

                                                <input type="text" name="mode" value="add" hidden/>
                                                <input type="text" name="pid" value="${product.getId()}" hidden/>
                                                <input id="input_quantity" class="mtext-104 cl3 txt-center num-product" type="number" name="quantity" value="1">

                                                <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                                    <i class="fs-16 zmdi zmdi-plus"></i>
                                                </div>
                                            </div>

                                                <button type="button" onclick="handleAddCart()" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                                Add to cart
                                            </button>
                                                <p id="alert_soldout" style="color: red"></p>
                                        </div>


                                    </div>	
                                </div>
                            </form>

                            <!--  -->
                            <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                                <div class="flex-m bor9 p-r-10 m-r-11">
                                    <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
                                        <i class="zmdi zmdi-favorite"></i>
                                    </a>
                                </div>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>

                                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



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
                                                document.querySelector('.overlay').style.width = `${100 - product.getFeedback()}%`;
                                                console.log(${100 - product.getFeedback()});
        </script>
        <script>
            function displayQuantity() {
                let place = document.getElementById("size_quantity");
                let size = $("#size").val();
                console.log(size);
                if (size ==  "") {
                    place.innerHTML = "";
                } else
                if (size == 37) {
                    place.innerHTML = ${product.getSizeQuantity(37)};
                } else
                if (size == 38) {
                    place.innerHTML = ${product.getSizeQuantity(38)};
                } else
                if (size == 39) {
                    place.innerHTML = ${product.getSizeQuantity(39)};
                } else
                if (size == 40) {
                    place.innerHTML = ${product.getSizeQuantity(40)};
                } else
                if (size == 41) {
                    place.innerHTML = ${product.getSizeQuantity(41)};
                } else
                if (size == 42) {
                    place.innerHTML = ${product.getSizeQuantity(42)};
                } else
                if (size == 43) {
                    place.innerHTML = ${product.getSizeQuantity(43)};
                }
            }
            
            function handleAddCart() {
                let available = document.getElementById("size_quantity").innerHTML;
                let buy_quantity = $("#input_quantity").val();
                if (available == ""){
                    document.getElementById("alert_soldout").innerHTML = "Please choose your size before add to cart!";
                } else if (available == 0) {
                    document.getElementById("alert_soldout").innerHTML = "The size is sold out! Please choose another size or comeback later!";
                } else if (buy_quantity > available) {
                    document.getElementById("alert_soldout").innerHTML = "Your number of product is out of our available range!";
                } else {
                    let my_form = document.getElementById("add-to-card-form");
                    my_form.submit();
                }
            }

        </script>
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
