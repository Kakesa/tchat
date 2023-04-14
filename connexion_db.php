<?php
    //connexion à la base de données
    $servername = 'localhost';
    $username = 'root';
    $dbname = 'chat';
    $password = '';

    //On essaie de se connecter
    try{
        $conn = new PDO("mysql:host=$servername;dbname=chat", $username, $password);
    
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    //gérer les accents et les autres caratères français
        //$req = query($conn, "SET NAMES UTF8");
    }
    catch(PDOException $e){
        echo "Erreur : " . $e->getMessage();
      }
?>