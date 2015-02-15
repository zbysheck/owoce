<?php
/**
 * Created by PhpStorm.
 * User: zkisly
 * Date: 2015-02-11
 * Time: 11:23
 */

class category {
    private $db = Null;
    function __construct($db, $view, $mode = 'all')
    {
        $this->db = $db;
        //$m = new model();
        if(isset($_GET['category']))
            $mode = $_GET['category'];
        if ($mode=='all'){
            $sql="SELECT * FROM products";
        }else{
            $sql = "SELECT * FROM products WHERE category_id = \"$mode\"";
        }
        $res = $this->db->query($sql)->fetchAll();
        $categories= $this->db->query("SELECT * FROM categories")->fetchAll();
        //var_dump($res);
        //var_dump($sql);
        $view->assign('categories', $categories);
        $view->assign('posts', $res);
        $view->assign('mode', $mode);
        $view->render('categories');


    }
}