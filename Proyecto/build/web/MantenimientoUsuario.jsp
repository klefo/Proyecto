<%-- 
    Document   : MantenimientoUsuario
    Created on : 21/05/2013, 11:50:27 AM
    Author     : Richard Chavez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INGRESAR DATOS DE USUARIO</title>
        <style>

        </style>
        <link rel="stylesheet" href="rcr_css/css/smoothness/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="Estilos/Estilos.css" />
    </script>

</head>
<script>
    $(function() {
        $( "#datepicker" ).datepicker({
            showOn: "button",
            buttonImage: "images/calendar.gif",
            buttonImageOnly: true
        });
    });
</script>
<script>
    $(function() {
        $( "input[type=submit], a, button" )
        .button()
        .click(function( event ) {
            event.preventDefault();
        });
    });
</script>
</head>

<div align="center">
    <body>
        <div name="page" class="page">
            <form name="frmManUsuario" action="" method="POST">
                <%@include file="/Menu.jsp" %>
                <p></p>
                INGRESAR DATOS DE USUARIO
                <table class="stlPanelBusqueda" >
                    <tbody>
                        <tr>
                            <td>DNI - Identificacion</td>
                            <td><input type="text" name="txtdni" value="" /></td>
                            <td colspan="2" rowspan="2" align="center">VALIDACION DE USUARIO</td>
                        </tr>
                        <tr>
                            <td>Nombre</td>
                            <td><input type="text" name="txtnombre" value="" /></td>
                        </tr>
                        <tr>
                            <td>Apellido Paterno</td>
                            <td><input type="text" name="txtapepaterno" value="" /></td>
                            <td>Usuario</td>
                            <td><input type="text" name="txtusr" value="" /></td>                     
                        </tr>
                        <tr>
                            <td>Apellido Materno</td>
                            <td><input type="text" name="txtapmaterno" value="" /></td>
                            <td>Contraseña</td>
                            <td><input type="text" name="txtpsw" value="" /></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" name="txtemail" value="" /></td>
                            <td> Confirmar Contraseña</td>
                            <td><input type="text" name="txtconfpsw" /></td>                      
                        </tr> 
                        <tr>
                            <td>Fecha de Ingreso</td>
                            <td><input type="text" name="txtfechaingreso" value="" id="datepicker" /></td>
                            <td colspan="2" style="text-align: right;"><input type="submit" value="Validar" class="stlbutton" /></td>
                        </tr>
                        <tr>
                            <td>Cargo</td>
                            <td><input type="text" name="txtcargo" value="" /></td>
                        </tr>  
                        <tr>
                            <td>Rol</td>
                            <td>
                                <select name="cborol" style="width: 145px;">
                                <option>Administrador</option>
                                <option>Vendedor</option>
                                </select>
                                <a href="MantenimientoRol.jsp">Agregar Rol</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
                
                    <p></p>
                    <div class="stlLinea" ></div>
                    <p style=" text-align: right;">
                    
                    <a href="ListaUsuario.jsp">Buscar</a></td>
                    <input type="submit" value="Agregar" class="stlbutton" />
                    <input type="submit" value="Editar" class="stlbutton" />
                    <input type="submit" value="Eliminar" class="stlbutton" />
                </p>                      
   </form>
  </body>
 </div>
</html>
