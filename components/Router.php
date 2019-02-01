<?php
class Router
{

    private $routes;

    public function __construct ()
    {

        $routsPath = ROOT. '/config/routes.php';
        $this->routes = require_once ($routsPath);

    }

    /**
     * @return string
     * Returns request string
     */
    private function getURI()
    {
        //1.Получить строку запроса
        if (!empty( $_SERVER['REQUEST_URI'] )) {
            return trim ( $_SERVER['REQUEST_URI'], '/' );
        }
    }

    public function run()
    {
        //1.Получить строку запроса
        $uri = $this->getURI ();


       //2.Проверить наличие такого запроса в routes.php
        foreach ($this->routes as $uriPattern => $path) {

            //3.сравниваем $uriPattern и $uri
            if (preg_match ("~$uriPattern~", $uri)){



                $internalRoute = preg_replace ("~$uriPattern~", $path, $uri);


                //Если есть совпадения, определить какой контроллер
                //и action обрабатывают запрос

                $segments = explode ('/', $internalRoute);

                $controllerName = array_shift ($segments).'Controller';
                $controllerName = ucfirst ($controllerName);

                $actionName = 'action'. ucfirst (array_shift ($segments));

               # echo $controllerName. "<br>";
                # echo $actionName;

                $parameters = $segments;


                //Подключить файл класса-контроллера
                $controllerFile = ROOT. '/controllers/'.$controllerName.'.php';

                if(file_exists ($controllerFile)){
                    require_once ($controllerFile);
                }

                //Создать объект, вызвать метод(т.е. action)
                $controllerObject = new $controllerName;
                #$result = $controllerObject->$actionName($parameters);

                $result = call_user_func_array ([$controllerObject, $actionName], $parameters );

                if ($result != null){
                    break;
                }
            }

        }







    }


}