<!--#Include File="../../Desafio/conexao/conexao.asp"-->
<!--#Include File="../../Desafio/app/nav.html"-->

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
  </head>
  <body>
	<script type="text/javascript">
		$(function () {
		
			// carrega busca de motoristas
				$('#buscaMotorista').load('../busca/busca_motorista.asp');
				
				
			// carrega busca motorista
				$('#buscaPassageiro').load('../busca/busca_passageiro.asp');
				
			
			//Setar como 0, caso o campo fique vazio, assim não aparece 'NAN' ou da erro posteriormente
			$('.dinheiro').mask('000000000.00', {reverse: true});
			$('.dinheiro').blur(function(){
				if ($(this).val() == '')
					$(this).val(parseFloat(0).toFixed(2));
			});
			
		});
		
		
        function onlynumber(evt) {
		   var theEvent = evt || window.event;
		   var key = theEvent.keyCode || theEvent.which;
		   key = String.fromCharCode( key );
		   var regex = /^[0-9.]+$/;
		   if( !regex.test(key) ) {
			  theEvent.returnValue = false;
			  if(theEvent.preventDefault) theEvent.preventDefault();
		   }
		   
		}
		
		/*function ValidaCadastro(form) {
			alert("Processando solicitação, clique em OK para continuar");
		}*/
		
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
            <h2 class="featurette-heading">Cadastrar Corrida</h2>
          </div>
        </div>
		<hr class="featurette-divider">
      </div><!-- /.container -->
	  <div class="container"><!-- container form -->
	<!--<form id="FrmVenda" action="cadastrar_corrida_envia.asp" method="post" class="form-horizontal" onsubmit="return ValidaCadastro(this);" >-->
		<form id="FrmVenda" action="cadastrar_corrida_envia.asp" method="post" class="form-horizontal" >
			<article class="content">
				<div class="box-body">
					<div class="row">				
						<div class="col-sm-12">
							<div class="form-group">
								<div class="col-sm-12">
									<label class="">Motorista</label>
									<select class="form-control" id="buscaMotorista" name="motorista" required>
										<option value="">Selecione um Motorista</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">				
						<div class="col-sm-12">
							<div class="form-group">
								<div class="col-sm-12">
									<label class="">Passageiro</label>
									<select class="form-control" id="buscaPassageiro" name="passageiro" required>
										<option value="">Selecione um Passageiro</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<div class="col-sm-12">
									<label class="">Valor</label>
									<input type="text" name="valor" id="valor" value="" class="form-control dinheiro valor" onkeypress="return onlynumber();" required />
								</div>
							</div>
						</div>
					</div>	
				</div>
				<div class="box-footer text-right">
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<div class="col-sm-12">
									<a type="button" style="float:left; color:white" href="Visualizar_corrida.asp" class="btn btn-warning">&nbsp; Visualizar corridas&nbsp; </a>
									<button type="submit" name="SendRun" class="btn btn-primary">&nbsp; Salvar&nbsp; </button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
			<div class="modal fade" id="modal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title"></h4>
						</div>
						<div class="modal-body"></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
						</div>
					</div>
				</div>
			</div>
		</form> <!-- end container form -->
	  </div>
	  <hr>
      <!-- FOOTER -->
      <footer class="container">
        <p>© Camila Baldi, 2020 </p>
      </footer>
    </main>
  </body>
</html>