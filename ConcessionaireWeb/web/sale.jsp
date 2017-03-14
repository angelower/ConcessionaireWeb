<%-- 
    Document   : newLogin
    Created on : 11/01/2017, 08:56:35 PM
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
         <c:if test="${param.error==1}">
        <font color="red">La placa ingresada no existe en la base de datos</font>
        </c:if> 
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Sistema de ingreso de Ventas</h1>
        <div class="container well">
            <form action="ConcessionaireServlet?action=ventas" method="post">

                <table>
                    <tr>
                        <th>  <label><b>ID Comprador</b></label> </th>
                        <th> 
                            <input type="number" placeholder="ID" class="form-control" name="id" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th> <label><b>Nombre</b></label></th>
                        <th><input type="text" placeholder="Nombre" class="form-control" name="namess"
                                   required=""/> </th>
                    </tr>
                    <tr>
                        <th> <label><b>Ciudad</b></label></th>
                        <th><input type="text" placeholder="Ciudad" class="form-control" name="city"
                                   required=""/> </th>
                    </tr>
                    <tr>
                        <th> <label><b>Telefono</b></label></th>
                        <th><input type="text" placeholder="Telefono" class="form-control" name="phone"
                                   required=""/> </th>
                    </tr>
                    <tr>
                        <th> <label><b>Email</b></label></th>
                        <th><input type="email" placeholder="Email" class="form-control" name="email"
                                   required=""/> </th>
                    </tr>
                     <tr>
                        <th> <label><b>Placa</b></label></th>
                        <th><input type="text" placeholder="Placa" class="form-control" name="placa"
                                   required=""/> </th>
                    </tr>
                    
                      <tr>
                        <th> <label><b>Precio Venta</b></label></th>
                        <th><input type="text" placeholder="Precio Venta" class="form-control" name="pricetaxes"
                                   required=""/> </th>
                    </tr>
                    
                        <tr>
                        <th> <label><b>Número de Factura</b></label></th>
                        <th><input type="number" placeholder="Numero de factura" class="form-control" name="billofsale"
                                   required=""/> </th>
                    </tr>

                    <div class="break"></div>                        
                    </div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Insertar">
                            <span class="glyphicon glyphicon-ok-sign"></span>

                            <!--			<span class="glyphicons glyphicons-user-add img-circle text-success"></span>-->
                            <input class="btn btn-info btn-lg" type="reset" name="action" value="Reset">
                            <span class="glyphicon glyphicon-remove"></span>
                        </td>
                    </tr>
                </table>
            </form>   
            <br>
        </div>
    </body>
</html>