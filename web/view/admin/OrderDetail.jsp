<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Order Detail</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="view/admin/css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="view/admin/jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="view/admin/css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="view/admin/css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body>
    <jsp:include page="AdminInclude/AdminHeadInclude.jsp"></jsp:include>
     <c:set var="profile" value="${profile}"/>
     <c:set var="order" value="${order}"/>
     <div style="height: 1000px;" class="container mt-5">
            <h2 class="tm-block-title">ORDER DETAIL</h2>
            <div class="col-lg-12 col-lg-12" style="background-color: rgb(67, 92, 112); padding-top: 30px; padding-bottom: 30px; padding-left: 50px; padding-right: 50px;">
                        <div class="row tm-content-row">
                            <div class="tm-block-col tm-col-avatar">
                                <h2 class="tm-block-title">Customer Info</h2>
                                <form action="AdminServlet?mode=createConfirm" class="tm-edit-product-form" method="post" enctype="multipart/form-data">
                                <div class="row tm-edit-product-row">
                                  <div class="col-xl-12 col-lg-12">

                                      <div class="form-group mb-3">
                                        <label
                                          for="name"
                                          >Name:
                                        </label>
                                        <input
                                          style="color: black;"
                                          id="name"
                                          name="name"
                                          type="text"
                                          class="form-control validate"
                                          readonly
                                          value="${profile.getName()}"
                                        />
                                      </div>
                                      <div class="form-group mb-3">
                                        <label
                                          for="phone"
                                          >Phone:
                                        </label>
                                        <input
                                          style="color: black;"
                                          id="phone"
                                          name="phone"
                                          type="text"
                                          class="form-control validate"
                                          readonly
                                          value="${profile.getPhone()}"
                                        />
                                      </div>
                                      <div class="form-group mb-3">
                                        <label
                                          for="email"
                                          >Email:
                                        </label>
                                        <input
                                          style="color: black;"
                                          id="email"
                                          name="email"
                                          type="email"
                                          class="form-control validate"
                                          readonly
                                          value="${profile.getEmail()}"
                                        />
                                      </div>
                                      <div class="form-group mb-3">
                                        <label
                                          for="address"
                                          >Address:</label
                                        >
                                        <textarea
                                          style="color: black;"
                                          class="form-control validate"
                                          id="address"
                                          rows="5"
                                          name="${profile.getAddress()}"
                                          readonly
                                        >Binh Duong</textarea>
                                      </div>
                                  </div>
                               </div>
                            </form>
                            <a
                                href="AdminServlet?mode=ceateAccount"
                                class="btn btn-primary btn-block text-uppercase mb-3">Delete Order</a>
                            </div>
                            <div class="tm-block-col tm-col-account-settings">
                                <h2 class="tm-block-title">Order Info</h2>
                                <form action="AdminServlet?mode=updateStatus" class="tm-edit-product-form" method="post" enctype="multipart/form-data">
                                    <div class="form-group mb-3">
                                        <div class="d-flex justify-content-around">
                                            <div class="form-group col-lg-6">
                                                <label for="order_id">Order ID</label>
                                                <input
                                                  style="color: black;"
                                                  id="order_id"
                                                  name="order_id"
                                                  type="text"
                                                  value="${order.getId()}"
                                                  class="form-control validate"
                                                  readonly
                                                />
                                              </div>
                                              <div class="form-group col-lg-6">
                                                <label for="date">Order Date</label>
                                                <input
                                                  style="color: black;"
                                                  id="date"
                                                  name="date"
                                                  type="text"
                                                  readonly
                                                  value="${order.getOrderDate()}"
                                                  class="form-control validate"
                                                />
                                              </div>                                            
                                        </div>
                                        <div class="d-flex justify-content-around">
                                            <div class="form-group col-lg-6">
                                                 <label for="status">Status</label>
                                                <select
                                                    style="color: white;"
                                                    class="custom-select tm-select-accounts"
                                                    id="status"
                                                    name="status"
                                                  >
                                                      <option value="waiting" ${order.getOrderStatus().equals("waiting")?"selected=`selected`":""}>waiting</option>
                                                      <option value="confirmed" ${order.getOrderStatus().equals("confirmed")?"selected=`selected`":""}>confirmed</option>
                                                      <option value="delivering" ${order.getOrderStatus().equals("delivering")?"selected=`selected`":""}>delivering</option>
                                                      <option value="completed" ${order.getOrderStatus().equals("completed")?"selected=`selected`":""}>completed</option>
                                                  </select>
                                              </div>
                                              <div class="form-group col-lg-6">
                                                <label for="name">Update Status</label>
                                                <input class="btn btn-primary btn-block text-uppercase mb-3" type="submit" value="Save Change">
<!--                                                <a
                                                    href="AdminServlet?mode=updateOrder&"
                                                    class="btn btn-primary btn-block text-uppercase mb-3">Save Change</a>-->
                                              </div>
                                        </div>
                                    </div>
                                              
                                <table class="table table-hover tm-product-table">
                                <thead>
                                  <tr>
                                    <th scope="col">Image</th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Size</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Price</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${cart.getItems()}" var="item">
                                  <tr>
                                    <td>${item.getProduct().getName()}</td>
                                    <td><img width="40px" src="${item.getProduct().getImage()}"></td>
                                    <th scope="row">${item.getSize()}</th>
                                    <td>${item.getQuantity()}</td>
                                    
                                    <td>
                                      ${item.getFormatedItemPrice()}
                                    </td>
                                  </tr>
                                  </c:forEach>
                                  <tr>
                                      <td colspan="2">Total Quantity:  ${cart.getTotalQuantity()}</td>
                                      <td colspan="3">Total Price: $ ${cart.getFormatedTotalPrice(cart.getTotalMoney()+45000)}</td>
                                  </tr>
                                </tbody>
                              </table>
                             </form>
                            </div>
                          </div>
                    <!-- table container -->
                </div>
            </div>
    <jsp:include page="AdminInclude/AdminFootInclude.jsp"></jsp:include>
    <script src="view/admin/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="view/admin/jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="view/admin/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $("#expire_date").datepicker();
      });
    </script>
  </body>
</html>
