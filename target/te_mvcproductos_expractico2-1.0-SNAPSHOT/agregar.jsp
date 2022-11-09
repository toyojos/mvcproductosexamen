<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto item = (Producto) request.getAttribute("miProducto");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
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
        <h1> <%= (item.getId() == 0) ? "Nuevo Registro" : "Editar Registro"%> </h1>

        <form action="MainControlador" method="POST">
            <input type="hidden" name="id" value="<%= item.getId()%>">

            <table>
                <tr>
                    <td>Descripcion</td>
                    <td> <input type="text" name="descripcion" value="<%= item.getDescripcion()%>"> </td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td> <input type="text" name="cantidad" value="<%= item.getCantidad()%>"> </td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td> <input type="text" name="precio" value="<%= item.getPrecio()%>"> </td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td> <input type="text" name="categoria" value="<%= item.getCategoria()%>"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Enviar"> </td>
                </tr>
            </table>

        </form>

    </body>
</html>

