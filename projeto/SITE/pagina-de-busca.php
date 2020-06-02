<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../project/CSS/styles_pag2.css" type="text/css">

</head>
<div class="page-header">
    <h1>
        Pesquisa Realizada
    </h1>
</div>
<body >
    
    <div class="tabela_politicos">
        <table class="table" width="100%" border="2px">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Cargo</th>
                    <th>Salario</th>
                </tr>
            </thead>
            <?php
            
                $conexao = mysqli_connect("localhost", "root", "", "database");
                $busca = $_GET["pesquisar"];
                $search = "select * from dados where nome LIKE '$busca%' OR cargo LIKE '$busca%' ";
                $seleciona = mysqli_query($conexao,$search);
                
                while($campo=mysqli_fetch_array($seleciona)) {?>

                <tr>
                    <td><?=$campo["nome"]?></td>
                    <td><?=$campo["cargo"]?></td>
                    <td>R$ <?=$campo["salario"]?>,00</td>

                </tr>

                <?php } ?>
        </table>
    </div>
    
</body>

