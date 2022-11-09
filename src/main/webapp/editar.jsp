<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP - Tareas</title>
    </head>
    <body>
        <h1>
            <c:if test="${requestScope.op == 'nuevo'}" var="res" scope="request"> 
                Registro de
            </c:if>
            <c:if test="${requestScope.op == 'modificar'}" var="res" scope="request">
                Modificar
            </c:if>
                tarea
        </h1>
        <jsp:useBean id ="miTarea" scope="request" class="com.emergentes.modelo.Tarea" /> 
        <form action="Controller" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<jsp:getProperty name="miTarea" property="id" />" >
                    </td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="descripcion" value="<jsp:getProperty name="miTarea" property="descripcion" />" />
                    </td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="text" name="cantidad" value="<jsp:getProperty name="miTarea" property="cantidad" />" />
                    </td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="<jsp:getProperty name="miTarea" property="precio" />" />
                    </td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td>
                        <select name="categoria">
                            <option value="Bebidas"
                                    <c:if test="${miTarea.categiria == 'Bebidas'}"
                                          var="res" scope="request">
                                        selected
                                    </c:if>
                                        >Bebidas
                                
                            </option>
                            <option value="Galletas"
                                    <c:if test="${miTarea.categiria == 'Galletas'}"
                                          var="res" scope="request">
                                        selected
                                    </c:if>
                                        >Galletas
                                
                            </option>
                            <option value="Sereales"
                                    <c:if test="${miTarea.categiria == 'Sereales'}"
                                          var="res" scope="request">
                                        selected
                                    </c:if>
                                        >Sereales
                                
                            </option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" name="opg" values="${requestScope.op}" />
                        <input type="hidden" name="op" value="grabar" />
                    </td>
                    <td><input type="submit" value="Enviar"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
