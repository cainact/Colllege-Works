<?php

$conn = mysqli_connect("localhost", "root", "", "database");

$dados = file('conteudo.txt');

	set_time_limit(100000);

foreach($dados as $linha){
	$linha = trim($linha);
	$valor = explode(',', $linha);
	($valor);
	
	$inu1 = $valor[0];
	$nome = $valor[1];
	$cargo = $valor[2];
	$salario = $valor[3];
	$inu2 = $valor[4];
	
	$result_usuario = "INSERT INTO dados (nome, cargo, salario) VALUES ('$nome', '$cargo', '$salario')";
	
	$resultado_usuario = mysqli_query($conn, $result_usuario);	
}

?>
