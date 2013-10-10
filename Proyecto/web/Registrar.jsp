<%-- 
    Document   : Registrar
    Created on : 27/09/2013, 02:29:52 AM
    Author     : Omar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Registrar.jsp" method="post">
            <table>
                <tr><td> Ingresar Usuario</sd><sd><input type="text" name="usuario"/></tr>
                <tr><td> Ingresar Paterno</sd><sd><input type="text" name="paterno"/></tr>
                <tr><td> Ingresar Materno</sd><sd><input type="text" name="materno"/></tr>
                <tr><td> Ingresar Nombre</sd><sd><input type="text" name="nombre"/></tr>
                    <tr><td> Ingresar DNI</sd><sd><input type="number" name="dni"/></tr>
                        <tr><td> Ingresar Contraseña</sd><sd><input type="password" name="contraseña"/></tr>

            </table>
            <input type="submit" value="Ingresar"/>
        </body>
</html>
