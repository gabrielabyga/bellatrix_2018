<?php
    session_start();
    require_once '../modelos/CrudConteudo.php';

    if (isset($_GET['acao'])){
    $acao = $_GET['acao'];
        }else{
    $acao = 'index';
    }
    switch ($acao){

        case 'index':

        $crud = new CrudConteudo();
        $conteudos = $crud->getConteudos();

//        include '../views/usuarios/index.php';

        break;

        case 'inserir';
        if (!isset($_POST['gravar'])){ // se ainda nao tiver preenchido o form
//            include '../views/posts/telaCadastrar.html';

        }else{

            // depois de preencher o formulario

            $titulo = $_POST['titulo'];
            $descricao= $_POST['descricao'];
            $texto_post= $_POST['texto_post'];
            $novoConteudo = new Conteudo($titulo, $descricao, $texto_post);

            $crud = new CrudConteudo();
            $crud->insertConteudo($novoConteudo);

            header('Location: conteudo.php');
        }

        break;

        case 'editar':

            $titulo = $_POST['titulo'];
            $descricao= $_POST['descricao'];
            $texto_post= $_POST['texto_post'];
            $crud = new CrudConteudo();
            $atualizar = $crud->updateConteudo();

            // header('Location: perfil.php');

            break;

        case 'excluir':
        $crud = new CrudConteudo();
        $apagar = $crud->deleteConteudo();

        // header('Location: ../views/usuarios/cadastrado.php');
        break;

}
//        FAZER O DELETE E O UPDATE DESSE E DO USUARIO.PHP; FAZER A TELA DE CADASTRO PARA O CONTEUDO E VALIDAÇÃO DE ELE PODER FAZER O CADASTRO PARA O CONTEUDO
