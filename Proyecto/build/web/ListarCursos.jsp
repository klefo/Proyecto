<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
    Document   : ListarCursos
    Created on : 07/06/2013, 01:50:32 AM
    Author     : Miguel
--%>
<%@page import="java.util.List" %>
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
                window.location = "Default.jsp";
                return false;
            }
            function ListarCursos()
            {
                var context = "<%= request.getContextPath()%>";
                document.getElementById("_Operacion").value = 1;
                document.form1.action = context + "/ServletCurso";
                document.form1.method = "POST";
                document.form1.submit();
            }
            function Eliminar(IdCurso)
            {
                if (!confirm('¿Esta seguro de eliminar el registro?')) {
                    return false;
                }

                var context = "<%= request.getContextPath()%>";
                document.getElementById("_Operacion").value = 2;
                document.getElementById("_CodigoCurso").value = IdCurso;
                document.form1.action = context + "/ServletCurso";
                document.form1.method = "POST";
                document.form1.submit();
            }
            function Ingresar()
            {
                window.location = "MantenimientoCursos.jsp";
                return false;
            }
            function Actualizar(IdCurso)
            {
                var context = "<%= request.getContextPath()%>";
                document.getElementById("_Operacion").value = 4;
                document.getElementById("_CodigoCurso").value = IdCurso;
                document.form1.action = context + "/ServletCurso";
                document.form1.method = "POST";
                document.form1.submit();
            }
        </script>

    </head>
    <body>
        <div name="page" class="page">
            <form name="form1" action="" method="POST" >
                </br>
                <%@include file="Menu.jsp" %>
                <p></p>
                <h1>Listado de Cursos</h1>
                <table class="stlPanelBusqueda">
                    <tr>
                        <td>
                            Nombre 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" name="tbNombreCurso" style=" width:250px;" >
                        </td>
                        <td></td>
                        <td>Estado</td>
                        <td>:</td>
                        <td>
                            <select name="ddlEstado" style=" width: 120px;">
                                <option value="-1">-- Todos --</option>
                                <option value="A">Activo</option>
                                <option value="I">Inactivo</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Nro. Horas</td>
                        <td>:</td>
                        <td><input type="text" name="tbNroHoras" style=" width:50px;" ></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td style=" text-align: right"><input type="button" value="Buscar" name="btnBuscar" class="stlbutton" onclick="ListarCursos();"> </td>
                    </tr>

                </table>
                <p></p>
                <div style="width: 100%; height: 245px;border: 1px solid #999999;">
                    <table name="tblRegistros" style=" width:100%;">
                        <tr>
                            <td class="stlDataGridFixedHeader" style=" width: 20px;">Eliminar</td>
                            <td class="stlDataGridFixedHeader" style=" width: 20px;">Modificar</td>
                            <td class="stlDataGridFixedHeader" style=" width: 120px;">C&oacute;digo Curso</td>
                            <td class="stlDataGridFixedHeader" style=" width: 450px;">Nombre Curso</td>
                            <td class="stlDataGridFixedHeader" style=" width: 120px;">Nro. Horas</td>
                            <td class="stlDataGridFixedHeader" style=" width: 120px;">Estado</td>
                        </tr>
                        <%
                            List<Curso> lsCurso = null;
                            if (request.getAttribute("listaCursos") != null) {
                                lsCurso = (List<Curso>) request.getAttribute("listaCursos");

                                for (int i = 0; i < lsCurso.size(); i++) {
                                    Curso curso = lsCurso.get(i);
                                    String estado;
                                    if (curso.getEstado().equals("A")) {
                                        estado = "Activo";
                                    } else {
                                        estado = "Inactivo";
                                    }
                        %>
                        <tr>
                            <td style=" width: 20px; text-align: center;"><img name="imgEliminar" style=" cursor: pointer" src="imagenes/ico_Borrar.gif" onclick="Eliminar(<%= curso.getIdCurso()%>);"></td>
                            <td style=" width: 20px; text-align: center;"><img name="imgActualizar" style=" cursor: pointer" src="imagenes/ico_Edita.gif" onclick="Actualizar(<%= curso.getIdCurso()%>);"></td>
                            <td style=" width: 120px;text-align: center;"><%= curso.getIdCurso()%></td>
                            <td style=" width: 450px;"><%= curso.getNombreCurso()%></td>
                            <td style=" width: 120px;"><%= curso.getNroHoras()%></td>
                            <td style=" width: 120px;"><%= estado%></td>
                        </tr>
                        <% }%>
                        <% }%>
                    </table>
                </div>
                <p></p>
                <div class="stlLinea" ></div>
                <p style=" text-align: right;">
                    <input name="btnIngresar" type="button" value="Ingresar" class="stlbutton" onclick="Ingresar();" />
                    <input name="btnSalir" type="button" value="Salir" class="stlbutton" onclick="Salir();" />
                    <input type="hidden" id="_Operacion" value="" name="_Operacion">
                    <input type="hidden" id="_CodigoCurso" value="" name="_CodigoCurso">
                </p>
                <p></p>
            </form>
        </div>
    </body>
</html>