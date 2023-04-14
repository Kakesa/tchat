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
    <title>Connexion chat</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
   <?php 
    if(isset($_POST['button_inscription'])){
      //se conneccter à la bdd 
      include "connexion_db.php";

      // extraire les info du formulaire
      extract($_POST);

      //verification si les champs sont vides 
     if(isset($email) && isset($mdp1) && $email != "" && $mdp1 != "" && isset($mdp2) &&  $mdp2 != "" ){
      
      //on verifie si mz mot de passe son conforme
      if($mdp2 != $mdp1){
        $erreur = "Les mots de passes sont differents !";
      }
      else{
        //je verifie si l'email existe
        $sql = "SELECT * FROM utilisateur WHERE email = '$email'";
          $query = $conn -> query($sql);
          $row = $query->rowCount();
          if($row == 0){  
            //si ça existe pas
            $sql = "INSERT INTO utilisateur VALUES (NULL,'$email' , '$mdp1')";
           if($conn->query($sql)){
            //si le compte a été créér
             $_SESSION['message'] = "<p class='message' style='padding: 10px 0; margin: 5px 0; text-align: center; background-color: green; color: #fff; font-size: 12px; border-radius: 10pxs;'>Votre compte a été créer avec succès !</p>";
             header("location:Ho.php");
             
           }else{
            $erreur = "Votre inscription a échoué !";
           }
          }else{
            $erreur = "Cet email existe déjà!";
          }

      }
      //si cela est vrai
      
    }
    else{
      $erreur="Veuillez  remplir tous ces champs !"; 
    }

    }
   ?>
  <form action="" method="POST" class="form_connexion">
    <center><h1>INSCRIPTION</h1>
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
    <input type="password" name="mdp1" class="mdp1" required>
    <label>Confirmation mots de passe</label>
    <input type="password" name="mdp2" class="mdp2"  required>
    <input type="submit" value="Inscription" name="button_inscription"><br>
    <p class="link"> Vous avez déjà un compte? <a href="Ho.php">Se connecter</a></p>
  </form>
  <script src="script.js"></script>
    
</body>
</html>