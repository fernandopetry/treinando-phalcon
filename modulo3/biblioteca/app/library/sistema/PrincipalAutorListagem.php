<?php

class PrincipalAutorListagem extends \Phalcon\Mvc\User\Component implements PrincipalInterface
{

    private $resultado = [];

    private function listagem()
    {
        $autor = new Autor();
        $this->resultado = $autor->find();
    }

    public function executar()
    {
        $this->listagem();
    }

    public function resultado()
    {
        return $this->resultado;
    }
}
