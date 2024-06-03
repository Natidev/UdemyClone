

<?php
/* 
Explanation:

This class is responsible for handling the URL routing.
It determines the controller and method to be called based on the URL.
If no specific controller or method is found, it defaults to _404 and index.
It sanitizes the URL to prevent security issues and then splits it into parts to extract the controller and method.
It checks if the controller file exists and includes it. If the file doesn’t exist, it defaults to the 404 controller.
It creates an instance of the controller and calls the specified method with any additional URL parameters.
*/
class App
{
    protected $controller = '_404';
    protected $method = 'index';
    public static $page= '_404'; 
    function __construct()
    {
        $arr = $this->getURL();
        $filename = "../app/controllers/" . ucfirst($arr[0]) . ".php";

        if (file_exists($filename)) {
            require $filename;
            $this->controller = $arr[0];
            self::$page = $arr[0];
            unset($arr[0]);
        } else {
            require "../app/controllers/" . $this->controller . ".php";
        }

        $mycontroller = new $this->controller();
        $mymethod = $arr[1] ?? $this->method;
        if (!empty($arr[1])) {
            if (method_exists($mycontroller, strtolower($mymethod))) {
                $this->method = strtolower($mymethod);
                unset($arr[1]);
            }
        }
        $arr = array_values($arr);
        call_user_func_array([$mycontroller, $this->method], $arr);
    }
    private function getURL()
    {
        $url = $_GET['url'] ?? 'home';
        $url = filter_var($url, FILTER_SANITIZE_URL);

        $arr = explode('/', $url); //to split the url by slashes
        return $arr;
    }
}
