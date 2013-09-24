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
        <title>Consulta de Grupos de Estudio</title>
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
                            Academia 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <select name="ddlAcademia" style=" width: 200px;">
                                <option>Academia A</option>
                                <option>Academia B</option>
                                <option>Academia C</option>
                                <option>Academia D</option>
                            </select>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Curso</td>
                        <td>:</td>
                        <td><select name="ddlCurso" style=" width: 200px;">
                                <option>Curso 1</option>
                                <option>Curso 2</option>
                                <option>Curso 3</option>
                                <option>Curso 4</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Fecha Inicio</td>
                        <td>:</td>
                        <td><input id="tbFechaInicio" name="tbFechaInicio" type="text" maxlength="10" width="80px">
                        <td></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Fecha Fin</td>
                        <td>:</td>
                        <td><input id="tbFechaFin" name="tbFechaFin" type="text" maxlength="10" width="80px"></td>
                    </tr>
                    <tr>
                        <td style=" width: 160px;">Nombre de Grupo</td>
                        <td>:</td>
                        <td><input name="tbNombreGrupo" type="text" width="450px"></td>
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
                    <input name="btnGrabar" type="submit" value="Grabar" class="stlbutton" onclick="Grabar();" />
                    <input name="btnSalir" type="button" value="Salir" class="stlbutton" onclick="Salir();" />
                </p>
            </form>
        </div>
    </body>
</html>
