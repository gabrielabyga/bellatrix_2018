<?php

require_once "CrudUsuarios.php";
require_once "Usuario.php";

//Login_usu = '{$usuario->getLoginUsu()}',  Senha_usu = '{$usuario->getSenhaUsu()}', Email = '{$usuario->getEmail()}',Nome = '{$usuario->getNome()}' WHERE Id={$usuario->getId()}";
    //$nome, $login_usu, $senha_usu, $email, $id=null
$usuario = new Usuario("lala","lala","1234","lala@gmail.com");

$crud = new CrudUsuarios();
$crud->updateUsuario($usuario);