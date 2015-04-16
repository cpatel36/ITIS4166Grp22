<%-- 
    Document   : orderlist
    Created on : Mar 30, 2015, 6:53:07 PM
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kitten Korner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/4166_Assignment_2/styles/main.css" type="text/css"/>
        <script type="text/javascript" src="/4166_Assignment_2/main.js">
        </script>
    </head>
    <body>
        <%@ include file="../include/header.jsp" %>
        <%@ include file="../include/user-navigation.jsp" %>
        <div id="pageContent"></div>
        <%@ include file="../include/site-navigation.jsp" %>
            <div id="main">
                <div class="breadCrumb">
                    <a class="breadCrumbLink" href="/4166_Assignment_2/index.jsp">Home</a>
                    >
                    <a class="breadCrumbLink" href="orderlist.jsp">My Orders</a>
                </div>
                <table>
                    <tr>
                        <td>
                            <h2>Order Number</h2>
                        </td>
                        <td>
                            <h2>Customer</h2>
                        </td>
                        <td>
                            <h2>Order Date</h2>
                        </td>
                        <td>
                            <h2>Total</h2>
                        </td>
                    </tr>
                        <c:forEach items="${sessionScope.userOrders}" var="curOrder">
                        <tr>
                            <td>
                                <a class="blueLink" href="/order?action=ordnum&num=${curOrder.getOrderNumber()}">${curOrder.getOrderNumber()}</a> <!--This needs to be a link to the or the orders page for the item, same as catalog-->
                            </td>
                            <td>
                                ${curOrder.getUser().getEmailAddress()}
                            </td>
                            <td>
                                ${curOrder.getDate()}
                            </td>
                            <td>
                                <fmt:formatNumber value="${curOrder.getTotalCost()}" type="currency"/>
                            </td>  
                        </tr>
                        </c:forEach>
                </table>
            </div>
        <%@ include file="../include/footer.jsp" %>
    </body>
</html>
