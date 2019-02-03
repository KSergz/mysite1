<?php

class News
{
    /**
     * @param $id
     * @return int
     */
    public static function getNewsById($id)
    {
        $id = intval ($id);
        if($id){

            $db = Db::getConnection ();

            $result = $db->query ('SELECT * from news WHERE id='.$id);
            $result->setFetchMode (PDO::FETCH_ASSOC);
            $newsItem = $result->fetch ();

            return $newsItem;


        }

    }

    /**
     * @return array
     */
    public static function getNewsList()
    {
        $db = Db::getConnection ();

        $newsList = [];
        $result = $db->query ('SELECT id, title, date, short_content, author_name, preview
                                      FROM news ORDER BY date DESC LIMIT 10' );

        $i = 0;
        while ($row = $result->fetch ()){
            $newsList[$i]['id'] = $row['id'];
            $newsList[$i]['title'] = $row['title'];
            $newsList[$i]['date'] = $row['date'];
            $newsList[$i]['short_content'] = $row['short_content'];
            $newsList[$i]['author_name'] = $row['author_name'];
            $newsList[$i]['preview'] = $row['preview'];
            $i++;


        }
        return $newsList;


    }

}