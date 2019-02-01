<?php
require_once ROOT. '/models/News.php';

class NewsController
{

    public function actionIndex()
    {
        $newsList = array();
        $newsList = News::getNewsList ();
        //var_dump ($newsList);
        echo '<pre>';
        print_r ($newsList);
        echo '<pre>';
        return true;
    }

    public function actionView($id)
    {
        if($id){
            $newsItem = News::getNewsById ($id);
            var_dump ($newsItem);
            echo '<br> actionView';
        }
        return true;

    }
}