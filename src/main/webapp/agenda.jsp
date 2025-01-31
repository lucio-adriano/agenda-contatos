<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>

<%
@SuppressWarnings("unchecked")
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");

/** for (int i = 0; i < lista.size(); i++) {
*		out.println(lista.get(i).getId());
*   }
*/
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/svg+xml" href="./imagens/favicon.png" />
<link rel="stylesheet" type="text/css" href="style.css">
<title>Agenda de contatos</title>
</head>
<body>
	<h1>Agenda de contatos</h1>
	<a href="novo.html" class="botao1">Novo contato</a>
	<a href="report" class="botao2" target="_blank">Relatório</a>
	<table id="tabela">
		<thead>
			<tr>
				<th>id</th>
				<th>Nome</th>
				<th>Fone</th>
				<th>Email</th>
				<th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>
			<tr>
				<td><%=lista.get(i).getId()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getFone()%></td>
				<td><%=lista.get(i).getEmail()%></td>
				<td><a href="select?id=<%=lista.get(i).getId()%>"
					class="botao1">Editar</a> <a
					href="javascript: confirmar(<%=lista.get(i).getId()%>)"
					class="botao2">Excluir</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<script src="js/confirmador.js"></script>
</body>
</html>