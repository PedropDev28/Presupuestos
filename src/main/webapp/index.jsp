<%-- 
    Document   : index
    Created on : 7 nov. 2023, 9:34:31
    Author     : Pedro Lazaro
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="session"/>
<html>
<html lang="es">
    <head>
        <jsp:directive.include file="/INC/metas.inc"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value="${contextPath}" />/CSS/style.css" type="text/css" />
        <link rel="shortcut icon" href="<c:out value="${contextPath}" />/IMG/icon.ico" />
        <title>Eleccion de Idioma</title>
    </head>
    <body>
        <jsp:directive.include file="/INC/header.inc"/>
        <div class="main-container">
            <h2>Elija su idioma</h2>
            <form action="<c:out value="${contextPath}" />/FormatController" method="post">
                <select name="pais">
                    <option value="-1" selected="selected">Elige una opci&oacute;n</option>
                    <c:forEach var="item" items="${paises}">
                        <option value="${item.value}-${item.key}">${item.key}</option>
                    </c:forEach>
            </select>
            <input type="submit" value="Enviar" />
            </form>
        </div>
    </body>
</html>

