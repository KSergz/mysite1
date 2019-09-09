<!DOCTYPE html>
<html>
<head>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>NEWS TRUE</title>
    <link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>
    <link href="/template/css/style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="menu-wrapper">
    <div id="menu">
        <?php $uri = $_SERVER["REQUEST_URI"];
        //var_dump ($uri);
        ?>
        <ul>
            <li <?php if ($uri == "/" or $uri == "/news/") echo 'class="current_page_item"'; ?>><a href="/">Homepage</a></li>
            <li <?php if ($uri == "/articles/") echo 'class="current_page_item"'; ?>><a href="/articles/">Blog</a></li>
            <li><a href="/photos/">Photos</a></li>
            <li <?php if ($uri == "/about/") echo 'class="current_page_item"'; ?>><a href="/about/">About</a></li>
            <li><a href="/contacts/">Contact</a></li>
        </ul>
    </div>
    <!-- end #menu -->
</div>

<div id="wrapper">
    <div id="header-wrapper">
        <div id="header">
            <div id="logo">
                <h1><a href="/">NEWS TRUE </a></h1>
                <p >Что нибудь найти? <a href="https://www.google.com/" style="color: green">ОК ГУГЛ!</a></p>
            </div>
        </div>
    </div>
    <!-- end #header -->