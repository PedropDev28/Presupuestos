<%-- 
    Document   : contenido
    Created on : 25 oct. 2023, 10:05:12
    Author     : Pedro Lazaro
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<fmt:bundle basename="${sessionScope.codigo}"  >
<html lang="${parte1}">
<html>
    <head>
        <jsp:directive.include file="/INC/metas.inc"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value="${contextPath}" />/CSS/style.css" type="text/css" />
        <link rel="shortcut icon" href="<c:out value="${contextPath}" />/IMG/icon.ico" />
        <title><fmt:message key="Poliza_Contenido"/></title>
    </head>
    <body>
        <jsp:directive.include file="/INC/header.inc"/>
        <div class="main-container">
            <h2><fmt:message key="Detalles_contenido"/></h2>
            <form action="${contextPath}/ContenidoController" method="post">
                <p><fmt:message key="Rellene_contenido"/></p><br /> 
                <label for="danios"><fmt:message key="Cubrir_accidentales"/></label>
                <input type="checkbox" name="danios" id="danios" value="danios" checked /><br />
                <label for="cantidad"<fmt:message key="Cantidad"/></label>
                <select name="cantidad" id="cantidad">
                    <option value="10000">10000</option>
                    <option value="20000">20000</option>
                    <option value="30000">30000</option>
                    <option value="50000">50000</option>
                    <option value="100000" selected>100000</option>
                </select><br />
                <label for="franquicia"><fmt:message key="Franquicia"/></label>
                <input type="radio" name="franquicia" id="franquicia" value="Ninguna" checked /><fmt:message key="Ninguna"/>
                <input type="radio" name="franquicia" id="franquicia" value="500" />500
                <input type="radio" name="franquicia" id="franquicia" value="1000" />1000<br />
                <button type="submit" name="button" value="enviar"><fmt:message key="Enviar"/></button>
            </form>
        </div>
    </body>
</html>
</fmt:bundle>
