<%-- 
    Document   : ventas
    Created on : 20/05/2013, 03:18:23 PM
    Author     : YICELA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM Instituto Benedicto XVI</title>
        <style>

        </style>
        <link rel="stylesheet" href="Estilos/Estilos.css" />
    </head>
    <body>
        <div name="page" class="page">
            <form name="form1" action="" method="POST" >
                </br>
                <div class="header">
                    <div class="title">
                        <h1>
                            Institución Educativa Superior Benedicto XVI
                        </h1>
                    </div>
                    <%@include file="/Menu.jsp" %>
                </div>

                <script language="JavaScript">
                    function validar(){
                        if (document.form1.numero.value==""){
                            alert("Ingrese número para realizar Proceso")
                            document.form1.numero.focus();
                            return (false); 
                        }else if(document.form1.fecha.value==""){
                            alert("Ingrese una Fecha de Emisión para realizar Proceso")
                            document.form1.fecha.focus();
                            return (false); 
                        }else if(document.form1.empresa.value==""){
                            alert("Ingrese una Empresa para realizar Proceso")
                            document.form1.fecha.focus();
                            return (false);
                        }else if(document.form1.fechaven.value==""){
                            alert("Ingrese una Empresa para realizar Proceso")
                            document.form1.fechaven.focus();
                            return (false);
                        }else if(document.form1.concepto.value==""){
                            alert("Ingrese una Empresa para realizar Proceso")
                            document.form1.concepto.focus();
                            return (false);
                        }else if(document.form1.fechapago.value==""){
                            alert("Ingrese una Empresa para realizar Proceso")
                            document.form1.fechapago.focus();
                            return (false);
                        }else if(document.form1.subtotal.value==""){
                            alert("Ingrese una Empresa para realizar Proceso")
                            document.form1.subtotal.focus();
                            return (false);
                            /*}else if(document.form1.subtotal.value==""){
                    alert("Ingrese una Empresa para realizar Proceso")
                    document.form1.subtotal.focus();
                    return (false);*/
         
         
                        }else{
                            alert ("Gracias por ingresar sus datos");
                        }
                        return (true); 
                    }
    
    
                    function calcular (subtotal){
                        var total;
                        var moneda;
                        var cambio;
                        moneda = select.valueOf();
                        /* switch(moneda){
                       case "1" : 1;
                       case "2": 2.56;
                       case "3": 3.5;
                       //default: alert ("Seleccione un tipo de moneda");
                   }*/
                        subtotal = parseInt(subtotal);
                        igv = 0.18;
                        //total = subtotal * igv * moneda;
                        var  caligv;
                        caligv = subtotal*igv;
                        document.form1.igv.value = caligv;
                        total = subtotal + (subtotal * igv);
        
                        return total;
                    }
                </script>
                <form name="form1" method="post" action="">
                    <div>
                        <h2>Ingresar nueva Venta</h2>
                        <table width="100%" border="0" class="stlPanelBusqueda">
                            <tr>
                                <td width="11%">Número</td>
                                <td width="20%"><label for="textfield2"></label>
                                    <input type="text" name="numero" id="textfield2"></td>
                                <td width="17%">Fecha de Emisión</td>
                                <td width="19%"><input type="text" name="fecha" id="textfield4"></td>
                                <td width="33%">Observaciones</td>
                            </tr>
                            <tr>
                                <td>Empresa</td>
                                <td><label for="textfield3"></label>
                                    <input type="text" name="empresa" id="textfield3"></td>
                                <td>Fecha de Vencimiento</td>
                                <td><input type="text" name="fechaven" id="textfield5"></td>
                                <td rowspan="3"><textarea name="textarea" id="textarea" cols="45" rows="5"></textarea></td>
                            </tr>
                            <tr>
                                <td>Concepto</td>
                                <td><input type="text" name="concepto" id="textfield"></td>
                                <td>Fecha de Pago</td>
                                <td><input type="text" name="fechapago" id="textfield6"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Subtotal</td>
                                <td><input type="text" name="subtotal" id="subtotal"></td>
                                <td>Moneda</td>
                                <td><select name="select" size="1" id="select">
                                        <option value="1" selected >Soles</option>
                                        <option value="2">Dólares</option>
                                        <option value="3">Euros</option>
                                    </select></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>IGV</td>
                                <td><input name="igv" type="text" id="textfield8" readonly ></td>
                                <td>Total</td>
                                <td><input name="total" type="text" id="total" readonly></td>
                            </tr>
                            <tr>
                                <td height="21">&nbsp;</td>
                                <td colspan="4"><label for="textarea"></label></td>
                            </tr>
                            <tr>
                                <td height="26"><input type="button" class="stlbutton" name="button4" id="button4" 
                                                       onClick="document.form1.total.value = calcular(document.form1.subtotal.value);"  
                                                       value="Calcular" >
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td><input name="button2" type="button" class="stlbutton" id="button2" onClick="validar()" value="Guardar">
                                    <input type="button" value="Buscar" class="stlbutton" onclick="self.location.href = 'filtroventas.jsp';"/>
                                    <input name="button3" type="reset" class="stlbutton" id="button3" value="Nuevo">
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                        <p>&nbsp;</p>
                    </div>
                </form>
                <p>&nbsp;</p>

                </body>
                </html>
