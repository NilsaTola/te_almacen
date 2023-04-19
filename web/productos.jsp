<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="java.util.List"%>

<%
 List<Producto> productos = (List<Producto>) session.getAttribute("almacen");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Productos</h1>
        <p><a href="ProductoController?op=nuevo">Nuevo</a></p>
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
            <%
               if(productos != null){
                   for(Producto item : productos){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getPrecio()%></td>
                <td><%= item.getCate().getDescripcion()%></td>
                <td><a href="ProductoController?op=editar&id=<%= item.getId()%>">Editar</a></td>
                <td><a href="ProductoController?op=eliminar&id=<%= item.getId()%>">Eliminar</a></td>
            </tr>
             <% 
                   }
               }
            %>
        </table>
        <p><a href="index.jsp">Ir al inicio</a></p>
        
    </body>
</html>
