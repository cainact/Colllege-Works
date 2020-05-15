<? php
    
    include (projeto.php);
    
    $recnome=$_GET["fnome"];
    $reccargo=$_GET["fcargo"];
    $recsalario=$_GET["fsalario"]

    
    pg_query=($projeto, "insert into dados (nome, cargo, salario) values ('$recnome', '$reccargo', '$recsalario' )" );
    
    header("location:lista.php"); 

?>