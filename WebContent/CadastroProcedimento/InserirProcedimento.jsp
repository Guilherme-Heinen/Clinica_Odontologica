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
	String nome = request.getParameter("NOME");
	String descricao = request.getParameter("DESCRICAO");
	String tempo = request.getParameter("TEMPO");
	
	BancoDeDados bancoDeDados = new BancoDeDados();
	bancoDeDados.conectar();
	
	bancoDeDados.inserirProcedimento(nome, descricao, tempo);
	%>	
	
Procedimento inserido com sucesso.
<form action="CadastroProcedimentos.jsp" method="get">
		
		<input type="submit" value="Voltar"></input><br  />
	</form>
	
</body>
</html>