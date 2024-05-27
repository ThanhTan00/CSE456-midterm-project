<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Cart -->
<div class="wrap-header-cart js-panel-cart">
    <div class="s-full js-hide-cart"></div>

    <div class="header-cart flex-col-l p-l-65 p-r-25">
        <div class="header-cart-title flex-w flex-sb-m p-b-8">
            <span class="mtext-103 cl2">
                Your Cart
            </span>

            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
                <i class="zmdi zmdi-close"></i>
            </div>
        </div>

        <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">
                <c:forEach items="${cart.items}" var="i">
                    <li class="header-cart-item flex-w flex-t m-b-12">
                        <div class="header-cart-item-img">
                            <img src="${i.getProduct().getImage()}" alt="IMG">
                        </div>

                        <div class="header-cart-item-txt p-t-8">
                            <a href="product?mode=detail&id=${i.getProduct().getId()}" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                                ${i.getProduct().getName()}
                            </a>
                            
                            <span class="header-cart-item-info">
                                Size ${i.getSize()}
                            </span>

                            <span class="header-cart-item-info">
                                ${i.getQuantity()} * ${i.getProduct().getFormatedPrice()}
                            </span>
                        </div>
                    </li>
                </c:forEach>

            </ul>

            <div class="w-full">
                <div class="header-cart-total w-full">
                    Products : ${cart.getTotalQuantity()}
                </div>
                <div class="header-cart-total w-full p-tb-40">
                    Total : ${cart.getFormatedTotalPrice(cart.getTotalMoney())}
                </div>

                <div class="header-cart-buttons flex-w w-full">
                    <a href="navigate?target=cart" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
                        View Cart
                    </a>

                    <a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
                        Check Out
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>