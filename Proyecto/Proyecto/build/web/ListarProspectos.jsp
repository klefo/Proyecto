<%--
    Document   : ListarClientes
    Created on : may 18, 2013, 10:29:43 p.m.
    Author     : Hcornejo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Prospectos</title>

        <link rel="stylesheet" href="rcr_css/css/smoothness/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="Estilos/Estilos.css" />
        <script language="javascript" src="rcr_css/js/jquery-1.9.1.js"></script>
        <script language="javascript" src="rcr_css/js/jquery-ui.js"></script>
        <script>
            function Salir() {
                window.location = "Default.jsp";
                return false;
            }
            function Ingresar()
            {
                window.location = "MantenimientoProspecto.jsp";
                return false;
            }
        </script>

    </head>
    <body>
        <div name="page" class="page">
            <form name="form1" action="" method="POST" >
                </br>
                <%@include file="/Menu.jsp" %>
                <p></p>
                <h1>Mantenimiento Prospectos</h1>
                <table class="stlPanelBusqueda">
                    <tr>
                        <td>
                            Nombres 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input name="tbNumeroCompra" type="text" maxlength="10" width="80px">  
                        </td>
                        <td></td>
                        <td>Apellido Paterno</td>
                        <td>:</td>
                        <td><input name="tbNumeroCompra" type="text" maxlength="10" width="80px"></td>
                    </tr>
                    <tr>
                        <td>Apellido Materno</td>
                        <td>:</td>
                        <td><input name="tbNumeroCompra" type="text" maxlength="10" width="80px">
                        <td></td>
                        <td>Email</td>
                        <td>:</td>
                        <td><input name="tbNumeroCompra" type="text" maxlength="10" width="80px"></td>
                        <td></td>
                        <td>DNI</td>
                        <td>:</td>
                        <td><input id="tbFechaPago" name="tbFechaPago" type="text" maxlength="10" width="80px"></td>
                    </tr>
                    <tr>
                        <td>Telefono</td>
                        <td>:</td>
                        <td><input id="tbFechaPago" name="tbFechaPago" type="text" maxlength="10" width="80px"></td>
                        <td></td>
                        <td>Celular</td>
                        <td>:</td>
                        <td>
                            <input name="tbNumeroCompra" type="text" maxlength="10" width="80px">
                        </td>
                        <td></td>
                        <td>Fecha de Contacto</td>
                        <td>:</td>
                        <td>
                            <input name="tbNumeroCompra" type="text" maxlength="10" width="80px">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td colspan="5" style=" text-align: right"><input type="submit" value="Buscar" name="btnBuscar" class="stlbutton" </td>
                    </tr>

                </table>
                <p></p>
                <div style="width: 100%; height: 245px;border: 1px solid #999999;">
                    <table name="tblRegistros" style=" width:100%;" class="stlDataGridFixedHeader">
                        <tr>
                            <td style=" width: 20px;"><input type="checkbox" name="chkTodos"  /></td>
                            <td style=" width: 120px;">DNI</td>
                            <td style=" width: 180px;">Fecha Vencimiento</td>
                            <td style=" width: 120px;">Nombres</td>
                            <td style=" width: 420px;">Apellidos</td>
                            <td style=" width: 420px;" >Email</td>
                            <td style=" width: 420px;">Fecha de Contacto</td>
                        </tr>
                    </table>
                </div>
                <p></p>
                <div class="stlLinea" ></div>
                <p style=" text-align: right;">
                    <input name="btnIngresar" type="button" value="Ingresar" class="stlbutton" onclick="Ingresar();" />
                    <input name="btnSalir" type="button" value="Salir" class="stlbutton" onclick="Salir();" />
                </p>
            </form>
        </div>
    </body>
</html>
