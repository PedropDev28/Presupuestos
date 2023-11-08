<%-- 
    Document   : edificio
    Created on : 25 oct. 2023, 10:04:55
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
        <title><fmt:message key="Poliza_Edificios"/></title>
    </head>
    <body>
        <jsp:directive.include file="/INC/header.inc"/>
        <div class="main-container">
            <h2><fmt:message key="Detalles_edificios"/></h2>
            <form action="<c:out value='${contextPath}' />/ContinenteController" method="post">
                <p><fmt:message key="Rellene_edificio"/></p>
                <label for="tipo"><fmt:message key="Tipo"/></label>
                <select name="tipo" id="tipo">
                    <option value="Piso" select><fmt:message key="Piso"/></option>
                    <option value="Casa"><fmt:message key="Casa"/></option>
                    <option value="Adosado"><fmt:message key="Adosado"/></option>
                    <option value="Duplex"><fmt:message key="Duplex"/></option>
                    <option value="Chalet"><fmt:message key="Chalet"/></option>
                </select><br>
                <label for="n_hab"><fmt:message key="Numero"/></label>
                <select name="n_hab" id="n_hab">
                    <option value="1" select>1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5"><fmt:message key="Mas5"/></option>
                </select><br>
                <label for="fecha"><fmt:message key="Fecha"/></label>
                <select name="fecha" id="fecha">
                    <option value="1949" select><fmt:message key="antes1950"/></option>
                    <option value="1950"><fmt:message key="entre1950"/></option>
                    <option value="1991"><fmt:message key="entre1991"/></option>
                    <option value="2006"><fmt:message key="entre2006"/></option>
                    <option value="2016"><fmt:message key="despues2015"/></option>
                </select><br>
                <label for="constr"><fmt:message key="Tipo_construccion"/></label>
                <select name="tipo_construccion" id="constr">
                    <option value="Madera" select><fmt:message key="Madera"/></option>
                    <option value="Hormigon"><fmt:message key="Hormigon"/></option>
                </select><br>
                <label for="valor"><fmt:message key="Valor_vivienda"/></label>
                <select name="valor_estimado" id="valor">
                    <option value="25000" select><fmt:message key="menos50000"/></option>
                    <option value="50001"><fmt:message key="entre50001"/></option>
                    <option value="80001"><fmt:message key="entre80001"/></option>
                    <option value="100001"><fmt:message key="entre100001"/></option>
                    <option value="125000"><fmt:message key="mas150000"/></option>
                </select><br>
                <button type="submit" name="button" value="enviar"><fmt:message key="Enviar"/></button>
            </form>
        </div>
    </body>
</html>
</fmt:bundle>
