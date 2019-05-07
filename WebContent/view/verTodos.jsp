<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Productos</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
</head>
<body>

<!-- igrediente bat ezabatzen denean errore bat jaurtitzen da -->
${error}

<div class="container">
<!-- 	<header> -->
<%-- 		<nav><a class="btn btn-primary" href="${pageContext.request.contextPath}/alimento/crear">+ Alimento</a></nav> --%>
<!-- 	</header> -->
	<div class="row">
		<div class="col">
		<table class="table table-striped">
		<thead>
			<tr>
				
				<th>imagen</th>
				<th>descripcion</th>
				<th>nombre</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${productos}" var="producto">
				<tr>
					<td><img style="max-width:100px" src="${producto.imagen}"></td>
					<td>${producto.nombre}</td>
					<td>${producto.descripcion}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
		</div>
	</div>
</div>
	
	<script src="http://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>