{% extends 'layouts/base.volt' %}

{% block conteudo %}

    <div class="ui middle aligned stackable grid container">
        <div class="row">
            <div class="left aligned column">
                <div class="sixteen wide column">
                    <h3 class="ui header">Cadastro de empréstimo</h3>
                    <div class="ui form">
                        <div class="three fields">
                            <div class="field">
                                <label>Data de saída</label>
                                <input type="text" placeholder="Data de saída">
                            </div>
                            <div class="field">
                                <label>Data de devolução</label>
                                <input type="text" placeholder="Data de devolução">
                            </div>
                        </div>
                        <div class="ui buttons">
                            <button type="reset" class="ui button">Apagar</button>
                            <div class="or"></div>
                            <button type="submit" class="ui positive button">Salvar</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="eight wide column">
                <h3 class="ui header">Cadastro de usuário</h3>
                <div class="ui form">
                    <div class="three fields">
                        <div class="field">
                            <label>Nome completo</label>
                            <input type="text" placeholder="Nome completo">
                        </div>
                        <div class="field">
                            <label>E-mail</label>
                            <input type="email" placeholder="E-mail">
                        </div>
                        <div class="field">
                            <label>Senha</label>
                            <input type="password" placeholder="Senha">
                        </div>

                    </div>
                    <div class="ui buttons">
                        <button type="reset" class="ui button">Apagar</button>
                        <div class="or"></div>
                        <button type="submit" class="ui positive button">Salvar</button>
                    </div>
                </div>

            </div>
            <div class="eight wide right floated column">
                <h3 class="ui header">Cadastro de livro</h3>
                <div class="ui form">
                    <div class="three fields">
                        <div class="field">
                            <label>Título</label>
                            <input type="text" placeholder="Título">
                        </div>
                        <div class="field">
                            <label>Ano</label>
                            <input type="text" placeholder="Ano">
                        </div>
                        <div class="field">
                            <label>Edição</label>
                            <input type="text" placeholder="Edição">
                        </div>

                    </div>
                    <div class="ui buttons">
                        <button type="reset" class="ui button">Apagar</button>
                        <div class="or"></div>
                        <button type="submit" class="ui positive button">Salvar</button>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="eight wide column">
                <h3 class="ui header">Cadastro de Autor</h3>
                <div class="ui form">
                    <form action="autor/cadastro" method="post">
                        <div class="two fields">
                            <div class="field">
                                <label>Nome do autor</label>
                                <input type="text" name="nome" placeholder="Nome do autor">
                            </div>

                        </div>
                        <div class="ui buttons">
                            <button type="reset" class="ui button">Apagar</button>
                            <div class="or"></div>
                            <input type="submit" class="ui positive button">Salvar</input>
                        </div>
                    </form>
                </div>

            </div>
            <div class="eight wide right floated column">
                <h3 class="ui header">Cadastro de gênero</h3>
                <div class="ui form">
                    <div class="two fields">
                        <div class="field">
                            <label>Gênero</label>
                            <input type="text" placeholder="Gênero">
                        </div>

                    </div>
                    <div class="ui buttons">
                        <button type="reset" class="ui button">Apagar</button>
                        <div class="or"></div>
                        <button type="submit" class="ui positive button">Salvar</button>
                    </div>
                </div>
            </div>
        </div>

    </div>



{% endblock %}