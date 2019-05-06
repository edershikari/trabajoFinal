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
		ArrayList<FilmsClass> list = (ArrayList<FilmsClass>) request.getAttribute("list");
	%>
	<form action="CShowDirector" method="get" class="" style=height:670px;>
	
		<table  class="table col-6 offset-2 table-responsive h-75 ">
			<tr>
				<td>TITLE</td>
				<td>YEAR</td>
				<td>DIRECTOR INFO</td>
				<td>POSTER</td>
				<td>IMDB</td>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getTitle() %></td>
				<td><%=list.get(i).getYear()%></td>
				<td><input type="radio" name="rd" value="<%=list.get(i).getDirector() %>" /></td>
				<td><img src="<%=list.get(i).getPoster()%>" style="max-width:100px"/></td>
				<td><a href="https://www.imdb.com/title/<%=list.get(i).getIMDB()%>">IMDB evaluation</a></td>
				
			</tr>
			<%
			}
			%>
		</table>
	<input type="submit" value="Show Director" class="col-3 offset-3 btn btn-primary"/>
	</form>	
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>
