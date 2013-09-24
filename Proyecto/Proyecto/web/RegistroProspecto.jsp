<%-- 
    Document   : RegistroGrupoEstudio
    Created on : May 24, 2013, 2:53:25 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Prospecto</title>
        <style>

        </style>
        <link rel="stylesheet" href="rcr_css/css/smoothness/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="Estilos/Estilos.css" />
        <script language="javascript" src="rcr_css/js/jquery-1.9.1.js"></script>
        <script language="javascript" src="rcr_css/js/jquery-ui.js"></script>
        <script>
            $(function() {
                $("#tbFechaInicio").datepicker();
                $("#tbFechaFin").datepicker();
            });

            function Salir() {
                window.location = "Default.jsp";
                return false;
            }
            function Grabar(){
                alert('aun no acabo profe  :D ....');
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
                            Nombres 
                        </td>
                        <td>:</td>
                        <td><input name="tbNombreGrupo" type="text" width="450px">
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Apellido Paterno</td>
                        <td>:</td>
                        <td><input name="tbApePaterno" type="text" width="450px"></td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Apellido Materno</td>
                        <td>:</td>
                        <td><input name="tbApeMaterno" type="text" width="450px"></td>

                        <td></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Email</td>
                        <td>:</td>
                        <td><input name="tbEmail" type="text" width="450px"></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">DNI</td>
                        <td>:</td>
                        <td><input name="tbDni" type="text" width="450px"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Telefono</td>
                        <td>:</td>
                        <td><input name="tbTelef" type="text" width="450px"></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Celular</td>
                        <td>:</td>
                        <td><input name="tbTelef" type="text" width="450px"></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Fecha de contacto</td>
                        <td>:</td>
                        <td><input id="tbFechaFin" name="tbFechaFin" type="text" maxlength="10" width="80px"></td>
                    </tr>
                </table>
                <p></p>
                <div class="stlLinea" ></div>
                <p style=" text-align: right;">
                    <input name="btnGrabar" type="submit" value="Grabar" class="stlbutton" onclick="Grabar();" />
                    <input name="btnSalir" type="button" value="Salir" class="stlbutton" onclick="Salir();" />
                </p>
            </form>
        </div>
    </body>
</html>
