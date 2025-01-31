<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/svg+xml" href="./imagens/favicon.png" />
<link rel="stylesheet" type="text/css" href="style.css">
<title>Editar contatos</title>
</head>
<body>
	<h1>Editar contato</h1>
	<form name="formContato" action="update" method="get">
		<table>
			<tr>
				<td><input type="text" name="id" class="caixa1"
					readonly="readonly"
					value="<%out.print(request.getAttribute("id"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="nome" class="caixa1"
					value="<%out.print(request.getAttribute("nome"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="fone" class="caixa2"
					value="<%out.print(request.getAttribute("fone"));%>"></td>
			</tr>
			<tr>
				<td><input type="text" name="email" class="caixa1"
					value="<%out.print(request.getAttribute("email"));%>"></td>
			</tr>
		</table>
		<input class="botao1" type="button" value="Salvar" onclick="validar()">
	</form>
	<script src="js/validador.js"></script>
</body>
</html>