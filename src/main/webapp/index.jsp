<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
</head>
<body>
	<style>
		*{
			margin: 0;
			padding: 0;
			font-family: Helvetica;
		}

		body{
			background-color: #a0a0a0;
		}
		main form{
			margin-top: 40px;
		}
		main form input[type=number]{
			width: 110px;
			padding: 15px;
			border-radius: 3px;
			border: solid 1px #ccc;
			margin: 0 auto;
			display: block;
			background-color: #f7f7f7;
			position:absolute;
			left:50%;
			top:40%;
			margin-left:-110px;
			margin-top: 30px;
		}
		main form input[type=submit]{
			text-align: center;
			padding: 10px 50px;
			background-color: #f25657;
			color: #fff;
			border: solid 1px #ba4344;
			border-radius: 3px;
			margin-top: 20px;
			cursor: pointer;
			font-size: 12pt;
			position:absolute;
			left:50%;
			top:50%;
			margin-left:-110px;
			
			
		}
		main form input[type=submit]:focus, main form input[type=number]:focus{
			box-shadow: 0;
			outline: 0;
		}
		main h3{
			margin-top: 20px;
		}

		main form{
			margin-top: 40px;
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
	</style>
	<div class="container">
		<main>
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
		</main>
		
	</div>

</body>
</html>