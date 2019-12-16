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
	String cpf = request.getParameter("CPF");
	String estado_civil = request.getParameter("ESTADO_CIVIL");
	String cep = request.getParameter("CEP");
	String logradouro = request.getParameter("LOGRADOURO");
	String numero = request.getParameter("NUMERO");
	String complemento = request.getParameter("COMPLEMENTO");
	String bairro = request.getParameter("BAIRRO");
	String cidade = request.getParameter("CIDADE");
	String estado = request.getParameter("ESTADO");
	String data_nascimento = request.getParameter("DATA_NASCIMENTO");
	String email = request.getParameter("EMAIL");
	String telefone = request.getParameter("TELEFONE");
	String celular = request.getParameter("CELULAR");
	
	BancoDeDados bancoDeDados = new BancoDeDados();
	bancoDeDados.conectar();
	
	bancoDeDados.inserirPaciente(nome, cpf, estado_civil, cep, logradouro, numero, complemento, bairro, cidade, estado, data_nascimento, email, telefone, celular);
	%>
	
Paciente inserido com sucesso.
<form action="CadastroPacientes.jsp" method="get">
		
		<input type="submit" value="Voltar"></input><br  />
	</form>
	
</body>
</html>