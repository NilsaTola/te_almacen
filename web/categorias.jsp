<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Categoria"%>
<%
  ArrayList<Categoria> categorias = (ArrayList<Categorias>) session.getAttribute("cates");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Categorias</h1>
        <p><a href="CategoriaController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th></th>
                <th></th>
            </tr>
            <%
            for(Categoria item : categoria){  
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getDescripcion()%></td>
                <td><a href="CategoriaController?op=editar&id=<%= item.getId()%>">Editar</a></td>
                <td><a href="CategoriaController?op=eliminar&id=<%= item.getId()%>">Eliminar</a></td>
            </tr>
             <%              
            }
            %>
        </table>
    </body>
</html>
