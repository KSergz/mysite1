<?php
require_once ROOT. '/models/News.php';

class NewsController
{

    public function actionIndex()
    {
        $newsList = array();
        $newsList = News::getNewsList ();
        //var_dump ($newsList);

        require_once (ROOT.'/views/news/index.php');

        return true;
    }

    public function actionView($id)
    {
        if($id){
            $newsItem = News::getNewsById ($id);
           // var_dump ($newsItem);

            require_once (ROOT.'/views/news/view.php');
        }
        return true;

    }
}