<%-- 
    Document   : ListaUsuario
    Created on : 22/05/2013, 01:00:28 AM
    Author     : invitado1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Prospecto</title>
        <style>

        </style>
        <link rel="stylesheet" href="rcr_css/css/smoothness/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="Estilos/Estilos.css" />
        </script>
            
</head>
    <body>
       
         <div name="page" class="page">
             <form action="frmListaUsuario" method="POST">
             <%@include file="/Menu.jsp" %>
             <p></p>
            <table class="stlPanelBusqueda" >
                <thead>
                    <tr>
                        <th colspan="4">Lista de Usuario del Sistema</th>
                    </tr>
                </thead>
                <tbody>
                <td><a href="MantenimientoUsuario.jsp">Agregar</a></td>
                <td><a href="MantenimientoUsuario.jsp">Editar</a></td>
                <td><a href="">Eliminar</a></td>
                <td><a href="">Regresar</a></td>
                </tbody>
            </table>
            
             </table>
                <p></p>
                <div style="width: 100%; height: 245px;border: 1px solid #999999;">
                    <table name="tblManUsuarios" style=" width:100%;" class="stlDataGridFixedHeader">
                        <thead align="center">
                    <tr>
                        <th>Sel.</th>
                        <th>DNI</th>
                        <th>Nombres y Apellidos</th>
                        <th>Correo Electronico</th>
                        <th>Usuario</th>
                        <th>Cargo</th>
                        <th>Rol</th>
                        <th>Fecha de Ingreso</th>
                    </tr>  
                </thead>
                        <tr>
                            <td style=" width: 20px;"><input type="checkbox" name="chkTodos"  /></td>
                            <td style=" width: 120px;"align="center">40647590</td>
                            <td style=" width: 180px;"align="center">RICHARD CHAVEZ REYES</td>
                            <td style=" width: 180px;"align="center">RCHAVEZR@YOBELSCM.BIZ</td>
                            <td style=" width: 120px;"align="center">FOPRCRR0</td>
                            <td style=" width: 120px;"align="center">OPERADOR TI</td>
                            <td style=" width: 120px;"align="center">ADMINISTRADOR</td>
                            <td style=" width: 120px;"align="center">20-10-2013</td>
                        </tr>
                        <tr>
                            <td style=" width: 20px;"><input type="checkbox" name="chkTodos"  /></td>
                            <td style=" width: 120px;"align="center">44687345</td>
                            <td style=" width: 180px;"align="center">VANS YACCHI  MENDEZ</td>
                            <td style=" width: 180px;"align="center">UYACCHIM@GMAIL.COM</td>
                            <td style=" width: 120px;"align="center">FSISYMU0</td>
                            <td style=" width: 120px;"align="center">ANALISTA PROGRAMADOR</td>
                            <td style=" width: 120px;"align="center">DESARROLLADOR</td>
                            <td style=" width: 120px;"align="center">10-09-2008</td>
                        </tr>
                        <tr>
                            <td style=" width: 20px;"><input type="checkbox" name="chkTodos"  /></td>
                            <td style=" width: 120px;"align="center">40647590</td>
                            <td style=" width: 180px;"align="center">RICHARD CHAVEZ REYES</td>
                            <td style=" width: 180px;"align="center">RCHAVEZR@YOBELSCM.BIZ</td>
                            <td style=" width: 120px;"align="center">FOPRCRR0</td>
                            <td style=" width: 120px;"align="center">OPERADOR TI</td>
                            <td style=" width: 120px;"align="center">ADMINISTRADOR</td>
                            <td style=" width: 120px;"align="center">20-10-2013</td>
                        </tr>
                        <tr>
                            <td style=" width: 20px;"><input type="checkbox" name="chkTodos"  /></td>
                            <td style=" width: 120px;"align="center">40647590</td>
                            <td style=" width: 180px;"align="center">RICHARD CHAVEZ REYES</td>
                            <td style=" width: 180px;"align="center">RCHAVEZR@YOBELSCM.BIZ</td>
                            <td style=" width: 120px;"align="center">FOPRCRR0</td>
                            <td style=" width: 120px;"align="center">OPERADOR TI</td>
                            <td style=" width: 120px;"align="center">ADMINISTRADOR</td>
                            <td style=" width: 120px;"align="center">20-10-2013</td>
                        </tr>
                        <tr>
                            <td style=" width: 20px;"><input type="checkbox" name="chkTodos"  /></td>
                            <td style=" width: 120px;"align="center">40647590</td>
                            <td style=" width: 180px;"align="center">RICHARD CHAVEZ REYES</td>
                            <td style=" width: 180px;"align="center">RCHAVEZR@YOBELSCM.BIZ</td>
                            <td style=" width: 120px;"align="center">FOPRCRR0</td>
                            <td style=" width: 120px;"align="center">OPERADOR TI</td>
                            <td style=" width: 120px;"align="center">ADMINISTRADOR</td>
                            <td style=" width: 120px;"align="center">20-10-2013</td>
                        </tr>
                    </table>
            
            
        </form>
    </body>
</html>
