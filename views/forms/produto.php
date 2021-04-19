<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

<?php  

	
	#incluinfo os dados necessarios
	include_once 'Connect.class.php';
	include_once 'Manager.class.php';


	# buscando os dados la na tabela
	$manager = new Manager;

	$dados = $manager->select_common("produto",null, null, " ORDER BY codproduto DESC");	
?>
<div class="container">
	<div class="row">
		<div class="col-md-2">
			
		</div>

		<div class="col-md-10">
			<table class="table table-bordered table-striped">
				<thead>
				<tr>
					<th>Código</th>
					<th>Descrição</th>
					<th>Peso</th>
					<th>Controlado</th>
					<th>Quantidade</th>
					<th>Ações</th>
				</tr>
				</thead>

				<tbody>
					<?php foreach($dados as $d): ?>
						<tr>
							<td><?=$d['codproduto'];?></td>
							<td><?=$d['descricao'];?></td>
							<td><?=$d['peso'];?></td>
							
							<?php if($d['controlado'] == 1){
								echo "<td>Controlado</td>";
								}else{
								echo "<td>Não controlado</td>";
								}
							 ?>	

							<td><?=$d['qtdemin'];?></td>
							<td>
								<a href="edit.php?id=<?=$d['codproduto'];?>" class="btn btn-xs btn-warning"> <i class="fa fa-pencil"></i> </a>
								<a href="controllerProduto.php?id=<?=$d['codproduto'];?>&action=delete" class="btn btn-xs btn-danger"> <i class="fa fa-trash"></i> </a>
								
							</td>
						</tr>
					<?php endforeach; ?>
				</tbody>
				<tfoot>
					<a href="insert.php" class="btn btn-primary"> <i class="fa fa-plus-square"></i> Adicionar Produto </a>
				</tfoot>
			</table>
		</div>	
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
