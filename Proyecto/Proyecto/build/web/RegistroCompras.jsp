<%-- 
    Document   : RegistroVentas
    Created on : may 18, 2013, 10:29:57 p.m.
    Author     : Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Compras</title>
        <style>

        </style>
        <link rel="stylesheet" href="rcr_css/css/smoothness/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="Estilos/Estilos.css" />
        <script language="javascript" src="rcr_css/js/jquery-1.9.1.js"></script>
        <script language="javascript" src="rcr_css/js/jquery-ui.js"></script>
        <script>
            $(function() {
                $("#tbFechaEmision").datepicker();
                $("#tbFechaVencimiento").datepicker();
                $("#tbFechaPago").datepicker();
            });

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
                <p></p>
                <table class="stlPanelBusqueda">
                    <tr>
                        <td style=" width: 160px;">
                            Concepto 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <select name="ddlConcepto" style=" width: 250px;">
                                <option>Concepto 1</option>
                                <option>Concepto 2</option>
                                <option>Concepto 3</option>
                                <option>Concepto 4</option>
                            </select>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Número de Compra</td>
                        <td>:</td>
                        <td><input name="tbNumeroCompra" type="text" maxlength="10" width="80px"></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Fecha Emisión</td>
                        <td>:</td>
                        <td><input id="tbFechaEmision" name="tbFechaEmision" type="text" maxlength="10" width="80px">
                        <td></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Fecha Vencimiento</td>
                        <td>:</td>
                        <td><input id="tbFechaVencimiento" name="tbFechaVencimiento" type="text" maxlength="10" width="80px"></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Fecha Pago</td>
                        <td>:</td>
                        <td><input id="tbFechaPago" name="tbFechaPago" type="text" maxlength="10" width="80px"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Estado</td>
                        <td>:</td>
                        <td><select name="ddlestado">
                                <option>Estado 1</option>
                                <option>Estado 2</option>
                                <option>Estado 3</option>
                                <option>Estado 4</option>
                            </select></td>
                    </tr>
                </table>
                <p></p>
                <div class="stlLinea" ></div>
                <p style=" text-align: right;">
                    <input name="btnGrabar" type="submit" value="Grabar" class="stlbutton" />
                    <input name="btnSalir" type="button" value="Salir" class="stlbutton" onclick="Salir();" />
                </p>
            </form>
        </div>
    </body>
</html>

