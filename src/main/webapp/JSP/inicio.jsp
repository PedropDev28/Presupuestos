<%-- 
    Document   : index
    Created on : 25 oct. 2023, 10:04:30
    Author     : Pedro Lazaro
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="session"/>
<html>
<fmt:bundle basename="${sessionScope.codigo}"  >
<html lang="${parte1}">
    <head>
        <jsp:directive.include file="/INC/metas.inc"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value="${contextPath}" />/CSS/style.css" type="text/css" />
        <link rel="shortcut icon" href="<c:out value="${contextPath}" />/IMG/icon.ico" />
        <title>ShieldSure Insurance</title>
    </head>
    <body>
    
        <fmt:setTimeZone value="${sessionScope.gmt}"/>
        <p>${sessionScope.gmt}</p>
        <jsp:directive.include file="/INC/header.inc"/>
        <div class="main-container">
                <h2><fmt:message key="Elija"/></h2>
            <form action="<c:out value="${contextPath}" />/EleccionController" method="post">
                <p><fmt:message key="Seleccione_Seguro"/></p><br />
                <input type="checkbox" name="seguro" value="continente" checked /><fmt:message key="Seguro_edificios"/><br />
                <input type="checkbox" name="seguro" value="contenido" checked /><fmt:message key="Seguro_contenido"/><br /><br />
                <button type="submit" name="submit" value="submit"><fmt:message key="Continuar"/></button>
            </form>
        </div>
    </body>
</html>
</fmt:bundle>
