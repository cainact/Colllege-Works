 <?php

require_once("projeto.php");
        $conexao=ConectarBD();

        $query = "SELECT
		V.codigo AS CODIGO_PESSOA,
        V.nome AS NOME_PESSOA,
       
        FROM test AS V
        
        INNER JOIN pessoa AS  E
        ON V.codigo=E.codigo;";
		
		$resultado = pg_query($conexao,$query) or die("Erro");
        $nr = pg_num_rows($resultado);
		
?>		