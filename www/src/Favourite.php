<?php



namespace textreview;
use textreview\Database;
use Exception;
session_start();
class Favourite extends Database{

    private $dbcoonnection;

    public $user;

    public function __construct()
  {
    
    parent::__construct();
    
    $this -> dbconnection = parent::getConnection();
  }

public function getFavourite(){
    $user_id = $_SESSION['account_id'];

    $query = "
            SELECT * 
            FROM favourite 
            JOIN recipe  ON recipe.recipe_ID = favourite.recipe_id 
            INNER JOIN recipe_image
            ON recipe.recipe_ID = recipe_image.image_ID
            INNER JOIN image ON recipe_image.image_ID = image.image_ID
            WHERE user_id = {$user_id}
              ";

      $statement2 =$this -> dbconnection -> prepare($query);
    if(!$statement2){
      throw new Exception("query error");
    }
    
    if(!$statement2 -> execute()){
      throw new Exception("query error");
    }
    else{
      $favResult = $statement2 -> get_result();
      $favs= [];
      while( $row =  $favResult -> fetch_assoc()) 
      {
        $favs[]=$row;
      }
      
    }

    return $favs;
    
}

public function fav_recipe($recipe_id)
{
 
    $user_id = $_SESSION['account_id'];
    $insertSql = " 
    INSERT INTO 
    favourite ( recipe_id,user_id ) 
    VALUES ( {$recipe_id},{$user_id} )";
 
    $selectSql = " 
    SELECT * 
    FROM favourite 
    WHERE user_id={$user_id} 
    AND recipe_id={$recipe_id} ";
    


    $statement2 =$this -> dbconnection -> prepare($selectSql);
    if(!$statement2){
      throw new Exception("query error");
    }
    
    if(!$statement2 -> execute()){
      throw new Exception("query error");
    }
    else{
      $favResult = $statement2 -> get_result();
      $favs= [];
      while( $row =  $favResult -> fetch_assoc()) 
      {
        $favs[]=$row;
      }
      if( count( $favs )>0 ){
          
          echo "EXISTING FAVOURITE: <a href=".$_SERVER['HTTP_REFERER'].">BACK</a>";
          exit;
      }
    }



    try {
        $statement1 =$this -> dbconnection -> prepare($insertSql);
        $statement1 -> execute();

        echo "SUCCESSFULLY: <a href=".$_SERVER['HTTP_REFERER'].">BACK</a>";
    } catch(Exception $exc){
        echo $exc -> getMessage();
        return false;
      }
  


}


}
?>