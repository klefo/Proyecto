<%-- 
    Document   : ValidacionUsuario
    Created on : 21/05/2013, 12:01:21 PM
    Author     : Richard Chavez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script>
   
        function validaIngreso(){
            
        var usr = document.getElementById("usuario").value;
        var psw = document.getElementById("clave").value;
        
        if(usr=="" || psw==""){
            alert("Ingrese usuario y/o clave!!!");
        
            return false;
        }else{
            
            document.frmLogin.submit();
            return true;
         }
        }
    </script>
    
    </head>
   <body>
        <form name="frmLogin" action="" method="POST">
            <div align="center"></div>
            <table border="0" >
                <thead>
                    <tr>
                        <th colspan="2">Validacion de ingreso</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Usuario </td>
                        <td><input type="text" name="txtUsuario" id="usuario" /></td>
                    </tr>
                    <tr>
                        <td>Contraseña </td>
                        <td><input type="text" name="txtClave" id="clave" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Aceptar" onclick="javascript:validaIngreso()"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
