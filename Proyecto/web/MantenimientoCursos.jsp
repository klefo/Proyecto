<%-- 
    Document   : MantenimientoCursos
    Created on : 07/06/2013, 01:56:52 AM
    Author     : Miguel Corzo
--%>
<%@page import="crm.benedicto.beans.Curso" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM Instituto Benedicto XVI</title>
        <script>
            /*
             Listado Operaciones :
             1--> Busqueda
             2--> Eliinar 
             3--> Insertar
             4--> RedireccionaActualizar
             5--> Actualizar
             */
            function Salir() {
                window.location = "ListarCursos.jsp";
                return false;
            }

            function Grabar() {
                var context = "<%= request.getContextPath()%>";
                var idCurso = document.getElementById("_CodigoCurso").value;
                if (idCurso == 'NaN' || idCurso == '') {
                    document.getElementById("_Operacion").value = 3;
                }
                else {
                    document.getElementById("_Operacion").value = 5;
                    if (!confirm('¿Esta seguro de guardar los cambios?'))
                    {
                        return false;
                    }
                }

                document.form1.action = context + "/ServletCurso";
                document.form1.method = "POST";

                document.form1.submit();
            }
            function CargarRegistro() {
            <% if (request.getAttribute("objCurso") != null) {
                    Curso obj = (Curso) request.getAttribute("objCurso");
            %>
                document.getElementById("tbIdCurso").value = '<%= obj.getIdCurso()%>';
                document.getElementById("tbNombreCurso").value = '<%= obj.getNombreCurso()%>';
                document.getElementById("tbNroHoras").value = '<%= obj.getNroHoras()%>';
                document.getElementById("ddlEstado").value = '<%= obj.getEstado()%>';
                document.getElementById("_CodigoCurso").value = '<%= obj.getIdCurso()%>';
            <%}%>
            }
        </script>
    </head>
    <body onload="CargarRegistro();">
        <div name="page" class="page">
            <form name="form1" action="" method="POST" >
                </br>
                <%@include file="Menu.jsp" %>
                <p></p>
                <h1>Mantenimiento de Cursos</h1>
                <table class="stlPanelBusqueda">
                    <tr>
                        <td>
                            Id Curso 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbIdCurso" disabled="disabled" name="tbIdCurso" style=" width:250px;">
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Nombre 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbNombreCurso" name="tbNombreCurso" style=" width:250px;" >
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Nro.Horas 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbNroHoras" name="tbNroHoras" style=" width:250px;" >
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Estado</td>
                        <td>:</td>
                        <td>
                            <select id="ddlEstado" name="ddlEstado" style=" width: 120px;" >
                                <option value="A">Activo</option>
                                <option value="I">Inactivo</option>
                            </select>
                        </td>
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

                </table>
                <p></p>
                <div class="stlLinea" ></div>
                <p></p>
                <div style=" text-align: right;">
                    <input name="btnGrabar" type="button" value="Grabar" class="stlbutton" onclick="Grabar();" />
                    <input name="btnSalir" type="button" value="Salir" class="stlbutton" onclick="Salir();" />
                    <input type="hidden" id="_Operacion" name="_Operacion">
                    <input type="hidden" id="_CodigoCurso" value="" name="_CodigoCurso" >
                </div>
                <p></p>
            </form>
        </div>
    </body>
</html>
