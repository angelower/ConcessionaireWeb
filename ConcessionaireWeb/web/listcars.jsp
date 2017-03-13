<%-- 
    Document   : newLogin
    Created on : 11/01/2017, 08:56:35 PM
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Busqueda de carro</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <c:if test="${param.error==1}">
        <font color="red">Placa no encontrada. Intentelo de nuevo</font>
        </c:if> 
        <jsp:include page="menu.jsp"></jsp:include>
        <h1 class="container well">Busqueda por placa</h1>
        <div class="container well">
            <form action="ConcessionaireServlet?action=search" method="post">

                <table>
                    <tr>
                        <th>  <label><b>Placa: </b></label> </th>
                        <th> 
                            <input type="text" placeholder="Ingrese placa vehiculo" class="form-control" name="placa" required=""/>
                        </th>
                    </tr>
                <div class="break"></div>
                
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Buscar">
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