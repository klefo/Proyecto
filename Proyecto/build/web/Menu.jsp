<%-- 
    Document   : Menu
    Created on : May 24, 2013, 6:59:10 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="Estilos/Estilos.css" />
<link rel="stylesheet" href="css/smoothness/jquery-ui-1.10.3.custom.css" />
<script language="javascript" src="js/jquery-1.9.1.js"></script>
<script language="javascript" src="js/jquery-ui.js"></script>

<div class="header">
    <div class="title">
        <h1>
            Institución Educativa Superior Benedicto XVI
        </h1>
    </div>
    <div id="menu" class="clear">
        <ul class="nav">
            <li><a href="Default.jsp">Inicio</a></li>
            <li><a href="ListarProspectos.jsp">Prospectos</a></li>
            <li><a href="ListarAlumnos.jsp">Alumnos</a></li>
            <li><a href="ListarCompras.jsp">Compras</a></li>
            <li><a href="ListarMatricula.jsp">Matrícula</a></li>
            <li><a href="ListarGrupoEstudio.jsp">Grupo Estudios</a></li>
            <li><a href="#">Seguridad</a>
                <ul>
                    <li><a href="MantenimientoRol.jsp">Mantenimiento Rol</a></li>
                </ul>
            </li>
            <li><a href="#">Parametría</a>
                <ul>
                    <li><a href="ListarCursos.jsp">Cursos</a></li>
                    <li><a href="ListarProfesores.jsp">Profesores</a></li>
                </ul>
                <div class="clear"></div>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
<div style="clear: both;">
