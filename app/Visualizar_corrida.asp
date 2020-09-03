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
				url: '../busca/busca_corridas.asp',
				type: 'POST',
				datatype: 'application/json',
				success: function (data) {
					var res = jQuery.parseJSON(data);
					var count = res.json.length - 1;
					if (res.json.length > 0) {
						for (var i = 0; i <= count; i++) {
							var html = '<tr>';
							html = html + '<td>' + res.json[i].nomemoto + '</td>';
							html = html + '<td>' + res.json[i].nomepass + '</td>';
							html = html + '<td>' + res.json[i].valor + '</td>';
							html = html + '<td class="hidden" style="background-color:#ffffff; border-color: #ffffff;"><input name="corridas[]" class="corridas" type="hidden" ' +
								'value="' + res.json[i].nomemoto +
								'|' + res.json[i].nomepass +
								'|' + res.json[i].valor +
								'" /></td>';
							html = html + '</tr>';

							$("#tbCorridas").append(html);
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
            <h2 class="featurette-heading">Corridas</h2>
			<input type="text" name="id" id="id" value="" class="form-control"  hidden />
          </div>
        </div>
		<br>
		<br>
		<fieldset>
			<div class="table-responsive">
				<table class="table table-bordered table-striped" id="tbCorridas">
					<thead>
						<tr style="background-color:rgba(0, 140, 255, 0.7); color:white">
							<th class="text-center">Motorista</th>
							<th class="text-center">Passageiro</th>
							<th class="text-center">Valor</th>
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
						<a type="button" style=" float:left;color:white" href="Cadastrar_corrida.asp" class="btn btn-primary">&nbsp; Nova&nbsp; </a>
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