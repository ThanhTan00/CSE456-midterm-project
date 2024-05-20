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
        <title>Tan's Shoes Store | Registration</title>
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
        <style rel="stylesheet" type="text/css">
            .form-check-input {
                margin-left: 0px;
            }
            .gradient-custom {
                /* fallback for old browsers */
                background: #f093fb;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1));

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: #717fe0;
            }

            .card-registration .select-input.form-control[readonly]:not([disabled]) {
                font-size: 1rem;
                line-height: 2.15;
                padding-left: .75em;
                padding-right: .75em;
            }
            .card-registration .select-arrow {
                top: 13px;
            }
        </style>

    </head>
    <body>    
        <section class="h-100 gradient-custom mb-3">
            <div class="container py-3 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <img style="width: 30px" class="img-fluid" src="images/icons/favicon.png" alt="IMG-LOGO">
                                <strong><span style="color: #747474">TAN'</span><span style="color: #444444">S</span><span style="color: black">HOES</span></strong>
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Register your own account</h3>
                                <form>

                                    <div class="row">
                                        <div class="col-md mb-4">

                                            <div data-mdb-input-init class="form-outline">
                                                <input type="text" id="name" name="name" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="name">Full Name</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div data-mdb-input-init class="form-outline">
                                                <input type="email" id="email" name="email" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="email">Email</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div data-mdb-input-init class="form-outline">
                                                <input type="tel" id="phone" name="phone" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="phone">Phone Number</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div data-mdb-input-init class="form-outline">
                                                <input type="password" id="password" name="password" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="password">Password</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div data-mdb-input-init class="form-outline">
                                                <input type="password" id="conifrmPass" name="conifrmPass" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="conifrmPass">Confirm Password</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4 d-flex align-items-center">

                                            <div data-mdb-input-init class="form-outline datepicker w-100">
                                                <textarea rows="3" type="text" class="form-control form-control-lg" id="address" name="address" required></textarea
                                                <label for="address" class="form-label">Address</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <h6 class="mb-2 pb-1">Gender: </h6>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                                                       value="female" checked />
                                                <label class="form-check-label" for="femaleGender">Female</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" id="maleGender"
                                                       value="male" />
                                                <label class="form-check-label" for="maleGender">Male</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" id="otherGender"
                                                       value="other" />
                                                <label class="form-check-label" for="otherGender">Other</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="d-flex justify-content-center">
                                        <input data-mdb-ripple-init class="btn btn-success btn-lg mr-1" type="submit" value="Submit" />

                                        <a href="start" data-mdb-ripple-init type="button" class="btn btn-outline-secondary btn-lg ml-1">Cancel</a>

                                    </div>


                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
