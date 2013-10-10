<%-- 
    Document   : ListarProfesores
    Created on : Jun 10, 2013, 1:19:15 PM
    Author     : Miguel Corzo
--%>
<%@page import="java.util.List" %>
<%@page import="crm.benedicto.beans.Profesor" %>
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
             2--> Eliminar 
             3--> Insertar
             4--> RedireccionaActualizar
             5--> Actualizar
             */
            function Salir() {
                window.location = "Default.jsp";
                return false;
            }
            function ListarProfesores()
            {
                var context = "<%= request.getContextPath()%>";
                document.getElementById("_Operacion").value = 1;
                document.form1.action = context + "/ServletProfesor";
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
                window.location = "MantenimientoProfesores.jsp";
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
                <%@include file="Menu.jsp" %>
                <p></p>
                <h1>Listado de Profesores</h1>
                <table class="stlPanelBusqueda">
                    <tr>
                        <td>
                            Nombre 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" name="tbNombreProfesor" style=" width:250px;" >
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
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td style=" text-align: right"><input type="button" value="Buscar" name="btnBuscar" class="stlbutton" onclick="ListarProfesores();"> </td>
                    </tr>

                </table>
                <p></p>
                <div style="width: 100%; height: 245px;border: 1px solid #999999;">
                    <table name="tblRegistros" style=" width:100%;">
                        <tr>
                            <td class="stlDataGridFixedHeader" style=" width: 20px;">Eliminar</td>
                            <td class="stlDataGridFixedHeader" style=" width: 20px;">Modificar</td>
                            <td class="stlDataGridFixedHeader" style=" width: 120px;">C&oacute;digo Profesor</td>
                            <td class="stlDataGridFixedHeader" style=" width: 350px;">Nombre Profesor</td>
                            <td class="stlDataGridFixedHeader" style=" width: 120px;">Teléfono Contacto</td>
                            <td class="stlDataGridFixedHeader" style=" width: 120px;">Email</td>
                            <td class="stlDataGridFixedHeader" style=" width: 120px;">Estado</td>
                        </tr>
                        <%
                            List<Profesor> lsProfesor = null;
                            if (request.getAttribute("listaProfesores") != null) {
                                lsProfesor = (List<Profesor>) request.getAttribute("listaProfesores");

                                for (int i = 0; i < lsProfesor.size(); i++) {
                                    Profesor profesor = lsProfesor.get(i);
                                    String estado;
                                    if (profesor.getEstado().equals("A")) {
                                        estado = "Activo";
                                    } else {
                                        estado = "Inactivo";
                                    }
                        %>
                        <tr>
                            <td style=" width: 20px; text-align: center;"><img name="imgEliminar" style=" cursor: pointer" src="imagenes/ico_Borrar.gif" onclick="Eliminar(<%= profesor.getIdProfesor()%>);"></td>
                            <td style=" width: 20px; text-align: center;"><img name="imgActualizar" style=" cursor: pointer" src="imagenes/ico_Edita.gif" onclick="Actualizar(<%= profesor.getIdProfesor()%>);"></td>
                            <td style=" width: 120px;text-align: center;"><%= profesor.getIdProfesor()%></td>
                            <td style=" width: 450px;"><%= profesor.getNombres()+ " " + profesor.getApellidoPaterno()%></td>
                            <td style=" width: 120px;"><%= profesor.getCelular()%></td>
                            <td style=" width: 120px;"><%= profesor.getEmail()%></td>
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
                    <input type="hidden" id="_CodigoProfesor" value="" name="_CodigoProfesor">
                </p>
                <p></p>
            </form>
        </div>
    </body>
</html>
