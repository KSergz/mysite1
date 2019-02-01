<?php

class News
{
    /**
     * @param $id
     * @return int
     */
    public static function getNewsById($id)
    {
        //Запрос к БД
    }

    /**
     * @return array
     */
    public static function getNewsList()
    {
        $host = 'localhost';
        $dbname = 'php_base';
        $user = 'root';
        $password = '';
        $dsn = "mysql:host=$host;dbname=$dbname";
        $db = new PDO($dsn, $user, $password);

        $newsList = [];
        $result = $db->query ('SELECT id, title, date, short_content 
                                      FROM news ORDER BY date DESC LIMIT 10' );

        $i = 0;
        while ($row = $result->fetch ()){
            $newsList[$i]['id'] = $row['id'];
            $newsList[$i]['title'] = $row['title'];
            $newsList[$i]['date'] = $row['date'];
            $newsList[$i]['short_content'] = $row['short_content'];
            $i++;


        }
        return $newsList;


    }

}