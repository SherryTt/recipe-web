<?php

namespace textreview;
use textreview\Database;
use Exception;

class Category extends Database{

    private $dbcoonnection;

    public $user;

    public function __construct()
  {
    
    parent::__construct();
    
    $this -> dbconnection = parent::getConnection();
  }



public function getAllCategory($cid,$cname){
  

$query = "
          SELECT 
          recipe.recipe_ID,
          category_name, 
          recipe_Name, 
          image.filename AS picture,
          star_rated,
          recipe_user.user_ID,
          user.name AS user
          From recipe

          JOIN image ON recipe.recipe_ID=image_ID 
          JOIN recipe_user ON  recipe_user.recipe_ID = recipe.recipe_ID

          JOIN user ON user.user_ID=recipe_user.user_ID
          JOIN recipe_category ON recipe_category.recipe_ID = recipe.recipe_ID

          JOIN category ON category.category_ID = recipe_category.category_ID
          WHERE category.category_ID = {$cid}
          ";




  try{
    $statement =$this -> dbconnection -> prepare($query);
    if(!$statement){
      throw new Exception("query error");
    }
    
    if(!$statement -> execute()){
      throw new Exception("query error");
    }
    else{
     

      $categoryResult = $statement -> get_result();
      $category= [];
      while( $row =  $categoryResult -> fetch_assoc()) 
      {
        $category[]=$row;
      }
     return $category;
    }
  }catch(Exception $exc){
    echo $exc -> getMessage();
    return false;

  }
  

    }
    
    
  }
?>