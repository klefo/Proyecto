<%-- 
    Document   : MantenimientoProfesores
    Created on : 10/06/2013, 08:43:53 PM
    Author     : Miguel Corzo
--%>
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
             2--> Eliinar 
             3--> Insertar
             4--> RedireccionaActualizar
             5--> Actualizar
             */
            function Salir() {
                window.location = "ListarProfesores.jsp";
                return false;
            }

            function Grabar() {
                var context = "<%= request.getContextPath()%>";
                var idProfesor = document.getElementById("_CodigoProfesor").value;
                if (idProfesor == 'NaN' || idProfesor == '') {
                    document.getElementById("_Operacion").value = 3;
                }
                else {
                    document.getElementById("_Operacion").value = 5;
                    if (!confirm('¿Esta seguro de guardar los cambios?'))
                    {
                        return false;
                    }
                }

                document.form1.action = context + "/ServletProfesor";
                document.form1.method = "POST";

                document.form1.submit();
            }
            function CargarRegistro() {
            <% if (request.getAttribute("objProfesor") != null) {
                    Profesor obj = (Profesor) request.getAttribute("objProfesor");
            %>
                document.getElementById("tbIdProfesor").value = '<%= obj.getIdProfesor() %>';
                document.getElementById("tbNombreProfesor").value = '<%= obj.getNombres() %>';
                document.getElementById("tbApellidoPaterno").value = '<%= obj.getApellidoPaterno() %>';
                document.getElementById("tbApellidoMaterno").value = '<%= obj.getApellidoMaterno() %>';
                document.getElementById("tbFechaNacimiento").value = '<%= obj.getFechaNacimiento() %>';
                document.getElementById("tbEmail").value = '<%= obj.getEmail() %>';
                document.getElementById("tbDireccion").value = '<%= obj.getDireccion() %>';
                document.getElementById("tbTelefono").value = '<%= obj.getTelefono() %>';
                document.getElementById("tbCelular").value = '<%= obj.getCelular() %>';
                document.getElementById("ddlEstado").value = '<%= obj.getEstado()%>';
                document.getElementById("_CodigoProfesor").value = '<%= obj.getIdProfesor() %>';
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
                <h1>Mantenimiento de Profesores</h1>
                <table class="stlPanelBusqueda">
                    <tr>
                        <td>
                            Id Profesor 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbIdProfesor" disabled="disabled" name="tbIdProfesor" style=" width:250px;">
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Nombres 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbNombreProfesor" name="tbNombreProfesor" style=" width:250px;" >
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Apellido Paterno 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbApellidoPaterno" name="tbApellidoPaterno" style=" width:250px;" >
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Apellido Materno 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbApellidoMaterno" name="tbApellidoMaterno" style=" width:250px;" >
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Fecha Nacimiento 
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbFechaNacimiento" name="tbFechaNacimiento" style=" width:80px;" >
                        </td>
                        <td></td>
                    </tr>                    
                    <tr>
                        <td>
                            Email
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbEmail" name="tbEmail" style=" width:150px;" >
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Direcci&oacute;n
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbDireccion" name="tbDireccion" style=" width:150px;" >
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Tel&eacute;fono
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbTelefono" name="tbTelefono" style=" width:150px;" >
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Celular
                        </td>
                        <td>:                        
                        </td>
                        <td>
                            <input type="text" id="tbCelular" name="tbCelular" style=" width:150px;" >
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
                    <input type="hidden" id="_CodigoProfesor" value="" name="_CodigoProfesor" >
                </div>
                <p></p>
            </form>
        </div>
    </body>
</html>
