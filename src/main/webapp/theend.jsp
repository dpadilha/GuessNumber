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
		<% if(msg != null){ %>
			<div class="info">
				<h2><% out.print(msg); %></h2>
			</div>
		<% } %>

	</div>

</body>
</html>