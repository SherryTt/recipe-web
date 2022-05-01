<?php
// enable composer autoloading
require("vendor/autoload.php");

use textreview\Favourite;


$fav = new Favourite;

$action = $_GET['action'];
if( $action == 'add' ){
    $recipeid = $_GET['recipeid'];
    $fav->fav_recipe($recipeid);
}else if( $action == 'get' ){
    $favArr = $fav->getFavourite();

$loader = new \Twig\Loader\FilesystemLoader("templates");
$twig = new Twig\Environment( $loader, [ "cache" => false ] );




echo $twig -> render(
    "favourite.twig", 
    [

    "page_title" => "MyCategory", 
     "favArr"=>$favArr
   
    ] );
};



?>