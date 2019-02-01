<?php

// FRONT CONTROLLER

// 1. Общие настройки

ini_set ('display_errors', 1);
error_reporting (E_ALL);

// 2. Подключение файлов системы

define ('ROOT', dirname (__FILE__));
require_once (ROOT.'/components/Router.php');

// 3. Установка соединения с БД


// 4. Вызор Router

$router = new Router();
$router->run ();
//var_dump ($router);

/**
$string = '21-11-2015';
//$string = '11-21-2015';

$pattern = '/([0-9]{2})-([0-9]{2})-([0-9]{4})/';

//$replacement = 'Year $3 - Month $2 - Day $1';
$replacement = 'Month $2, Day $1, Year $3!';

echo preg_replace ($pattern, $replacement, $string);

//Month: 11, Day: 21, Year: 2015!
die;
 */