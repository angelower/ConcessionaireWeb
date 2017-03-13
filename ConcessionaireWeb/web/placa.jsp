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
        <title>.:. Vehículo .:.</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1 class="container well">Registro de vehículo ${placa}</h1>
        
        <c:forEach var="a" items="${cars}">
            <c:if test="${placa == a.placa}">
                <br>
           
         <div class="container well">
    <table  border="1" style="width: 70%" class="table table-striped table-bordered table-hover table-condensed" align="center">
        <tr>
            <th>PLACA</th> 
            <th>MARCA</th> 
            <th>COLOR</th> 
            <th>PRECIO</th>
            <th>IMAGEN</th>
        </tr>
        <tr>
            <th>${a.placa}</th> 
            <th>${a.brand}</th> 
            <th>${a.color}</th> 
            <th>${a.price}</th>
            <th><img src="${a.image}" height="100" width="160"></th>
        </tr>
    </table>

               
  <table   border="1" style="width: 70%" class="table table-striped table-bordered table-hover table-condensed" align="center">
  
        <tr> <th colspan="7" align="center" >INFOMACIÓN DEL COMPRADOR</th></tr>
        <tr>
            <th >FACTURA DE VENTA</th> 
            <th>ID</th> 
            <th>VALOR</th> 
            <th>COMPRADOR</th> 
            <th>CIUDAD</th>
            <th>TELÉFONO</th>
            <th>E-MAIL</th>
        </tr>
        <tr>
        <c:forEach var="b" items="${sales}">
        <c:if test="${placa == b.placa}">
            <th>${b.billofsale} </th>
            <th>${b.buyer}</th>
            <th>${b.pricetaxes}</th>
        <c:forEach var="c" items="${customers}">
        <c:if test="${b.buyer == c.id}">
            <th>${c.namess}</th>
            <th>${c.city}</th>
            <th>${c.phone}</th>
            <th>${c.email}</th>
        </c:if>
         </c:forEach>
           </c:if>
        </c:forEach>
        </tr>
        </table>
           </div>
            </c:if>
    </c:forEach>
    </body>
</html>
