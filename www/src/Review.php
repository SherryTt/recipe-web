<?php

namespace textreview;
use textreview\Database;
use Exception;


class Review extends Database{

    private $dbcoonnection;

    public $user;

    public function __construct()
  {
    
    parent::__construct();
    
    $this -> dbconnection = parent::getConnection();
  }



public function getNewReview( $content,$rate,$recipeid ){

 
$userid = $_SESSION['account_id'] ;
$times = date("Y-m-d H:i:s");

$query1 = "
    INSERT INTO 
    review (review_description,review_date,review_rated) 
    VALUES ('{$content}','{$times}','{$rate}')
";



try{
    $statement1 =$this -> dbconnection -> prepare($query1);

   
   
    $statement1 -> execute();
    $review_ID = mysqli_insert_id($this->dbconnection);
    
$query2 = "
INSERT INTO review_user (review_ID,user_ID) 
VALUES ('{$review_ID}','{$userid}')";




$query3 = "
INSERT INTO recipe_review (review_ID,recipe_ID) 
VALUES ('{$review_ID}','{$recipeid}')";

    $statement2 =$this -> dbconnection -> prepare($query2);
    $statement3 =$this -> dbconnection -> prepare($query3);
    $statement2 -> execute();
    $statement3 -> execute();
    
  }
  catch(Exception $exc){
    echo $exc -> getMessage();
    return false;
  }
  
echo "SUBMIT SUCCESSFULLY: <a href=".$_SERVER['HTTP_REFERER'].">BACK</a>";
}

}

?>