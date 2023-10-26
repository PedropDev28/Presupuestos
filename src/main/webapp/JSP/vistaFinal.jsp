<%-- 
    Document   : vistaFinal
    Created on : 25 oct. 2023, 10:05:22
    Author     : Pedro Lazaro
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">
<html>
    <head>
        <c:set var="eleccion" value="${sessionScope.eleccion}"/>
        <c:set var="continente" value="${sessionScope.continente}"/>
        <c:set var="contenido" value="${requestScope.contenido}"/>
        <c:set var="total" value="${continente.getCuota() + contenido.getCuota()}"/>
        <%@include file="/INC/metas.inc"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value="${contextPath}" />/CSS/style.css" type="text/css" />
        <link rel="shortcut icon" href="<c:out value="${contextPath}" />/IMG/icon.ico" />
        <title>Cuota Final</title>
    </head>
    <body>
        <%@include file="/INC/header.inc"%>
        <div class="main-container">
            <div class="content">
                <h2>Cuota Final para su poliza</h2>
                <p>A continuación se muestra lo que usted ha elegido, así como la cuota final para esa eleccion</p>
                <c:if test="${eleccion.isContinente()}">
                <div class="edificio">
                    <h3>Edificio</h5>
                    <ul>
                        <li>Tipo Edificio: ${continente.getTipo()}</li>
                        <c:choose>
                            <c:when test="${continente.getN_hab() == 5}">
                                <li>Número de Habitaciones: 5 o mas</li>
                            </c:when>
                            <c:otherwise>
                                <li>Número de Habitaciones: ${continente.getN_hab()}</li>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${continente.getFecha() == 1949}">
                                <li>Fecha de Construcción: antes de 1950</li>
                            </c:when>
                            <c:when test="${continente.getFecha() == 1950}">
                                <li>Fecha de Construcción: entre 1950 y 1990</li>
                            </c:when>
                            <c:when test="${continente.getFecha() == 1991}">
                                <li>Fecha de Construcción: entre 1991 y 2005</li>
                            </c:when>
                            <c:when test="${continente.getFecha() == 2006}">
                                <li>Fecha de Construcción: entre 2006 y 2015</li>
                            </c:when>
                            <c:otherwise>
                                <li>Fecha de Construcción: después de 2015</li>
                            </c:otherwise>
                        </c:choose>
                        <li>Tipo de Construcción: ${continente.getTipo_construccion()}</li>
                        <c:choose>
                            <c:when test="${continente.getValor() == 25000}">
                                <li>Valor estimado en el mercado(€): menos de 50.000</li>
                            </c:when>
                            <c:when test="${continente.getValor() == 50001}">
                                <li>Valor estimado en el mercado(€): entre 50.001 y 80.000</li>
                            </c:when>
                            <c:when test="${continente.getValor() == 80001}">
                                <li>Valor estimado en el mercado(€): entre 80.001 y 100.000</li>
                            </c:when>
                            <c:when test="${continente.getValor() == 100001}">
                                <li>Valor estimado en el mercado(€): entre 100.001 y 150.000</li>
                            </c:when>
                            <c:otherwise>
                                <li>Valor estimado en el mercado(€): más de 150.000</li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
                </c:if>
                <c:if test="${eleccion.isContenido()}">
                <div class="contenido">
                    <h3>Contenido</h3>
                    <ul>
                        <c:choose>
                            <c:when test="${contenido.isDanios()}">
                                <li>Cubrir daños accidentales: Sí</li>
                            </c:when>
                            <c:otherwise>
                                <li>Cubrir daños accidentales: No</li>
                            </c:otherwise>
                        </c:choose>
                        <li>Cantidad a asegurar: ${contenido.getCantidad()}€</li>
                        <c:choose>
                            <c:when test="${contenido.getFranquicia() == 'Ninguna'}">
                                <li>Franquicia: ${contenido.getFranquicia()}</li>
                            </c:when>
                            <c:otherwise>
                                <li>Franquicia: ${contenido.getFranquicia()}€</li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
                </c:if>
                <div class="total">
                    <h3>Total Cuota</h3>
                    <p><c:out value="${total}"/>€</p>
                </div>
                 <button class="boton" onclick="location.href='index.jsp'">Volver</button>
            </div>            
    </div>
    </body>
</html>
