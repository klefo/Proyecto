<%-- 
    Document   : ListarGrupoEstudio
    Created on : May 19, 2013, 2:49:06 PM
    Author     : Miguel Corzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM Instituto Benedicto XVI</title>
        <script>
            $(function() {
                $("#tbFechaInicio").datepicker();
                $("#tbFechaFin").datepicker();
            });

            /*
             Listado Operaciones :
             1--> Busqueda
             2--> Eliminar 
             3--> Insertar
             4--> RedireccionaActualizar
             5--> Actualizar
             */
            function Salir() {
                window.location = "Default.jsp";
                return false;
            }
            function ListarGrupoEstudio()
            {
                var context = "<%= request.getContextPath()%>";
                document.getElementById("_Operacion").value = 1;
                document.form1.action = context + "/ServletGrupoEstudio";
                document.form1.method = "POST";
                document.form1.submit();
            }
            function Eliminar(IdProfesor)
            {
                if (!confirm('¿Esta seguro de eliminar el registro?')) {
                    return false;
                }
                var context = "<%= request.getContextPath()%>";
                document.getElementById("_Operacion").value = 2;
                document.getElementById("_CodigoProfesor").value = IdProfesor;
                document.form1.action = context + "/ServletProfesor";
                document.form1.method = "POST";
                document.form1.submit();
            }
            function Ingresar()
            {
                window.location = "RegistroGrupoEstudio.jsp";
                return false;
            }
            function Actualizar(IdCurso)
            {
                var context = "<%= request.getContextPath()%>";
                document.getElementById("_Operacion").value = 4;
                document.getElementById("_CodigoProfesor").value = IdCurso;
                document.form1.action = context + "/ServletProfesor";
                document.form1.method = "POST";
                document.form1.submit();
            }
        </script>
    </head>
    <body>
        <div name="page" class="page">
            <form name="form1" action="" method="POST" >
                </br>
                <%@include file="/Menu.jsp" %>
                <p></p>
                <h1>Listado Grupos de Estudio</h1>
                <table class="stlPanelBusqueda">
                    <tr>
                        <td>
                            Academia 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <select name="ddlAcademia" style=" width: 200px;">
                            </select>
                        </td>
                        <td></td>
                        <td>Curso</td>
                        <td>:</td>
                        <td><select name="ddlCurso" style=" width: 200px;">

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Fecha Inicio</td>
                        <td>:</td>
                        <td><input id="tbFechaInicio" name="tbFechaInicio" type="text" maxlength="10" width="80px">
                        <td></td>
                        <td>Fecha Fin</td>
                        <td>:</td>
                        <td><input id="tbFechaFin" name="tbFechaFin" type="text" maxlength="10" width="80px"></td>
                    </tr>
                    <tr>
                        <td>Nombre de Grupo</td>
                        <td>:</td>
                        <td><input name="tbNombreGrupo" type="text" width="450px"></td>
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
                            <td style=" width: 120px;">Fecha Inicio</td>
                            <td style=" width: 120px;">Fecha Fin</td>
                            <td>Nombre Grupo</td>
                            <td>Academia</td>
                            <td>Curso</td>
                            <td>Estado</td>
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
