<?php  

	

	# buscando os dados la na tabela
	$manager = new Manager;

	$dados = $manager->select_common("tb_users",null, null, " ORDER BY id_user DESC");	
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
					<th>Nome</th>
					<th>Telefone</th>
					<th>Celular</th>
					<th>Endereço</th>
					<th>Perfil</th>
					<th>Ações</th>
				</tr>
				</thead>

				<tbody>
					<?php foreach($dados as $d): ?>
						<tr>
							<td><?=$d['id_user'];?></td>
							<td><?=$d['user_name'];?></td>
							<td><?=$d['user_phone'];?></td>
							<td><?=$d['user_cellphone'];?></td>
                            <td><?=$d['user_address'];?></td>
							<?php if($d['profile_id'] == 1){
								echo "<td>admin</td>";
								}else{
								echo "<td>funcionario</td>";
								}
							 ?>	

							
							<td>
								<a href="?edit_user=<?=$d['id_user'];?>" class="btn btn-xs btn-warning"> <i class="fa fa-pencil"></i> </a>

								<a href="?delete_user=<?=$d['id_user'];?>&action=delete" class="btn btn-xs btn-danger"> <i class="fa fa-trash"></i> </a>
								
							</td>
						</tr>
					<?php endforeach; ?>
				</tbody>
				<tfoot>
					<a href="?option=add_user" class="btn btn-primary"> <i class="fa fa-plus-square"></i> Adicionar Usuário </a>
				</tfoot>
			</table>
		</div>	
	</div>
</div>