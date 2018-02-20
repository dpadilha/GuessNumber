<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<% String msg = (String) request.getAttribute("message");%>
		<% Integer count  = (Integer) request.getAttribute("count");%>
		<% if(msg != null){ %>
			<div class="info">
				<h2><% out.print(msg); %></h2>
				<h3>Tentativas: <% out.print(count); %></h3>
			</div>
		<% } %>
		
			<form action="/GuessNumber/jogar" name="number" method="POST">
				<input type="number" name="numero" min="0" max="100"/>
				<input type="submit" name="send" value="Jogar"/>
			</form>
	</div>

</body>
</html>