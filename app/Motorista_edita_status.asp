<!--#Include File="../../Desafio/conexao/conexao.asp"-->

<%
    
    dim Conexao
	call openDB()
	
		id = Request.QueryString("id")
		
	sqlQ= "select * from motoristas where idMot = '" & id & "'; "
	
	Set rsBus = Conexao.execute(sqlQ)
		
	If rsBus("status") = 0 Then 
		'Insere no BD
		sql =  "update motoristas set status = 1 where idMot = '" & id & "'; "
	Else
		'Insere no BD
		sql =  "update motoristas set status = 0 where idMot = '" & id & "'; "
	End If
	
	
	' response.write(sql)
	
	Set rsEd = nothing
	
	'Execute
	Set rsEd = Conexao.execute(sql)
	
	%>

<!DOCTYPE html>
	<html lang="pt-BR">
	<head>
		<meta http-equiv="Content-Type" content="text/html">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
		<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
		<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script src="../../bootstrap-datepicker/bootstrap-datepicker.js"></script>
		<script src="../../bootstrap-datepicker/i18n/bootstrap-datepicker.pt-BR.js"></script>
		<script src="../../jquery.mask/jquery.mask.js"></script>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	</head>
	<body class="body">
	<br>
		<form method="post" action="Visualizar_motorista.asp" class="form-horizontal" style="float:center" style="float:center; margin-left:20%; margin-right:20%; margin-top:10%">
			<article class="login-box">
				<div class="box box-success">
					<div class="box-body">
						<div class="no-margin-bottom">
							<div class="alert alert-success">Status alterado com sucesso!</div>
						</div>
					</div>
					<div class="box-footer text-right">
						<button type="submit" class="btn btn-primary"><i class="fa fa-arrow-right"></i>&nbsp; OK</button>
					</div>
				</div>
			</article>
		</form>
	</body>
</html>	