<?php
namespace textreview;

use textreview\Database;
use Exception;


class Search extends Database {
  private $dbconnection;
  public function __construct()
  {
    parent::__construct();
    $this -> dbconnection = parent::getConnection();
  }
  public function lookUp( $term ) {
    $query = "
	SELECT
	recipe.recipe_ID,
	recipe_Name,
	recipe_description,
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
    WHERE recipe_Name LIKE ?";
    $statement = $this -> dbconnection -> prepare( $query );
    $search_term = "%$term%";
    $statement -> bind_param("s", $search_term );
    try {
      if( !$statement -> execute() ) {
        throw new Exception("query error");
      }
	  else {
        $search_result = array();
        $result = $statement -> get_result();
        while( $row = $result -> fetch_assoc() ) {
          array_push( $search_result, $row );
        }
        return $search_result;
      }
    }
    catch( Exception $exc) {
      echo $exc -> getMessage();
    }
  }
}


?>
