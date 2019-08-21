<?php
return array(

    'news/([0-9]+)' => 'news/view/$1',
    'news' => 'news/index',// actionIndex in NewsController

   // 'products/([0-9]+)' => 'products/list/$1',// actionList in ProductController
    //'products' => 'products/index',
    'articles' => 'article/index',
    'about' => 'about/index',
    '' => 'news/index',

);

 //preg_replace ($string, $replasement,$pattern);