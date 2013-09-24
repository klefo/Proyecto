<%-- 
    Document   : MantenimientoRol
    Created on : 22/05/2013, 09:19:21 PM
    Author     : invitado1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="rcr_css/css/smoothness/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="Estilos/Estilos.css" />
    </head>
    
        <div align="center">
        <body>
            <div name="page" class="page">
                <form name="frmManRol" method="POST">
                   <%@include file="/Menu.jsp" %>
            <p></p>
            INGRESAR DATOS DE ROL
            <table class="stlPanelBusqueda" >
                <tbody>
                    <tr>
                     <td>Nombre Rol</td>
                     <td><input type="text" name="txtRol" value="" /></td>
                    </tr>
                    <tr>
                     <td>Descripcion</td>
                     <td><input type="text" name="txtDescripcion" value="" /></td>
                    </tr>
                </tbody> 
            </table>
            <p></p>
                <div style="width: 100%; height: 245px;border: 1px solid #999999;">
                <table name="manRol" style=" width:100%;" class="stlDataGridFixedHeader">
                    <thead>
                    <th style="width: 20px;">Codigo</th>
                    <th style="width: 80px;">Modulo</th>
                    <th>Acceso</th>
                    <th>Adicionar</th>
                    <th>Editar</th>
                    <th>Eliminar</th> 
                </thead>
                     <tr>
                         <td style="text-align:center;">100</td>
                         <td style="text-align:center;">Seguridad</td>
                         <td style="text-align:center; width: 120px;"><input type="checkbox" name="chkAcceso"/></td>
                         <td style="text-align:center; width: 120px;"><input type="checkbox" name="chkAdicionar"/></td>
                         <td style="text-align:center; width: 120px;"><input type="checkbox" name="chkEditar"/></td>
                         <td style="text-align:center; width: 120px;"><input type="checkbox" name="chkEliminar"/></td>
                     </tr> 
                </table>
                </div> 
                     <p></p>
                    <div class="stlLinea" ></div>
                    <p style=" text-align: right;">
                    <input type="submit" value="Buscar" class="stlbutton" />
                    <input type="submit" value="Agregar" class="stlbutton" />
                    <input type="submit" value="Editar" class="stlbutton" />
                    <input type="submit" value="Eliminar" class="stlbutton" />
                </p>         
                <p></p>    
          </form>
        </body>
       </div>
    </html>
