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

  public function create($name, $email, $password){
	$errors = array();
	$response = array();

	//Name validation 
	if (!preg_match ("/^[a-zA-z]*$/", $name) ) {  
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
	if ($_POST['password'] !== $_POST['confirm_pass']) {
  		$errors["confirm_pass"] = "Password and Confirm password should match!";   
}

	if(count($errors) == 0) {
		//Create an account
		$query = "INSERT INTO account (name,email,password) 
		VALUES( ?, ?, ?)";
		$statement = $this -> dbconnection -> prepare( $query );
		$hashed = password_hash( $password,PASSWORD_DEFAULT );
		$statement -> bind_param( "sss" , $name, $email, $hash );
		//Try to excute statement
		try{
			if( !$statemrnt -> excute()) {
				throw new Exception("Account cannot be created");
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
	
	  public function login( $name, $email, $password ) {
	
	  }
	}
	?>