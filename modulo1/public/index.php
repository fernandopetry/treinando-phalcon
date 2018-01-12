<?php

ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);

use Phalcon\Loader;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Application;
use Phalcon\Di\FactoryDefault;
use Phalcon\Mvc\Url as UrlProvider;
use Phalcon\Mvc\View\Engine\Volt;

// Register an autoloader
$loader = new Loader();
$loader->registerDirs(
    [
        "../app/controllers/",
        "../app/models/",
    ]
);
$loader->register();

// Create a DI
$di = new FactoryDefault();

// Register Volt as a service
$di->set('voltService',
    function ($view, $di) {
        $volt = new Volt($view, $di);

        $volt->setOptions(
            [
                'compiledPath'      => '../cache/',
                'compiledExtension' => '.compiled',
            ]
        );

        return $volt;
    }
);

// Register Volt as template engine
$di->set('view',
    function () {
        $view = new View();

        $view->setViewsDir('../app/views/');

        $view->registerEngines(
            [
                '.volt' => 'voltService',
            ]
        );

        return $view;
    }
);

// Setup a base URI so that all generated URIs include the "tutorial" folder
$di->set("url",
    function () {
        $url = new UrlProvider();

        $url->setBaseUri("/treinando-phalcon/modulo1/");

        return $url;
    }
);

$application = new Application($di);

try {
    // Handle the request
    $response = $application->handle();

    $response->send();
} catch (\Exception $e) {
    echo "Exception: ", $e->getMessage();
}