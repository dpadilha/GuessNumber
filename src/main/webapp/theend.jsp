<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
			font-family: Helvetica;
		}

		body{
			background-color: #a0a0a0;
		}
		main{
			text-align: center;
			margin-top: 40px;
			color: #fff;
		}

		main .info{
			width: 450px;
			background-color: #f25657;
			border: solid 1px #ba4344;
			padding: 40px;
			margin: 0 auto;
			border-radius: 3px;
			box-shadow: 0 0 20px rgba(0,0,0,0.1);
		}
		header h2{
			color: #fff;
		}
	</style>
	<div class="container">
		<main>
			<% String msg = (String) request.getAttribute("message");%>
			<% if(msg != null){ %>
			<div class="info">
				<h2><% out.print(msg); %></h2>
			</div>
			<% } %>
			<a href="/GuessNumber/jogar">Jogar novamente</a>
		</main>
		
	</div>

</body>
</html>