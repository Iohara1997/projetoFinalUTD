<?php  

	

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