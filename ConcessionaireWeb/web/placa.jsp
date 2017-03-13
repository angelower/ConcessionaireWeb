<%-- 
    Document   : placa
    Created on : 12/03/2017, 05:24:18 PM
    Author     : decho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Registro de vehículo ${placa}</h1>
        <c:forEach var="a" items="${cars}">
            <c:if test="${placa == a.placa}">
        |${a.placa} |${a.brand}| ${a.color} | ${a.quantity}| ${a.price}|
        <c:forEach var="b" items="${sales}">
                    <c:if test="${placa == b.placa}">
        |${b.billofsale} |${b.buyer}|${b.pricetaxes}
                            <c:forEach var="c" items="${customers}">
                    <c:if test="${b.buyer == c.id}">
        |${c.namess} |${c.city}|${c.phone}|${c.email}
   
                    </c:if>
                            </c:forEach>
                    </c:if>
        </c:forEach>
            </c:if>
    </c:forEach>
    </body>
</html>
