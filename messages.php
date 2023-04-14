        
        <?php
        session_start();                                                                  
         if(isset($_SESSION['user'])){//si l'utilisateur s'est connecté
            include "connexion_db.php";

            $sql = "SELECT * FROM messages ORDER BY id DESC";
          $query = $conn -> query($sql);
          $row = $query->rowCount();
          if($row == 0){
             echo "Message vide";

          }else{
            while($row = $query->fetch()){
                   if($row['email'] == $_SESSION['user']){
                    ?>
                       <div class="message your_message">  
                        <span>Vous</span>
                        <p><?=$row['msg']?></p>
                        <p class="date"><?=$row['date']?></p>
                       </div>
                    <?php
                 }else{
                    ?>
                    <div class="message message_others">
                        <span><?=$row['email']?></span>
                        <p><?=$row['msg']?></p>
                        <p class="date"><?=$row['date']?></p> 
                    </div>

                    <?php
                 }
            }         
          }

         }
        ?>
        
        
        
        
        <!-- <div class="message your_message">  
            <span>Vous</span>
            <p>Comment vous allez?</p>
            <p class="date">2022-09-15  00:25:26</p>
        </div>
        <div class="message message_others">
            <span>lady@gmail.com</span>
            <p>oui ça va bien merci!</p>
            <p class="date">2022-09-15  00:25:26</p> 
        </div> -->