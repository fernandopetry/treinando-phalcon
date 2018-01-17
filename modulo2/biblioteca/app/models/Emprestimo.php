<?php

class Emprestimo extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=11, nullable=false)
     */
    public $id;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $cd_livro;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $cd_usuario;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $data_saida;

    /**
     *
     * @var string
     * @Column(type="string", nullable=true)
     */
    public $data_devolucao;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("phalcon_biblioteca");
        $this->setSource("emprestimo");
        $this->belongsTo('cd_livro', '\Livro', 'id', ['alias' => 'Livro']);
        $this->belongsTo('cd_usuario', '\Usuario', 'id', ['alias' => 'Usuario']);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'emprestimo';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Emprestimo[]|Emprestimo|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Emprestimo|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
