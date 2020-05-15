<?php 

    function ConectarBD()
    {
       $host = "host=localhost";
       $port = "port=5432"; 
       $dbname = "dbname= Site de transparencia";
       $user = "user=postgres";
       $password = "password= 123";
       
       $bd = pg_connect("$host $port $dbname $user $password");

        if(!$bd)
        {
            echo"Erro: ";
        }
        else
        {
            return $bd;
        }
        
    }


?>


