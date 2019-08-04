<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<% 
	String w = request.getParameter("width") != null ? request.getParameter("width") : "4";
	String h = request.getParameter("height") != null ? request.getParameter("height") : "4";
	int width = Integer.parseInt(w);
	int height = Integer.parseInt(h);
%>
<%!
	
%>
<%!
	
	public String GetColor(int x, int y) {
		if(x%2 == 0)
			return y%2 == 0 ? "black" : "blue";
		return y%2 == 0 ? "blue" : "black";
	}
%>

	<div>
		<h1>Checkerboard: <%= width %> x <%= height %></h1>
		<% for(int row = 0; row < height; row++){ %>
			<div class="row">
				<% for(int col = 0; col < width; col++){ %>
					<div data= <%= col %> class="square <%= GetColor(row, col) %>"></div>
				<% } %>
			</div>
		<% } %>
	</div>
</body>
</html>