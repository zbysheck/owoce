<?php
if(!@include 'config.php'){
    echo "zrobic generator config.php!";
}else{
    $db=new PDO(DB_ENGINE.':dbname='.DB_NAME.";host=".DB_HOST, DB_USER, DB_PASSWORD);
    require '../libs/Smarty.class.php';
    function __autoload($class_name)
    {
        # List all the class directories in the array.
        $folders = array(
            'models/',
            'views/',
            'controllers/',
            ''
        );

        foreach($folders as $path){
            $file = sprintf('%s%s.php',  $path, $class_name);
            if(is_file($file)){
                include_once $file;
            }
            //echo $file.'<br>';
        }
    }

    spl_autoload_register('__autoload');



    $view=new view();
    $view->render('head');
    //$view->render('form');

    try{
    $c=new category($db, $view);
} catch(Exception $e){
    echo $e->getMessage();
}
    $view->render('foot');
}

