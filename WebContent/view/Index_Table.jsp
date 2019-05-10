<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
	<%
		ArrayList<ProductoClass> list = (ArrayList<ProductoClass>) request.getAttribute("list");
	%>
	<form  class="" style=height:670px;>
	
		<table  class="table col-6 offset-2 table-responsive h-75 ">
			<tr>
				<td>ID_PRODUCTO</td>
				<td>NOMBRE</td>
				<td>DESCRIPCION</td>
				<td>PRECIO</td>
				<td>CANTIDAD</td>
				<td>IMAGEN</td>
				<td>ID_CATEGORIA</td>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getId_producto() %></td>
				<td><%=list.get(i).getNombre()%></td>
				<td><%=list.get(i).getDescripcion() %></td>
				<td><%=list.get(i).getPrecio() %></td>
				<td><%=list.get(i).getCantidad() %></td>
				<td><img src="<%=list.get(i).getImagen()%>" style="max-width:100px"/></td>
				<td><%=list.get(i).getId_categoria() %></td>
				
				
			</tr>
			<%
			}
			%>
		</table>
	
	</form>	
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="js/script.js"></script>
</html>
