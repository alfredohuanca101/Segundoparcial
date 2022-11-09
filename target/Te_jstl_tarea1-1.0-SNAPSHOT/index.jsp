<%@page import="com.emergentes.modelo.Tarea"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.emergentes.modelo.GestorTareas" %>
<%
if (session.getAttribute("agenda") == null){
    GestorTareas objeto1 = new GestorTareas();
    objeto1.insertarTarea(new Tarea(1,"Coca cola","100","10","Bebidas"));
    objeto1.insertarTarea(new Tarea(2,"Pepsi","50","11","Bebidas"));
    objeto1.insertarTarea(new Tarea(3,"Frack","80","150","Galletas"));
    objeto1.insertarTarea(new Tarea(4,"Ceranitas","20","10","Galletas"));
    session.setAttribute("agenda", objeto1);
    }    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP - Tareas</title>
    </head>
    <body>
        <h2>Segundo parcial</h2>
        <h3>Nombre: Alfredo Huanca Chui</h3>
        <h3>Carnet: 7033016L.P</h3>
        <h1>Productos</h1>
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td> 
                    <td>${item.precio}</td>
                    <td>${item.categiria}</td> 
                   <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                   <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
                </tr> 
            </c:forEach>
        </table>
    </body>
</html>
