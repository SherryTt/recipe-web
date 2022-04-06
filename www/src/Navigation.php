<?php
namespace textreview;

use textreview\Session;

class Navigation {
  private static $nav_items = array(
    array('name' => 'Home', 'link' => 'index.php'),
    array('name' => 'Login', 'link' => 'login.php'),
    array('name' => 'Register', 'link' => 'register.php')
  );
  private static $auth_items = array(
    array('name' => 'Home', 'link' => 'index.php'),
    array('name' => 'Log out' , 'link' => 'logout.php')
  );

  public static function getNavigation() {
    // create navigation array
    $navigation = array();
    // find the active navigation item (for highlight in navbar )
    $navigation["active"] = basename( $_SERVER['PHP_SELF'] );

    // updated to use Session class
    if ( Session::get('auth') ) {
      $navigation['items'] = self::$auth_items;
    }
    else{
      $navigation['items'] = self::$nav_items;
    }
    return $navigation;
  }

  
}

?>