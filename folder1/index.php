<?php
namespace folder;
//require_once ('../folder2/index2.php');

//use folder2\Index2 ;
class Index
{
    public \folder2\Index2 $i2;
    public $name = "saeed";
}

spl_autoload_register(function($className){
    echo $className;
    require_once ('../folder2/index2.php');

});
$i = new \folder2\Index2();
//echo $i->name;

?>