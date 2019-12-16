<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <script type="text/javascript" src="assets/js/jquery-3.4.0.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="assets/js/customProj.js"></script>
    <script type="text/javascript" src="assets/js/jquery.mask.js"></script>
	
	
	
	
    <title>Cadastro de Procedimentos</title>

   
</head>

<body>

    <div class="container">
        <div style="background-color: #C0D9D9">
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-2" style="padding-left: 60px; padding-top: 20px">
                        <a href="#"> <img src="assets/img/logo.png" id="logo" width="120" height="80"/></a>
                    </div>
                    <div class="col-sm-10">
                        <h2 id="titulo" style="text-align: center; line-height: 60px; color: black;">Cadastro de Procedimentos</h2>
                    </div>
                </div>
            </div>
        </div>
        <h3>Cadastro</h3>
        <form name="formulario_procedimentos" action="InserirProcedimento.jsp" method="post">
            <div class="form-row">
            	<div class="col-2">
                    <div class="form-group">
                        <label>ID</label>
                        <input id="ID" type="text" name="ID" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label>Procedimento</label>
                        <input id="NOME" type="text" name="NOME" class="form-control" />
                    </div>
                </div> 
            </div> 
            <div class="form-row">
                <div class="col">
                    <div class="form-group">
                        <label>Descrição</label>
                        <input id="DESCRICAO" type="text" name="DESCRICAO" class="form-control" />
                    </div>
                </div>
                <div class="col-2">
                    <div class="form-group">
                        <label>Tempo Médio</label>
                        <input id="TEMPO" type="text" name="TEMPO" class="form-control" />
                    </div>
                </div> 
            </div>
            <div class="form-row">
            	<div class="col-10">
                    
                </div>
            	<div class="col">
                    <div class="form-group">
                        <label>Status</label>
                    </div>
                </div>
    			<div class="col">
                    <div class="form-check-inline">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" value="">Inativar
                        </label>
                    </div>
                </div>
             </div> 
            <div class="form-row">
                <div class="col" align="right">
                    <div class="form-group">
                        <div class="btn-group">
                            <input type="submit" class="btn btn-success" value="Salvar">
                            <button class="btn btn-secondary">Buscar</button>
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>
                        
</body>

</html>

