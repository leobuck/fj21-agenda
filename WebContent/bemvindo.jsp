<html lang="pt-br">
	<head>
		<title>Bem Vindo</title>
		<meta charset="utf-8">
	</head>
	<body>
		<%-- Coment�rio em JSP aqui: nossa primeira p�gina JSP --%>
		
		<%
			String mensagem = "Bem Vindo ao sistema de agenda do FJ-21!";
		%>
		<% out.println(mensagem); %>
		<br>
		<%
			String desenvolvido = "Desenvolvido por Leo";
		%>
		<%= desenvolvido %>
		<br>
		<%
			System.out.println("Tudo foi executado!");
		%>
	</body>
</html>