<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    protected function execVolt(PrincipalInterface $instancia)
    {
        try {
            $instancia->executar();
        } catch (Exception $e) {
            echo $e->getMessage();
        }

        echo $instancia->resultado();
    }
}
