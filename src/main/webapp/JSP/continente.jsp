<%-- 
    Document   : edificio
    Created on : 25 oct. 2023, 10:04:55
    Author     : Pedro Lazaro
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/INC/metas.inc"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:out value="${contextPath}" />/CSS/style.css" type="text/css" />
        <link rel="shortcut icon" href="<c:out value="${contextPath}" />/IMG/icon.ico" />
        <title>Poliza Edificios</title>
    </head>
    <body>
        <%@include file="/INC/header.inc"%>
        <div class="main-container">
            <h2>Detalles de la poliza de edificios</h2>
            <form action="<c:out value='${contextPath}' />/ContinenteController" method="post">
                <p>Rellene el siguiente formulario dependiendo de donde vive, una vez que termine pulse el boton enviar</p>
                <label for="tipo">Tipo de vivienda:</label>
                <select name="tipo" id="tipo">
                    <option value="Piso" select>Piso</option>
                    <option value="Casa">Casa</option>
                    <option value="Adosado">Adosado</option>
                    <option value="Duplex">Duplex</option>
                    <option value="Chalet">Chalet</option>
                </select><br>
                <label for="n_hab">Número de habitaciones:</label>
                <select name="n_hab" id="n_hab">
                    <option value="1" select>1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5 o mas</option>
                </select><br>
                <label for="fecha">Fecha de construcción:</label>
                <select name="fecha_construccion" id="fecha">
                    <option value="1949" select>antes de 1950</option>
                    <option value="1950">entre 1950 y 1990</option>
                    <option value="1991">entre 1991 y 2005</option>
                    <option value="2006">entre 2006 y 2015</option>
                    <option value="2016">despues de 2015</option>
                </select><br>
                <label for="constr">Tipo de construcción:</label>
                <select name="tipo_construccion" id="constr">
                    <option value="Madera" select>Madera</option>
                    <option value="Hormigon">Hormigón</option>
                </select><br>
                <label for="valor">Valor estimado de la vivienda(€):</label>
                <select name="valor_estimado" id="valor">
                    <option value="25000" select>menos de 50000</option>
                    <option value="50001">entre 50001 y 80000</option>
                    <option value="80001">entre 80001 y 100000</option>
                    <option value="100001">entre 100001 y 150000</option>
                    <option value="125000">mas de 150000</option>
                </select><br>
                <input class="boton" type="submit" value="Enviar">
            </form>
        </div>
    </body>
</html>
