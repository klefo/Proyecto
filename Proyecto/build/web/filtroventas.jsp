<%@page import="java.sql.*" %>
<%@page import="beans.*" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM Instituto Benedicto XVI</title>
        <style>

        </style>
        <link rel="stylesheet" href="Estilos/Estilos.css" />
    </head>
    <body>
        <div name="page" class="page">
            <form name="form1" action="" method="POST" >
                </br>
                <%@include file="/Menu.jsp" %>
                <h1>Búsqueda de Ventas por filtro</h1>
                <form name="form3" method="post" action="">
                    <table width="100%" border="0" class="stlPanelBusqueda">
                        <tr>
                            <td width="8%" scope="col">Concepto </td><td><select name="select" id="select2" style=" width: 150px;"></select></td>
                            <td width="17%" scope="col">Número</td><td><input type="text" name="textfield" id="textfield"></td>
                        </tr>
                        <tr>
                            <td width="10%" scope="col"> Fecha de emisión</td><td><input type="text" name="textfield2" id="textfield2"></td>
                            <td width="19%" scope="col"> Empresa</td><td><input type="text" name="textfield2" id="textfield2"></td>
                        </tr>
                        <tr>
                            <td width="12%" scope="col">Fecha de emisión</td><td><input type="text" name="textfield2" id="textfield2"></td>
                            <td width="16%" scope="col">Fecha de vencimiento</td><td><input type="text" name="textfield2" id="textfield2"></td>
                        </tr>
                        <tr>
                            <td width="10%" scope="col">Fecha de pago</td><td><input type="text" name="textfield2" id="textfield2"></td>
                            <td width="8%" scope="col">Estado</td><td><select name="ddlEstado"  style=" width: 150px;">
                                    <option>Nuevo</option>
                                    <option>Anulada</option>
                                    <option>Cancelada</option>
                                </select>
                                <input type="submit" name="button" id="button" class="stlbutton" value="Buscar">
                            </td>
                        </tr>
                    </table>
                </form>
                <br>
                <div style="width: 100%; height: 245px;border: 1px solid #999999;">
                    <table name="tblRegistros" style=" width:100%;" class="stlDataGridFixedHeader">
                        <tr>
                            <th scope="col">Concepto </th>
                            <th scope="col">Número</th>
                            <th scope="col"> Fecha de emisión</th>
                            <th scope="col"> Empresa</th>
                            <th scope="col">Fecha de emisión</th>
                            <th scope="col">Fecha de vencimiento</th>
                            <th scope="col">Fecha de pago</th>
                            <th scope="col">Estado</th>
                        </tr>
                        <tr>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                    </table>
                </div>
                <table width="100%" border="0">
                    <tr>
                        <td width="24%"></td>
                        <td width="5%">&nbsp;</td>
                        <td width="29%"><input type="submit" name="button2" id="button2" class="stlbutton" value="Limpiar"></td>
                        <td width="5%">&nbsp;</td>
                        <td width="37%"><input type="button" name="button3" id="button3" class="stlbutton" value="Ingresar" onclick="self.location.href = 'ventas.jsp';"></td>
                    </tr>
                </table>
                </body>
                </html>