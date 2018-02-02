<?php


class AutorController extends ControllerBase
{
    public function cadastroAction()
    {
        $this->view->disable();
        $this->execVolt(new PrincipalAutorCadastro());
    }
}
