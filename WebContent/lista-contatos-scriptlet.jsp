<%@ page import="java.util.*,
			br.com.leo.agenda.dao.*,
			br.com.leo.agenda.modelo.*"  %>
			
<html lang="pt-br">
	<head>
		<title>Listagem de Contatos</title>
		<meta charset="utf-8">
	</head>
	<body>
		<table>
			<%
				ContatoDAO dao = new ContatoDAO();
				List<Contato> contatos = dao.getLista();
				
				for (Contato contato : contatos) {
			%>
				<tr>
					<td><%= contato.getNome() %></td>
					<td><%= contato.getEmail() %></td>
					<td><%= contato.getEndereco() %></td>
					<td><%= contato.getDataNascimento().getTime() %></td>
				</tr>
			<%
				}
			%>
		</table>
	</body>
</html>