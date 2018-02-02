<?php

class PrincipalAutorCadastro extends \Phalcon\Mvc\User\Component implements PrincipalInterface
{
    private $resultado;
    private $nome;

    private function cadastro()
    {
        $autor       = new Autor();
        $autor->nome = $this->nome;

        if ($autor->save()) {
            $this->resultado = "Autor cadastrado com sucesso";
        } else {
            throw new Exception("Opss, erro ao cadastrar usuario.", E_USER_ERROR);
        }
    }

    private function validarEntrada()
    {
        $this->nome = $this->request->getPost('nome', 'string');

        if (empty($this->nome)) {
            throw new Exception("O nome não pode estar em branco.", E_USER_ERROR);
        }
    }

    public function executar()
    {
        $this->validarEntrada();
        $this->cadastro();
    }

    public function resultado()
    {
        return $this->resultado;
    }
}
