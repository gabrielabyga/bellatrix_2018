<?php
    session_start();
    require_once '../modelos/CrudUsuarios.php';
    require_once '../modelos/Usuario.php';


    if (isset($_GET['acao'])){
        $acao = $_GET['acao'];
    }else{
        $acao = 'index';
    }

    switch ($acao){

        case 'index':

            $crud = new CrudUsuarios();
            $usuarios = $crud->getUsuarios();

//            include '../views/usuarios/cabecalho.php';
            include '../views/index.php';
//            include '../views/usuarios/rodape.php';
            break;


        case 'inserir';
            if (!isset($_POST['gravar'])){ // se ainda nao tiver preenchido o form
               include '../views/cadastro.php';
            }else{

                // depois de preencher o formulario

                $nome = $_POST['Nome'];
                $login= $_POST['Login_usu'];
                $senha= $_POST['Senha_usu'];
                $email= $_POST['Email'];
                $novoUsuario = new Usuario($nome,$login, $senha,$email);

                $crud = new CrudUsuarios();
                $crud->insertUsuario($novoUsuario);

                header('Location: ../views/telalogado.php');
            }
            break;


        case 'login':
            if(!isset($_POST['entrar'])){ //primeiro clique - exibir formulario
                include '../views/login.php';
            }else{ //depois de clicar em entrar
                $login = $_POST['login'];
                $senha = $_POST['senha'];
                $crud = new CrudUsuarios();
                $usuario = $crud->login($login, $senha);
                var_dump($usuario);
                if ($usuario){ //se deu certo o login
                    $_SESSION['id'] = $usuario->getId();
                    $_SESSION['nome'] = $usuario->getNome();
                    $_SESSION['login'] = $usuario->getLoginUsu();
                    header('location: ../views/telalogado.php');
                }else{

                    header('location: ../views/index.php');
                }


            }

            break;

        case 'logout':
            session_destroy();
            header('location: usuario.php');
            break;

        case 'editar':

            $nome = $_POST['Nome'];
            $login= $_POST['Login_usu'];
            $senha= $_POST['Senha_usu'];
            $email= $_POST['Email'];
            $crud = new CrudUsuarios();
            $atualizar = $crud->updateUsuario();

            // header('Location: perfil.php');

            break;

        case 'excluir':
        $crud = new CrudUsuarios();
        $apagar = $crud->deleteUsuario();

        header('Location: ../views/usuarios/index.php');
        break;
}
