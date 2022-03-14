<?php
class DB{
   private $dsn;
    private $username;
    private $pass;
    private $database;
    private $pdo;
    
    function __construct()
    {
        $this->database="products";
        $this->dsn="mysql:host=localhost;dbname=$this->database;charset=utf8mb4";
        $this->username="root";
        $this->pass="";
        try{
            $this->pdo=new PDO($this->dsn,$this->username,$this->pass);
            echo"connect succesful";
         }
         catch(PDOException $ex){
             echo $ex->getMessage();
         }
  }
  function showData(){
      $sql='SELECT * FROM `user`';
      $stm=$this->pdo->prepare($sql);
   if(   $stm->execute()){
       $rows=$stm->fetchAll();
       foreach($rows as $row){
?>
    <tr>
                    <th><?php echo $row["id"]; ?></th>
                    <td><?php echo $row["email"];?></td>
                    <td><?php echo $row["password"];?></td>

                    <td><button><ion-icon name=" trash-outline "></ion-icon></button></td>
                    <td><button><ion-icon name="create-outline "></ion-icon></ion-icon></button></td>

                </tr>
                <?php
       }
   }
    
   

  }
  function Adduser($email,$passwor){
      $sql="INSERT INTO `user`(`email`, `password`) VALUES ('$email','$passwor')";
      $stm=$this->pdo->prepare($sql);
      $stm->execute();

  }

  }

  $ss=new DB();
  //$ss->Adduser("yyy","666");
  
?>
*/
