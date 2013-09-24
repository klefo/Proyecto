<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String mensajeError = (String)request.getAttribute("error");
%>
<html>
    <head>
        <title>INGRESO</title>
        
        <link rel="stylesheet" href="Estilos/css/smoothness/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="Estilos/Estilos.css" />
        
    </head>
    <body>
         <script >
   
        function validaIngreso(){
            
        var usr = document.getElementById("usr").value;
        var psw = document.getElementById("psw").value;
        
        if(usr=="" || psw==""){
            alert("Ingrese usuario y/o clave!!!");
        
            return false;
        }else{
            
            document.form1.submit();           
            return true;
         }
        }
    </script>

        <div name="page" class="page">
            
            <form name="form1" method="post" action="ValidarUsuarioServlet">
                <center>
                    <h1 class="xxxmenu">Sistema de Control</h1>
                    <div style=" width: 450px; text-align: center;">
                        
                        <table border="0" class="stlPanelBusqueda">
                            <tr>
                                <td width="30%" rowspan="3"><img src="imagenes/ingresar.jpg" width="128" ></td>
                                <td width="25%" >Usuario</td><td width="45%"><label for="textfield"></label>
                                <input type="text" name="nombreUsuario" id="usr"></td>
                            </tr>
                            <tr>
                                <td>Contraseña</td><td><label for="textfield2"></label>
                                <input type="password" name="contrasenia" id="psw" />
                            </tr>
                            <tr>
                                <td >&nbsp;</td>
                                <td><input type="button" name="btn_ingresar" class="stlbutton" id="btn_ingresar" value="Ingresar" onclick="javascript:validaIngreso();"></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <%
                                        if(mensajeError!=null){
                                     %>
                                     <span style="color:red"><%= mensajeError %></span>
                                    <%       
                                        }
                                    %>
                                </td>    
                            </tr>
                        </table>
                    </div>
                </center>
            </form>
        </div>
    </body>
</html>
