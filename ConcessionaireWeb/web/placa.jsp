<%-- 
    Document   : placa
    Created on : 12/03/2017, 05:24:18 PM
    Author     : decho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        |${a.placa} |${a.brand}| ${a.color} | ${a.quantity}|
        <a onclick="return confirm('Esta seguro?')"
           href="ConcessionaireServlet?action=delete&id=${a.placa}">Delete</a>
        <hr/>
    </c:forEach>
    </body>
</html>
