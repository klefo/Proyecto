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
        <title>Consulta de Ventas</title>
    </head>
    <body>
        <form name="form1" action="" method="POST" >
            <span class="stlTituloPagina">Listado de Ventas</span>
            <div class="Linea" ></div>
            <p></p>
            <table class="stlPanelBusqueda">
                <tr>
                    <td>
                        Concepto 
                    </td>
                    <td>:                        
                    </td>
                    <td>
                        <select name="ddlConcepto">
                            <option></option>
                        </select>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><input type="submit" value="Buscar" name="btnBuscar" </td>
                </tr>


            </table>
            <p></p>
            <div style="width: 100%; height: 245px;border: 1px solid #999999;">
                <table name="tblRegistros" style=" width:100%">
                    <tr><td><input type="checkbox" name="chkTodos"  /></td><td></td></tr>
                </table>
            </div>
            <p></p>
            <div class="Linea" ></div>
            <p></p>
            <input name="btnIngresar" type="submit" value="Ingresar" class="button" />
        </form>
    </body>
</html>
