<?php
  //Démarer la session
  session_start();
  if(!isset( $_SESSION['user'])){
    //si l'util n'est pas connecté
    header("location:Ho.php");
  }
  session_destroy();
  header("location:Ho.php");
?>