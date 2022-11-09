
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>)session.getAttribute("listaprod");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Gestión de Producto</title>
    </head>
    <body>
        <br>
        <br>
        <table border="1" style="margin: 0 auto;">
            <tr>
                <td> <strong> SEGUNDO PARCIAL TEM-742 </strong> <br>
                    <strong>Nombre:</strong> OTOYA SURCO JULIAN HILARIO <br>
                    <strong>Carnet:</strong> 4925296 LP <br>
                </td>
            </tr>
        </table>
        
        <h1>Registro de Productos</h1>
        
        <a href="MainControlador?op=nuevo">Nuevo Producto</a>
        <br>
        <br>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if(lista != null){
                    for(Producto item : lista){  
            %>
       
            <tr>
                <td> <%= item.getId() %> </td>
                <td> <%= item.getDescripcion()%> </td>
                <td> <%= item.getCantidad()%> </td>
                <td> <%= item.getPrecio()%> </td>
                <td> <%= item.getCategoria()%> </td>
                <td> <a href="MainControlador?op=editar&id=<%=item.getId()%>">Editar</a> </td>
                <td> <a href="MainControlador?op=eliminar&id=<%=item.getId()%>"
                        onclick='return confirm("Esta seguro de eliminar el registro ?");'>Eliminar</a> </td>
            </tr>
            
            <%
                    }
                }
            %>
        </table>
    </body>
</html>

