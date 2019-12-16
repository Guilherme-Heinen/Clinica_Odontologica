
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
	
	
	
	
    <title>Cadastro de Usuários</title>

   
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
                        <h2 id="titulo" style="text-align: center; line-height: 60px; color: black;">Cadastro de Usuários</h2>
                    </div>
                </div>
            </div>
        </div>
        <h3>Cadastro</h3>
        <form action = "InserirUsuario.jsp">
            <div class="form-row">
            	<div class="col-2">
                    <div class="form-group">
                        <label>ID</label>
                        <input id="id" type="text" name="id" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label>Nome</label>
                        <input id="NOME" type="text" name="NOME" class="form-control" />
                    </div>
                </div>
            </div> 
            <div class="form-row">
                <div class="col-3">
                    <div class="form-group">
                        <label>Login</label>
                        <input id="LOGIN" type="text" name="LOGIN" class="form-control" />
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label>Senha</label>
                        <input id="SENHA" type="password" name="SENHA" class="form-control" />
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label>CPF</label>
                        <input id="CPF" type="text" name="CPF" class="form-control" />
                    </div>
                </div> 
                <div class="col-3">
                    <div class="form-group">
                        <label>Telefone</label>
                        <input id="TELEFONE" type="text" name="TELEFONE" class="form-control" />
                    </div>
                </div> 
            </div>
            <div class="form-row">
                <div class="col-2">
                    <div class="form-group">
                        <label>Data de Nascimento</label>
                        <input id="NASCIMENTO" type="text" name="NASCIMENTO" class="form-control" />
                    </div>
                </div>
                <div class="col-2">
                    <div class="form-group">
                        <label>CEP</label>
                        <input id="CEP" type="text" name="CEP" class="form-control" />
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label>Logradouro</label>
                        <input id="LOGRADOURO" type="text" name="LOGRADOURO" class="form-control" />
                    </div>
                </div> 
                <div class="col-1">
                    <div class="form-group">
                        <label>Número</label>
                        <input id="NUMERO" type="text" name="NUMERO" class="form-control" />
                    </div>
                </div> 
            </div>
            <div class="form-row">
                <div class="col-3">
                    <div class="form-group">
                        <label>Complemento</label>
                        <input id="COMPLEMENTO" type="text" name="COMPLEMENTO" class="form-control" />
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label>Bairro</label>
                        <input id="BAIRRO" type="text" name="BAIRRO" class="form-control" />
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label>Cidade</label>
                        <input id="CIDADE" type="text" name="CIDADE" class="form-control" />
                    </div>
                </div> 
                <div class="col-3">
                    <div class="form-group">
                        <label>Estado</label>
                        <input id="ESTADO" type="text" name="ESTADO" class="form-control" />
                    </div>
                </div> 
            </div>
            <div class="form-row">
                <div class="col-4">
                    <div class="form-group">
                        <label>E-mail</label>
                        <input id="EMAIL" type="text" name="EMAIL" class="form-control" />
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
                            <button class="btn btn-secondary">Limpar</button>
                            <a href="#" class="btn btn-danger">Cancelar</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
                        
</body>

</html>
