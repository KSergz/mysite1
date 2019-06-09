<?php
/**
 * Created by PhpStorm.
 * User: sergi
 * Date: 01.02.2019
 * Time: 21:16
 */

class Article
{
    public static function getArticleList()
    {
        $db = Db::getConnection ();

        $articleList = [];
        $result = $db->query ('SELECT id, title, date, author_name, content FROM articles ORDER BY id ASC LIMIT 10' );

        $i = 0;
        while ($row = $result->fetch ()){
            $articleList[$i]['id'] = $row['id'];
            $articleList[$i]['title'] = $row['title'];
            $articleList[$i]['date'] = $row['date'];
            $articleList[$i]['content'] = $row['content'];
            $articleList[$i]['author_name'] = $row['author_name'];

            $i++;


        }
        return $articleList;

    }

    /**
     * Return path to the image
     * @param integer $id
     * @return string <p>Return path to the image  </p>
     */

    public static function getImage($id){
        $noImage = 'no-image.jpg';
        $path = '/template/images/articles/';
        $pathToNewsImages = $path.$id.'.jpg';

        if (file_exists ($_SERVER['DOCUMENT_ROOT'])){
            return $pathToNewsImages;
        }
        return $path.$noImage;

    }

}