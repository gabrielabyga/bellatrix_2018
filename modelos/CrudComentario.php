<?php 

require_once "Comentario.php";
require_once "BDConection.php";


class crudComentarios
{

      public function __construct()
    {
        $this->conexao = BDConection::getConexao();
    }

    public function getComentarios($id)
    {
       $sql = "SELECT * from comenta order by hora";
        $resultado = $this->conexao->query($sql);
        $listaComentarios = [];

        $comentarios = $resultado->fetchAll(PDO::FETCH_ASSOC);
        return $comentarios;
    }
    


    public function insertComentario(comentario $comentario)
    {
        $data_com = $comentario->getData_com();
        $texto = $comentario->getTexto();
        $hora = $comentario->getHora();
        $id_com = $comentario->getId_com();



       // $consulta = "INSERT INTO aluno_comenta (data_comentario, texto_comentario, id_usuario, id_pergunta)  
                      VALUES ('{$data_comentario}', '{$texto_comentario}', '{$id_usuario}', '{$id_pergunta}')";
        
        try {
            $res = $this->conexao->exec($consulta);

        } catch (PDOException $erro) {
            return $erro->getMessage();
        }

    }



    public function updateComentario(comentario $comentario)
    {

        $consulta = "UPDATE aluno_comenta SET data_comentario = '{$comentario->getData_comentario()}', texto_comentario = '{$comentario->getTexto_comentario()}', id_comentario = '{$comentario->getId_comentario()}'
               WHERE id_comentario={$comentario->getId_comentario()}";

        echo $consulta;
        try {
            $res = $this->conexao->exec($consulta);
            //return $res;
        } catch (PDOException $erro) {
            return $erro->getMessage();
        }
    }

     public function deleteComentario($id_comentario)
    {

        $consulta = "DELETE FROM aluno_comenta WHERE id_comentario = {$id_comentario}";
        try {
            $res = $this->conexao->exec($consulta);
            //return $res;
        } catch (PDOException $erro) {
            return $erro->getMessage();
        }
    }



   }


 ?>