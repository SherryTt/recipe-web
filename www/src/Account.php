<?php

namespace textreview;

use textreview\Database;
use Exception;

class Account extends Database {
  private $dbconnection;

  public function __construct() {
    parent::__construct();
    $this -> dbconnection = parent::getConnection();
  }

  public function create($name, $email, $password,$confirm_pass){
	$errors = array();
	$response = array();

	//Name validation 
	if (!preg_match ("/^[a-zA-z]*$/",$name) ) {  
    $errors["name"] = "Only alphabets and whitespace are allowed.";
	}
	
	//Email validation
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
		$errors["email"] = "Invalid email address";
	}

	//Password validation
	if(strlen($password) < 8 ) {
		$errors["password"] = "Password must be longer than 8 characters";
	}

	//Confirm pass validation
	if ( $password != $confirm_pass) {
  		$errors["confirm_pass"] = "Password and Confirm password should match";   
	}

	if(count($errors) == 0) {
		//Create an account
		$query = "INSERT INTO user (name,email,password,created,updated) 
		VALUES( ?,?,?, NOW(), NOW())";
		$statement = $this -> dbconnection -> prepare( $query );
		$hashed = password_hash( $password,PASSWORD_DEFAULT );
		$statement -> bind_param( "sss" ,$name,$email, $hashed );
		//Try to excute statement
		try{
			if( !$statement -> execute()) {
				throw new Exception("Account cannot be created");
			}
			else {
				$response["success"] = true;
				$response["id"] = $this ->dbconnection -> insert_id;
				$response["email"] = $email;
				$response["message"] = "Account has been created!";
			  }
		}
		catch( Exception $exc ) {
			$errors["system"] = $exc -> getMessage();
			if( $this -> dbconnection -> errno == "1062") {
			  $errors["account"] = "The email address already exists";
			}
			$response["success"] = false;
			$response["message"] = "Account cannot be created";
			$response["errors"] = $errors;
		  }
		}
		else {
		  // return errors to user
		  $response["success"] = false;
		  $response["message"] = "Account cannot be created";
		  $response["errors"] = $errors;
		}
	
		return $response;
	  }
	
	  public function login( $email, $password ) {
		$errors = array();
		$response = array();

		$query = "
		SELECT
		user_ID , 
		name,
		email,
		password,
		user_follower,
    	user_detail,
		user_image
		FROM user
		WHERE email = ?
    	";
	
	$statement = $this -> dbconnection -> prepare( $query );
    $statement -> bind_param( "s", $email );

    try {
      if( !$statement -> execute() ) {
        throw new Exception("Error executing query");
      }
      else {
        $result = $statement -> get_result();
        if( $result -> num_rows == 0 ) {
          throw new Exception("Account does not exist");
        }
        else {
          $account_data = $result -> fetch_assoc();
          if( password_verify( $password, $account_data["password"] ) ) {
            $response["success"] = true;
            $response["user_ID"] = $account_data["user_ID"];
			$response["name"] = $account_data["name"];
            $response["email"] = $account_data["email"];
			$response["user_follower"] = $account_data["user_follower"];
			$response["user_detail"] = $account_data["user_detail"];
			$response["user_image"] = $account_data["user_image"];
            return $response;
          }
          else {
            throw new Exception("Password is incorrect");
          }
        }
      }
    }
    catch ( Exception $exc ) {
      $errors["system"] = $exc -> getMessage();
      $response["success"] = false;
      $response["errors"] = $errors;
      return $response;
    }
  }

  	
 
 
 
 	 public function getUser($user_ID){
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
	
	
	
}
?>