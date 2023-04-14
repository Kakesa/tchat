// confirmation de mot de passe 
//Verification si le mot de passe et la confirmation sont conforme
var mdp1 = document.querySelector('.mdp1');
var mdp2 = document.querySelector('.mdp2');
mdp2.onkeyup = function(){
    //évenement lorsqu'on écrit dans le champ : confirmation du mot de passe
    message_error = document.querySelector('.message_error');
    if(mdp1.value != mdp2.value){//si le mot de passe ne sont pas egaux
        //qu'on affiche un message d'erreurs
        message_error.innerText = "les mots de passes ne sont pas conformes";

    }else{
        message_error.innerText = "";
    }
}

