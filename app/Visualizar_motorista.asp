<!--#Include File="../../Desafio/conexao/conexao.asp"-->
<!--#Include File="../../Desafio/app/nav.html"-->

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="../../bootstrap-datepicker/bootstrap-datepicker.js"></script>
	<script src="../../bootstrap-datepicker/i18n/bootstrap-datepicker.pt-BR.js"></script>
	<script src="../../jquery.mask/jquery.mask.js"></script>
  </head>
  <body>
	<script type="text/javascript">
		$(function () {
		
			//Exibição de corridas
			$.ajax({
				url: '../busca/busca_motoristas.asp',
				type: 'POST',
				datatype: 'application/json',
				success: function (data) {
					var res = jQuery.parseJSON(data);
					var count = res.json.length - 1;
					if (res.json.length > 0) {
						for (var i = 0; i <= count; i++) {
							var html = '<tr>';
							html = html + '<td>' + res.json[i].nome + '</td>';
							html = html + '<td>' + res.json[i].data + '</td>';
							html = html + '<td>' + res.json[i].cpf + '</td>';
							html = html + '<td>' + res.json[i].car + '</td>';
							if(res.json[i].sexo == "0"){
								html = html + '<td>' + "Feminino" + '</td>';
							}else{
								html = html + '<td>' + "Masculino" + '</td>';
							}
							if(res.json[i].status == "0"){
								html = html + '<td style="color:green">' + "Ativo" + '</td>';
							}else{
								html = html + '<td style="color:red">' + "Inativo" + '</td>';
							}
							if(res.json[i].status == "0"){
								html = html + '<td><a type="button" style="margin-left:13%" href="Motorista_edita_status.asp?id='+ res.json[i].id +'" class="btn btn-xs btn-danger j-inativa" >Inativar</a>';
							}else{
								html = html + '<td><a type="button" style="margin-left:18%" href="Motorista_edita_status.asp?id='+ res.json[i].id +'" class="btn btn-xs btn-success j-ativa" >Ativar</a>';
							}
							html = html + '<td class="hidden" style="background-color:#ffffff; border-color: #ffffff;"><input name="motoristas[]" class="motoristas" type="hidden" ' +
								'value="' + res.json[i].nome +
								'|' + res.json[i].data +
								'|' + res.json[i].cpf +
								'|' + res.json[i].car +
								'|' + res.json[i].sexo +
								'|' + res.json[i].status +
								'|' + res.json[i].id +
								'" /></td>';
							html = html + '</tr>';

							$("#tbMotoristas").append(html);
						}
					}
				}
			});
			
		});
		
	</script>
    <header>
      
    </header>
    <main role="main">
      <div class="container">
        <hr class="featurette-divider">
		<br>
		<br>
        <div class="row justify-content-start">
          <div class="col-md-12 text-center">
            <h2 class="featurette-heading">Motoristas</h2>
          </div>
        </div>
		<br>
		<br>
		<fieldset>
			<div class="table-responsive">
				<table class="table table-bordered table-striped" id="tbMotoristas">
					<thead>
						<tr style="background-color:rgba(0, 140, 255, 0.7); color:white">
							<th class="text-center">Nome</th>
							<th class="text-center">Data Aniversário</th>
							<th class="text-center">Cpf</th>
							<th class="text-center">Modelo do Carro</th>
							<th class="text-center">Sexo</th>
							<th class="text-center">Status</th>
							<th class="text-center">Ações</th>
						</tr>
					</thead>
					<tbody>								
					</tbody>
				</table>
			</div>
		</fieldset>
		<div class="row">
			<div class="col-sm-11">
				<div class="form-group">
					<div class="col-sm-12">
						<a type="button" style=" float:left;color:white;margin-left:-10px" href="Cadastrar_motorista.asp" class="btn btn-primary">&nbsp; Novo&nbsp; </a>
					</div>
				</div>
			</div>
		</div>
		<hr class="featurette-divider">
      </div><!-- /.container -->
	  <hr>
      <!-- FOOTER -->
      <footer class="container">
        <p class="float-right"><a href="#">Voltar ao topo</a></p>
        <p>© Camila Baldi, 2020 </p>
      </footer>
    </main>
  </body>
</html>