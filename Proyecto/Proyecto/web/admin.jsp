<%-- 
    Document   : admin
    Created on : 11/05/2013, 05:26:55 AM
    Author     : YICELA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <LINK REL=StyleSheet HREF="css/main.css" TITLE="Contemporary">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Administracion de Usuarios</h1>
        <form name="form1" method="post" action="">
          <table width="82%" border="0">
            <tr>
              <td width="19%"><input type="button" name="btn_buscar" id="btn_buscar" value="Buscar"></td>
              <td width="17%"><input type="button" name="btn_add" id="btn_add" value="Añadir"></td>
              <td width="18%"><input type="button" name="btn_editar" id="btn_editar" value="Editar"></td>
              <td width="17%"><input type="button" name="btn_eliminar" id="btn_eliminar" value="Eliminar"></td>
              <td width="29%">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="5"><h2>Información General</h2></td>
            </tr>
            <tr>
              <td>DNI - Identificación</td>
              <td><label for="textfield"></label>
              <input type="text" name="textfield1" id="textfield"></td>
              <td>&nbsp;</td>
              <td>Creado por</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Nombre</td>
              <td><input type="text" name="textfield2" id="textfield2"></td>
              <td>&nbsp;</td>
              <td>Creado el </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Apellido Paterno</td>
              <td><input type="text" name="textfield3" id="textfield3"></td>
              <td>&nbsp;</td>
              <td>Actualizado por</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Apellido Materno</td>
              <td><input type="text" name="textfield4" id="textfield4"></td>
              <td>&nbsp;</td>
              <td>Creado el</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Usuario</td>
              <td><input type="text" name="textfield5" id="textfield5"></td>
              <td><input type="submit" name="btn_validar" id="btn_validar" value="Validar"></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Correo Electrónico</td>
              <td><input type="text" name="textfield6" id="textfield6"></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Fecha de Ingreso</td>
              <td><input type="text" name="textfield7" id="textfield7"></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Cargo</td>
              <td><input type="text" name="textfield8" id="textfield8"></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Rol</td>
              <td><label for="select"></label>
                <select name="select" id="select">
                  <option value="1">Administrador</option>
                  <option value="2">Usuario</option>
              </select></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Contraseña</td>
              <td><input type="text" name="textfield9" id="textfield9"></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>Confirmar Contraseña</td>
              <td><input type="text" name="textfield10" id="textfield10"></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table>
          <p>&nbsp;</p>
    </form>
        <p>&nbsp;</p>
        
        
    </body>
</html>
