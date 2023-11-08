<%-- 
    Document   : vistaFinal
    Created on : 25 oct. 2023, 10:05:22
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
        <c:set var="eleccion" value="${sessionScope.eleccion}"/>
        <c:set var="continente" value="${sessionScope.continente}"/>
        <c:set var="contenido" value="${requestScope.contenido}"/>
        <c:set var="total" value="${continente.getCuota() + contenido.getCuota()}"/>
        <jsp:directive.include file="/INC/metas.inc"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value="${contextPath}" />/CSS/style.css" type="text/css" />
        <link rel="shortcut icon" href="<c:out value="${contextPath}" />/IMG/icon.ico" />
        <title>Cuota Final</title>
    </head>
    <body>
        <jsp:directive.include file="/INC/header.inc"/>
        <div class="main-container">
            <div class="content">
                <h2><fmt:message key="Cuota_Final_poliza"/></h2>
                <p><fmt:message key="A_continuacion_datos"/></p>
                <c:if test="${eleccion.isContinente()}">
                <div class="edificio">
                    <h3><fmt:message key="Edificio"/></h5>
                    <ul>
                        <c:choose>
                            <c:when test="${continente.getTipo() == 'Piso'}">
                                <li><fmt:message key="Tipo"/><fmt:message key="Piso"/></li>
                            </c:when>
                            <c:when test="${continente.getTipo() == 'Casa'}">
                                <li><fmt:message key="Tipo"/><fmt:message key="Casa"/></li>
                            </c:when>
                            <c:when test="${continente.getTipo() == 'Adosado'}">
                                <li><fmt:message key="Tipo"/><fmt:message key="Adosado"/></li>
                            </c:when>
                            <c:when test="${continente.getTipo() == 'Duplex'}">
                                <li><fmt:message key="Tipo"/><fmt:message key="Duplex"/></li>
                            </c:when>
                            <c:otherwise>
                                <li><fmt:message key="Tipo"/><fmt:message key="Chalet"/></li>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${continente.getN_hab() == 5}">
                                <li><fmt:message key="Numero"/><fmt:message key="Mas5"/></li>
                            </c:when>
                            <c:otherwise>
                                <li><fmt:message key="Numero"/>${continente.getN_hab()}</li>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${continente.getFecha() == 1949}">
                                <li><fmt:message key="Fecha"/> <fmt:message key="antes1950"/></li>
                            </c:when>
                            <c:when test="${continente.getFecha() == 1950}">
                                <li><fmt:message key="Fecha"/> <fmt:message key="entre1950"/></li>
                            </c:when>
                            <c:when test="${continente.getFecha() == 1991}">
                                <li><fmt:message key="Fecha"/> <fmt:message key="entre1991"/></li>
                            </c:when>
                            <c:when test="${continente.getFecha() == 2006}">
                                <li><fmt:message key="Fecha"/> <fmt:message key="entre2006"/></li>
                            </c:when>
                            <c:otherwise>
                                <li><fmt:message key="Fecha"/> <fmt:message key="despues2015"/></li>
                            </c:otherwise>
                        </c:choose>
                        <li><fmt:message key="Tipo"/> ${continente.getTipo_construccion()}</li>
                        <c:choose>
                            <c:when test="${continente.getValor() == 25000}">
                                <li><fmt:message key="Valor_vivienda"/> <fmt:message key="menos50000"/></li>
                            </c:when>
                            <c:when test="${continente.getValor() == 50001}">
                                <li><fmt:message key="Valor_vivienda"/> <fmt:message key="entre50001"/></li>
                            </c:when>
                            <c:when test="${continente.getValor() == 80001}">
                                <li><fmt:message key="Valor_vivienda"/> <fmt:message key="entre80001"/></li>
                            </c:when>
                            <c:when test="${continente.getValor() == 100001}">
                                <li><fmt:message key="Valor_vivienda"/> <fmt:message key="entre100001"/></li>
                            </c:when>
                            <c:otherwise>
                                <li><fmt:message key="Valor_vivienda"/> <fmt:message key="mas150000"/></li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
                </c:if>
                <c:if test="${eleccion.isContenido()}">
                <div class="contenido">
                    <h3><fmt:message key="Contenido"/></h3>
                    <ul>
                        <c:choose>
                            <c:when test="${contenido.isDanios()}">
                                <li><fmt:message key="Cubrir_accidentales"/> <fmt:message key="Si"/></li>
                            </c:when>
                            <c:otherwise>
                                <li><fmt:message key="Cubrir_accidentales"/> <fmt:message key="No"/></li>
                            </c:otherwise>
                        </c:choose>
                        <li><fmt:message key="Cantidad"/> ${contenido.getCantidad()}€</li>
                        <c:choose>
                            <c:when test="${contenido.getFranquicia() == 'Ninguna'}">
                                <li><fmt:message key="Franquicia"/> <fmt:message key="Ninguna"/></li>
                            </c:when>
                            <c:otherwise>
                                <li><fmt:message key="Franquicia"/> ${contenido.getFranquicia()}€</li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
                </c:if>
                <div class="total">
                    <h3><fmt:message key="Total_Cuota"/></h3>
                    <p><c:out value="${total}"/>€</p>
                </div>
                <button class="boton" onclick="location.href='inicio.jsp'"><fmt:message key="Volver"/></button>
            </div>            
    </div>
    </body>
</html>
</fmt:bundle>