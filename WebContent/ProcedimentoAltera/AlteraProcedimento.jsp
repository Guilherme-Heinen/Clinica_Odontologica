<%@ page import="pacote.BancoDeDados" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>


<% 	
	String id = request.getParameter("ID");
	String nome = request.getParameter("NOME");
	String descricao = request.getParameter("DESCRICAO");
	String tempo = request.getParameter("TEMPO");
	
	BancoDeDados bancoDeDados = new BancoDeDados();
	bancoDeDados.conectar();
	
	bancoDeDados.editarProcedimento(id, nome, descricao, tempo);
	%>	
	
Procedimento alterado com sucesso.
<form action="AlterarProcedimento.jsp" method="get">
		
		<input type="submit" value="Voltar"></input><br  />
	</form>
	
</body>
</html>