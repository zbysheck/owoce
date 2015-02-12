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
        if ($mode=='all'){
            $sql="SELECT * FROM products";
        }else{
            $sql = "SELECT * FROM products WHERE category_id=$mode";
        }
        $res = $this->db->query($sql)->fetchAll();
        //var_dump($res);
        $view->assign('posts', $res);
        $view->render('categories');


    }
}