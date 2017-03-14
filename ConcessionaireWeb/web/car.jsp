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
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Sistema de ingreso de Vehiculos</h1>
        <div class="container well">
            <form action="ConcessionaireServlet?action=insert" enctype="multipart/mixed-stream" method="post">

                <table>
                    <tr>
                        <th>  <label><b>Placa</b></label> </th>
                        <th> 
                            <input type="text" placeholder="Placa" class="form-control" name="placa" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th> <label><b>Marca</b></label></th>
                        <th><input type="text" placeholder="Marca" class="form-control" name="brand"
                                   required=""/> </th>
                    </tr>
                    <tr>
                        <th> <label><b>Modelo</b></label></th>
                        <th><input type="text" placeholder="Modelo" class="form-control" name="model"
                                   required=""/> </th>
                    </tr>
                    <tr>
                        <th> <label><b>Color</b></label></th>
                        <th><input type="text" placeholder="Color" class="form-control" name="color"
                                   required=""/> </th>
                    </tr>
                    <tr>
                        <th> <label><b>Imagen</b></label></th>
                        <th>
                           <input class="form-control" type="file" name="image" id="image" required=""/>
                    </tr>
                     <tr>
                        <th> <label><b>Costo</b></label></th>
                        <th><input type="number" placeholder="Costo" class="form-control" name="price"
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
