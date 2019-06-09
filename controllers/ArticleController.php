<?php
require_once ROOT. '/models/Article.php';
class ArticleController
{

    /**
     * @return bool
     *
     */
    public function actionIndex()
    {
        $articleList = array();
        $articleList = Article::getArticleList ();
        //var_dump ($articleList);

        require_once (ROOT.'/views/article/index.php');

        return true;
    }

}