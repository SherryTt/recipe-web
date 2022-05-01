<?php

namespace textreview;

// method to initialise session
// static class does not need to be constructed, and it calls its methods using self::method()
class Session {
  public static function init() {
    if( session_status() == PHP_SESSION_NONE ) {
      session_start();
    }
  }

   // method to set a session variable
  public static function set( $name, $value ) {
    self::init();
    $_SESSION[ $name ] = $value;
  }

   // method to get a value of a session variable
  public static function get( $name ) {
    self::init();
    return $_SESSION[$name] ? $_SESSION[$name] : null;
  }

  // method to unset a session variable
  public static function unset( $name ) {
    self::init();
    unset( $_SESSION[$name] );
  }
}
?>