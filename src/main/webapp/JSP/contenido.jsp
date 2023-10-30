<%-- 
    Document   : contenido
    Created on : 25 oct. 2023, 10:05:12
    Author     : Pedro Lazaro
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html>
    <head>
        <jsp:directive.include file="/INC/metas.inc"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value="${contextPath}" />/CSS/style.css" type="text/css" />
        <link rel="shortcut icon" href="<c:out value="${contextPath}" />/IMG/icon.ico" />
        <title>Poliza Contenido</title>
    </head>
    <body>
        <jsp:directive.include file="/INC/header.inc"/>
        <div class="main-container">
            <h2>Detalles de la poliza de contenido</h2>
            <form action="${contextPath}/ContenidoController" method="post">
                <p>Rellene el siguiente formulario acerca de su contenido, cuando termine pulse el boton enviar</p><br />
                <label for="danios">Cubir daños accidentales: </label>
                <input type="checkbox" name="danios" id="danios" value="danios" checked /><br />
                <label for="cantidad">Cantidad a asegurar(€): </label>
                <select name="cantidad" id="cantidad">
                    <option value="10000">10000</option>
                    <option value="20000">20000</option>
                    <option value="30000">30000</option>
                    <option value="50000">50000</option>
                    <option value="100000" selected>100000</option>
                </select><br />
                <label for="franquicia">Franquicia(€): </label>
                <input type="radio" name="franquicia" id="franquicia" value="Ninguna" checked />Ninguna
                <input type="radio" name="franquicia" id="franquicia" value="500" />500
                <input type="radio" name="franquicia" id="franquicia" value="1000" />1000<br />
                <input class="boton" type="submit" value="Enviar" />
            </form>
        </div>
    </body>
</html>
