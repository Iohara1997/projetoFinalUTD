<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">


<div class="container">
	<div class="row">
		<div class="col-md-2">
			
		</div>

		<div class="col-md-8">
			
			<h3> Formulário de cadastro </h3>


			<form action="controllerProduto.php" method="POST">
				<label> Produto </label>
				<input type="text" name="descricao" class="form-control"><br><br>


				<label> Peso </label>
				<input type="text" name="peso" class="form-control"><br><br>


				<label> Situação </label>
				<select name="controlado" class="form-control">
					<option value="1">Controlado</option>
					<option value="0">Não controlado</option>
				</select><br><br>
				


				<label> Quantidade </label>
				<input type="text" name="qtdemin" class="form-control"><br><br>

				<input type="hidden" name="action" value="add">

				<button class="btn btn-primary" type="submit"> Enviar</button>
			</form>
		</div>

	</div>

</div>