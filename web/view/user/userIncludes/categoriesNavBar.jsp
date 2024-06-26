<%-- 
    Document   : header
    Created on : Apr 22, 2024, 10:22:39 PM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="flex-w flex-sb-m p-b-52">
    <div class="flex-w flex-l-m filter-tope-group m-tb-10">
        <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
            All Products
        </button>
        <c:forEach items="${listCategory}" var="c">
            <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".${c.getId()}">${c.getName()}</button>

        </c:forEach>
    </div>

    <div class="flex-w flex-c-m m-tb-10">
        <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
            <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
            <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
            ${sessionScope.searchValue!=null ? sessionScope.searchValue : "Search"}
        </div>
    </div>

    <!-- Search product -->
    <div class="dis-none panel-search w-full p-t-10 p-b-15">
        <form action="product?mode=filter" method="get">
            <div class="bor8 dis-flex p-l-15">
                <input type="text" name="mode" value="search" hidden>
                <button type="submit" class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                    <i class="zmdi zmdi-search"></i>
                </button>

                <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search_value" placeholder="Search">
            </div>	
        </form>

    </div>
</div>

