<%-- 
    Document   : index
    Created on : 25 oct. 2023, 10:04:30
    Author     : Pedro Lazaro
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="session"/>
<html>
<html lang="es">
    <head>
        <%@include file="/INC/metas.inc"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value="${contextPath}" />/CSS/style.css" type="text/css" />
        <link rel="shortcut icon" href="<c:out value="${contextPath}" />/IMG/icon.ico" />
        <title>ShieldSure Insurance</title>
    </head>
    <body>
        <%@include file="/INC/header.inc"%>
        <div class="main-container">
            <h2>Elija su seguro</h2>
            <form action="<c:out value="${contextPath}" />/EleccionController" method="post">
                <p>Seleccione el tipo de seguro que desea contratar (Puede elegir uno o ambos):</p><br />
                <input type="checkbox" name="seguro" value="continente" checked /> Seguro de edificios<br />
                <input type="checkbox" name="seguro" value="contenido" checked /> Seguro de contenido<br /><br />
                <input class="boton" type="submit" value="Continuar" />
            </form>
        </div>
    </body>
</html>
