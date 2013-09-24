<%--
    Document   : ListarVentas
    Created on : may 18, 2013, 10:29:43 p.m.
    Author     : Miguel Corzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Compras</title>

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
            function Ingresar()
            {
                window.location = "RegistroCompras.jsp";
                return false;
            }
        </script>

    </head>
    <body>
        <div name="page" class="page">
            
            <form name="form1" action="" method="POST" >
                <%@include file="/Menu.jsp" %>
                <p></p>
                <h1>Listado de Compras</h1>
                <table class="stlPanelBusqueda">
                    <tr>
                        <td>
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
                        <td>Número de Compra</td>
                        <td>:</td>
                        <td><input name="tbNumeroCompra" type="text" maxlength="10" width="80px"></td>
                    </tr>
                    <tr>
                        <td>Fecha Emisión</td>
                        <td>:</td>
                        <td><input id="tbFechaEmision" name="tbFechaEmision" type="text" maxlength="10" width="80px">
                        <td></td>
                        <td>Fecha Vencimiento</td>
                        <td>:</td>
                        <td><input id="tbFechaVencimiento" name="tbFechaVencimiento" type="text" maxlength="10" width="80px"></td>
                    </tr>
                    <tr>
                        <td>Fecha Pago</td>
                        <td>:</td>
                        <td><input id="tbFechaPago" name="tbFechaPago" type="text" maxlength="10" width="80px"></td>
                        <td></td>
                        <td>Estado</td>
                        <td>:</td>
                        <td><select name="ddlestado">
                                <option>Estado 1</option>
                                <option>Estado 2</option>
                                <option>Estado 3</option>
                                <option>Estado 4</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td style=" text-align: right"><input type="submit" value="Buscar" name="btnBuscar" class="stlbutton" </td>
                    </tr>

                </table>
                <p></p>
                <div style="width: 100%; height: 245px;border: 1px solid #999999;">
                    <table name="tblRegistros" style=" width:100%;" class="stlDataGridFixedHeader">
                        <tr>
                            <td style=" width: 20px;"><input type="checkbox" name="chkTodos"  /></td>
                            <td style=" width: 120px;">Fecha Emisión</td>
                            <td style=" width: 180px;">Fecha Vencimiento</td>
                            <td style=" width: 120px;">Fecha Pago</td>
                            <td style=" width: 420px;">Empresa</td>
                            <td>Total</td>
                            <td>Moneda</td>
                        </tr>
                    </table>
                </div>
                <p></p>
                <div class="stlLinea" ></div>
                <p style=" text-align: right;">
                    <input name="btnIngresar" type="button" value="Ingresar" class="stlbutton" onclick="Ingresar();" />
                    <input name="btnSalir" type="button" value="Salir" class="stlbutton" onclick="Salir();" />
                </p>
                <p></p>
            </form>
        </div>
    </body>

</html>
