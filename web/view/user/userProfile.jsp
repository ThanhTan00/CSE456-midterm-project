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
        <style>
            body{
                background: #f7f7ff;
                margin-top:20px;
            }
            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 0 solid transparent;
                border-radius: .25rem;
                margin-bottom: 1.5rem;
                box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
            }
            .me-2 {
                margin-right: .5rem!important;
            }
            .custommodal {
                z-index: 9000;
            }

            .rq{
                color: red;
            }

        </style>
    </head>
    <body class="animsition m-0">
        <!-- Header -->
        <header class="header-v4">
            <jsp:include page="userIncludes/header.jsp"></jsp:include>
            </header>
            <!--End Header-->

            <!-- Cart -->
        <jsp:include page="userIncludes/cart.jsp"></jsp:include>
            <!-- End Cart -->

            <!-- Title page -->
            <div class="container m-t-5">
                <div class="main-body">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img src=${profile.getAvatar()} alt="Admin" class="rounded-circle p-1 bg-primary" width="250" height="250">
                                    <div class="mt-3">
                                        <h4>${profile.getName()}</h4>
                                        <p class="text-secondary mb-1">${profile.getEmail()}</p>
                                        <p class="text-secondary mb-1">Standard Member</p>
                                        <form action="account?mode=updateAvatar" class="tm-edit-product-form" method="Post" enctype="multipart/form-data">
                                            <input name="newAvatar" id="fileInput" type="file" style="display: none;" />
                                            <div onclick="document.getElementById('fileInput').click();" class="btn btn-primary pointer">Upload Avatar</div>
                                            <button type="submit" class="btn btn-outline-primary">Save</button>
                                        </form>
                                    </div>
                                </div>
                                <!--                                    <hr class="my-4">
                                                                    <ul class="list-group list-group-flush">
                                                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe me-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                                                                            <span class="text-secondary">https://bootdey.com</span>
                                                                        </li>
                                                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github me-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                                                                            <span class="text-secondary">bootdey</span>
                                                                        </li>
                                                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter me-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                                                                            <span class="text-secondary">@bootdey</span>
                                                                        </li>
                                                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram me-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                                                                            <span class="text-secondary">bootdey</span>
                                                                        </li>
                                                                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                                                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook me-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                                                                            <span class="text-secondary">bootdey</span>
                                                                        </li>
                                                                    </ul>-->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <!--                                            <input type="text" class="form-control" value="John Doe">-->
                                        ${profile.getName()}
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <!--                                            <input type="text" class="form-control" value="John Doe">-->
                                        ${profile.getEmail()}
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <!--                                            <input type="text" class="form-control" value="john@example.com">-->
                                        ${profile.getGender()}
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <!--                                            <input type="text" class="form-control" value="(239) 816-9029">-->
                                        ${profile.getPhone()}
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <p>${profile.getAddress()}</p>
                                    </div>
                                </div>
                                <div class="row justify-content-around">

                                    <div class="text-secondary">
                                        <!--                                            <input type="button" class="btn btn-primary px-4" value="Save Changes">-->
                                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#editProfileModal">CHANGE MY PROFILE</button>
                                    </div>
                                    <div class="text-secondary">
                                        <!--                                            <input type="button" class="btn btn-primary px-4" value="Save Changes">-->
                                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#editPasswordModal">CHANGE MY PASSWORD</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="d-flex align-items-center mb-3">Order History</h5>
                                        <table class="table table-info table-striped table-hover">
                                            <thead>
                                                <tr>
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Order Date</th>
                                                    <th scope="col">Total bill</th>
                                                    <th scope="col">Current Status</th>
                                                    <th scope="col">View Details</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:set var="i" value="1"/>
                                                <c:forEach items="${listO}" var="o">
                                                    <tr>
                                                        <th scope="row">${i}</th>
                                                        <td>${o.getOrderDate()}</td>
                                                        <td>${o.getFormatedPrice()}</td>
                                                        <td>${o.getOrderStatus()}</td>
                                                        <td><button type="button" class="btn btn-dark">Details</button></td>
                                                    </tr>
                                                    <c:set var="i" value="${i+1}"/>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                     
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade custommodal" id="editPasswordModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form id="changePassword-form" action="account?mode=changePassword" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="text" class="form-control" name="id" value="${profile.getId()}" readonly hidden>
                                <label for="currenPass" class="col-form-label">Current Password:</label>
                                <input type="password" class="form-control" name="currentPass" id="currenPass">
                                <div id="err_currentPass"></div>
                            </div>
                            <div class="form-group">
                                <label for="newPass" class="col-form-label">New Password:</label>
                                <input type="password" class="form-control" name="newPass" id="newPass">
                            </div>

                            <div class="form-group">
                                <label for="confirmPass" class="col-form-label">Confirm New Password:</label>
                                <input type="password" rows="3" class="form-control" name="confirmPass" id="confirmPass">
                                <div id="err_newPass"></div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <a style="color: white" onclick="handleChangePassword()" type="button" class="btn btn-primary pointer">Save</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade custommodal" id="editProfileModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="account?mode=updateProfile" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Update Profile</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="text" class="form-control" name="id" value="${profile.getId()}" readonly hidden>
                                <label for="name" class="col-form-label">Name:</label>
                                <input type="text" class="form-control" name="name" id="name" value="${profile.getName()}">
                            </div>
                            <div class="d-flex justify-content-between">
                                <label class="col-form-label">Gender:</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="Male" value="Male" ${profile.getGender().equalsIgnoreCase("male")?"checked":""}>
                                    <label class="form-check-label" for="Male">
                                        Male
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="Female" value="Female" ${profile.getGender().equalsIgnoreCase("female")?"checked":""}>
                                    <label class="form-check-label" for="Female">
                                        Female
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="Other" value="Other" ${profile.getGender().equalsIgnoreCase("other")?"checked":""}>
                                    <label class="form-check-label" for="Other">
                                        Other
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="phone" class="col-form-label">Phone:</label>
                                <input type="text" class="form-control" name="phone" id="phone" value="${profile.getPhone()}">
                            </div>

                            <div class="form-group">
                                <label for="address" class="col-form-label">Address:</label>
                                <textarea type="text" rows="3" class="form-control" name="address" id="address">${profile.getAddress()}</textarea>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Update Profile</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <jsp:include page="userIncludes/footer.jsp"></jsp:include>
            <!-- End Footer -->

            <!--============================================== Script =================================================-->
            <script src="asset/vendor/jquery/jquery-3.2.1.min.js"></script>
            <script>
                                function handleChangePassword() {
                                    let currentPass = document.getElementById("currenPass").value;
                                    let newPass = document.getElementById("newPass").value;
                                    let confirmPass = document.getElementById("confirmPass").value;
                                    if (currentPass.localeCompare("${account.getPassword()}") != 0) {
                                        error = "Wrong current passord!";
                                        document.getElementById("err_currentPass").innerHTML = "<span class='rq'>" + error + "</span>";
                                        return;
                                    }
                                    if (newPass.localeCompare(confirmPass) === 1) {
                                        error = "Your confirm password is not matched!";
                                        document.getElementById("err_newPass").innerHTML = "<span class='rq'>" + error + "</span>";
                                        return;
                                    }
                                    my_form = document.getElementById("changePassword-form");
                                    my_form.submit();

                                }
        </script>

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
