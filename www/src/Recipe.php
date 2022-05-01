<?php

namespace textreview;
use textreview\Database;
use Exception;

class Recipe extends Database{

    private $dbcoonnection;

    public $user;

    public function __construct()
  {
    
    parent::__construct();
    
    $this -> dbconnection = parent::getConnection();
  }

  public function getItems(){
  {
    $query = "
                SELECT
                    recipe.recipe_ID,
                    recipe_Name,
                    star_rated,
                    recipe_image.image_ID,
                    recipe_user.user_ID,
                    user.name AS user,
                    image.filename AS picture
                    FROM recipe
                    INNER JOIN recipe_image
                    ON recipe.recipe_ID = recipe_image.image_ID
                    
                    INNER JOIN image
                    ON recipe_image.image_ID = image.image_ID
                    
                    INNER JOIN recipe_user
                    ON recipe.recipe_ID = recipe_user.recipe_ID
                    
                    INNER JOIN user
                    ON user.user_ID=recipe_user.user_ID
                    WHERE 1
                        ";
 

    try
    {
      $statement = $this -> dbconnection -> prepare( $query );
      if( !$statement ) 
      {
        throw new Exception("problem with query " . $query );
      }

      if( !$statement -> execute() ) 
      {
        throw new Exception("query failed to execute");
      }
      else 
      {
        $recipe = array();
        $items = array();
        $result = $statement -> get_result();
        while( $row = $result -> fetch_assoc() ) 
        {
          array_push( $items, $row );
        }
        $recipe["total"] = count($items);
        $recipe["items"] = $items;

        return $recipe;
      }
      return null;
    }
    catch ( Exception $exception ) 
    {
      echo $exception -> getMessage();
    }
  }
  }

  

public function getSlider(){
  {
   
    $query =  "
    SELECT 
        recipe_ID, 
        recipe_Name,
        star_rated,
        filename 
        From recipe 
        JOIN image ON recipe_ID=image_ID 
        ORDER BY RAND() DESC LIMIT 1
        
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
        

       

        $sliderResult = $statement -> get_result();
        $slider= [];
        while( $row =  $sliderResult -> fetch_assoc()) 
        {
          $slider[]=$row;
        }
        return $slider;

        
      }
    }
    catch(Exception $exc){
      echo $exc -> getMessage();
      return false;

    }  

}
}
public function getDetail( $recipe_ID ){
  
  $query = "
  SELECT
      
      recipe.recipe_ID,
      recipe_Name,
      star_rated,
      recipe_prep,
      recipe_cook,
      recipe_total,
      recipe_servings,
      recipe_ingredient,
      recipe_description,
      recipe_calories,
      recipe_direction,
      recipe_image.image_ID,
      user.name AS user,
      user.user_image AS user_image,
      image.filename AS picture

      FROM recipe

      INNER JOIN recipe_image
      ON recipe.recipe_ID = recipe_image.image_ID
      
      INNER JOIN image
      ON recipe_image.image_ID = image.image_ID
      
      INNER JOIN recipe_user
      ON recipe_user.recipe_ID = {$recipe_ID}

      INNER JOIN user
      ON user.user_ID=recipe_user.user_ID

  WHERE recipe.recipe_ID = ?
          ";
  
  try{
    $statement =$this -> dbconnection -> prepare($query);
    if(!$statement){
      throw new Exception("query error");
    }
    $statement -> bind_param("i",$recipe_ID);
    if(!$statement -> execute()){
      throw new Exception("query error");
    }
    else{
      $result = $statement -> get_result();
      $detail = $result -> fetch_assoc();
      return $detail;
    }
  }
  catch(Exception $exc){
    echo $exc -> getMessage();
    return false;

  }
}


/* For detail PHP */

public function getUser(){
{
  $query = "
  SELECT
   
    user_ID,
    name,
    user_follower,
    user_detail,
    user_image AS picture
 
    FROM USER
  ORDER BY user_follower DESC LIMIT 4
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
     

      $userResult = $statement -> get_result();
      $user= [];
      while( $row =  $userResult -> fetch_assoc()) 
      {
        $user[]=$row;
      }
      return $user;

      
    }
  }
  catch(Exception $exc){
    echo $exc -> getMessage();
    return false;

  }  

}
}

private function getReviewId($recipe_id)
{
  $query = "SELECT review_ID from recipe_review where recipe_id = ".$recipe_id;
 
  try{
    $statement =$this -> dbconnection -> prepare($query);
    if(!$statement){
      throw new Exception("query error");
    }
    
    if(!$statement -> execute()){
      throw new Exception("query error");
    }
    else{
     

      $reviewResult = $statement -> get_result();
      $review= [];
      while( $row =  $reviewResult -> fetch_assoc()) 
      {
        $review[]=$row;
      }
      $id=array_column($review, 'review_ID');
      return join(',',$id);
    }
  }catch(Exception $exc){
    echo $exc -> getMessage();
    return false;

  }
  

}

public function getReview($recipe_id){
  {

    
    $reviewId=$this->getReviewId($recipe_id);
    
    if(empty($reviewId)){
      
      return [];
    }
    
    
    
    $query = "
              SELECT *,
              user.user_image AS picture,
              user.name AS user 
              from recipe_review AS rcr
              JOIN review AS r ON r.review_ID = rcr.review_ID
              JOIN review_user AS ru ON ru.review_ID = rcr.review_ID
              JOIN `user` ON `user`.user_ID = ru.user_ID
              WHERE rcr.recipe_ID = {$recipe_id}
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
       
  
        $reviewResult = $statement -> get_result();
        $review= [];
        while( $row =  $reviewResult -> fetch_assoc()) 
        {
          $review[]=$row;
        }
        return $review;
  
        
      }
    }
    catch(Exception $exc){
      echo $exc -> getMessage();
      return false;
  
    }  
  
  }
  }
}
?>