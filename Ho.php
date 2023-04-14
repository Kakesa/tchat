<?php
  //Démarer la session
  session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>App_chat</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php 
    if(isset($_POST['button_con'])){
        //se conneccter à la bdd 
        include "connexion_db.php";

        // extraire les info du formulaire
        extract($_POST);

        //verification si les champs sont vides 
        if(isset($email) && isset($mdp1) && $email != "" && $mdp1 != ""){
          //verifions si les identifiants sont justes
          $sql = "SELECT * FROM utilisateur WHERE email = '$email' AND mdp = '$mdp1'";
          $query = $conn -> query($sql);
          $row = $query->rowCount();
          if($row > 0){
            //si les ids dont justes 
            //création de la session
            $_SESSION['user'] = $email;
            //redirection vers la page chat
            header("location:chat.php");
            //detruire la variable inscription
            unset( $_SESSION['message']);
          }else{
            $erreur = "Email ou mot de passe incorrect !";
          }


        }else {
            //si les champs sont vides
        $erreor = "Veillez remplir tous les champs";
        }
        
    }
   
    ?>
    <form action="" method="POST" class="form_connexion">
        <center><h1>CONNEXION</h1>
         <?php
           //message disant le compte a été créer
           if(isset( $_SESSION['message'])){
            echo  $_SESSION['message'];
           }
         ?>
        <p class="message_erreur">
            <?php
              //affichons les erreurs 
              if(isset($erreur)){
                echo $erreur;
              }
            ?>
        </p></center><br> 
        <label>Adress email</label>
        <input type="email" name="email" id="email" required>
        <label>Mot de passe</label>
        <input type="password" name="mdp1" id="">
        <input type="submit" value="Connexion" name="button_con"></BR>
        <p class="link"> Vous n'avez pas un compte? <a href="inscription.php">Créér un compte</a></p>
      </form>
</body>
</html>