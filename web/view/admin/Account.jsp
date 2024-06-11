<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Account Profile Page</title>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
            />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="view/admin/css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="view/admin/css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="view/admin/css/templatemo-style.css">
    </head>

    <body id="reportsPage">
        <jsp:include page="AdminInclude/AdminHeadInclude.jsp"></jsp:include>
        <c:set var="profile" value="${profile}"/>
        <c:set var="style" value="style='color: black' readonly"/>
        <div class="container mt-5">
            <div class="row tm-content-row">
                <div class="tm-block-col tm-col-avatar">
                    <div class="tm-bg-primary-dark tm-block tm-block-avatar">
                        <h2 class="tm-block-title">Customer Avatar</h2>
                        <div class="tm-avatar-container">
                            <img
                                src="${profile.getAvatar()}"
                                alt="Avatar"
                                class="tm-avatar img-fluid mb-4"
                                />
                        </div>
                    </div>
                </div>
                <div class="tm-block-col tm-col-account-settings">
                    <div class="tm-bg-primary-dark tm-block tm-block-settings">
                        <h2 class="tm-block-title">Customer Profile</h2>
                        <form action="AccountServlet?mode=editCusProfile"  class="tm-signup-form row" method="post">
                            <div class="form-group col-lg-6">
                                <label for="id">ID</label>
                                <input
                                    style="color: black;"
                                    id="id"
                                    name="customer_id"
                                    type="text"
                                    value="${profile.getId()}"
                                    class="form-control validate"
                                    readonly
                                    />
                                <input name="from" type="text" value="account" hidden>
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="name">Name</label>
                                <input
                                    style=""
                                    id="name"
                                    name="customer_name"
                                    type="text"
                                    value="${profile.getName()}"
                                    class="form-control validate"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="gender">Gender</label>
                                <c:set var="gender" value="Male"/>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" value="Male" ${profile.getGender().equalsIgnoreCase(gender)?"checked":""}>
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Male
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" value="Female" ${profile.getGender().equalsIgnoreCase(gender)?"":"checked"}>
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Female
                                    </label>
                                </div>

                            </div>
                            <div class="form-group col-lg-6">
                                <label for="phone">Phone</label>
                                <input
                                    id="phone"
                                    name="customer_phone"
                                    type="tel"
                                    value="${profile.getPhone()}"
                                    class="form-control validate"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="email">Email</label>
                                <input
                                    id="email"
                                    name="customer_email"
                                    type="email"
                                    value="${profile.getEmail()}"
                                    class="form-control validate"
                                    />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="address">Address</label>
                                <textarea
                                    id="address"
                                    name="customer_address"
                                    type="text"
                                    class="form-control validate"
                                    >${profile.getAddress()}</textarea>
                            </div>
                            <div class="form-group col-lg-6">
                                <button
                                    type="submit"
                                    class="btn btn-primary btn-block text-uppercase"
                                    >
                                    Save Change
                                </button>
                            </div>
                            <div class="form-group col-lg-6">
                                <a class="btn btn-primary btn-block text-uppercase" href="AdminServlet?mode=deleteAccount&id=${profile.getId()}">
                                    Delete
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- <div class="tm-bg-primary-dark tm-block tm-block-products"> -->
            <h2 class="tm-block-title">Order History</h2>
            <div class="tm-product-table-container">
                <table class="table table-hover tm-product-table">
                    <thead>
                        <tr>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">Order ID</th>
                            <th scope="col">Total Price</th>
                            <th scope="col">Date</th>
                            <th scope="col">Method</th>
                            <th scope="col">Status</th>
                            <th scope="col">${c.getIsStaff()==1?"Customer ID":"Seller"}</th>
                            <th scope="col">Detail</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="i" value="1"/>
                        <c:forEach items="${orederList}" var="o">
                            <tr>
                                <th scope="row">${i}</th>
                                <td class="tm-product-name">${o.getOrderId()}</td>
                                <td>${o.getStringOrderPrice()}</td>
                                <td>${o.getOrderDate()}</td>
                                <td>${o.getOrderMethod()}</td>
                                <td>${o.getOrderStatus()}</td>
                                <td>${c.getIsStaff()==1?o.getCustomerId():o.getSellerId()}</td>
                                <td>
                                    <a href="AdminServlet?mode=orderDetail&oID=${o.getOrderId()}&cID=${o.getCustomerId()}" class="tm-product-delete-link">
                                        <i class="far fa-edit fa-lg" style="color: #eeeff2;"></i>
                                    </a>
                                </td>
                            </tr>
                            <c:set var="i" value="${i+1}"/>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- table container -->
            <!--  </div> -->
        </div>
        <jsp:include page="AdminInclude/AdminFootInclude.jsp"></jsp:include>
        <script src="View/AdminView/js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="View/AdminView/js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
    </body>
</html>