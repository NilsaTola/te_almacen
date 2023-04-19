<%@page import="com.emergentes.modelo.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
if(session.getAttribute("almacen")== null){
    Arraylist<Producto> lisaux = new ArrayList<Producto>();
    session.setAttribute("almacen", lisaux);
}
if(session.getAttribute("cates")==null){
    ArrayList<Categoria> liscat = new ArrayList<Categoria>();
    
    liscat.add(new Categoria(1, "Bebidas"));
    liscat.add(new Categoria(2, "Galletas"));
    liscat.add(new Categoria(3, "Golosinas"));
    session.setAttribute("cates", liscat);
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Almacen</h1>
        <ul>
            <li><a href="productos.jsp">Producto</a></li>
            <li><a href="categorias.jsp">Categorias</a></li>

        </ul>

    </body>
</html>
