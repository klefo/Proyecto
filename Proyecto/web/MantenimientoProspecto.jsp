<%-- 
    Document   : Default
    Created on : May 24, 2013, 6:26:57 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM Instituto Benedicto XVI</title>
        <link rel="stylesheet" href="Estilos/Estilos.css" />
        <script>
            function Salir() {
                window.location = "Default.jsp";
                return false;
            }
        </script>
    </head>
    <body>
        <div name="page" class="page">
            <form name="form1" action="" method="POST" >
                </br>
                <%@include file="/Menu.jsp" %>
                <h1>Mantenimiento Prospectos</h1>
                <form method="post" name="contact" action="#">
                    <table class="stlPanelBusqueda">
                        <tr>
                            <td style=" width:120px;">
                                <label for="author">Nombres:</label></td><td><input type="text" id="author" name="author"/>
                            </td>
                        </tr>
                        <tr>
                            <td style=" width:120px;">
                                <label for="author">Apellido Paterno:</label></td><td><input type="text" id="author" name="author"  />
                            </td>
                        </tr>
                        <tr>
                            <td style=" width:120px;">
                                <label for="author">Apellido Materno:</label></td><td><input type="text" id="author" name="author" />
                            </td>
                        </tr>
                        <tr>
                            <td style=" width:120px;">
                                <label for="email">Email:</label></td><td><input type="text" id="email" name="email" />
                            </td>
                        </tr>
                        <tr>
                            <td style=" width:120px;">
                                <label for="phone">Telefono:</label></td><td><input type="text" name="phone" id="phone" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style=" text-align: right;">

                            </td>
                        </tr>

                    </table>
    <p></p>
    <div class="stlLinea" ></div>
    <p style=" text-align: right;">
         <input type="submit" class="stlbutton" name="submit" id="submit" value="Enviar" />
         <input type="reset" class="stlbutton" name="reset" id="reset" value="Limpiar" />
         <input name="btnSalir" type="button" value="Salir" class="stlbutton" onclick="Salir();" />
    </p>
   </form>
  </div>
 </body>
</html>
