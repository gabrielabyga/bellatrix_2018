<?php 

   class Comentario{
      private $data_com;
      private $hora;    
      private $texto;
      private $id_com;

      public function __construct($data_com, $hora, $texto, $id_com)
      {
         $this->data_com = $data_comentario;
         $this->hora = $hora;
         $this->texto = $texto;
         $this->id_com = $id_com;
      }

      public function getData_com()
      {
          return $this->data_com;
      }
      
      public function setData_com($data_com)
      {
          return $this->data_com = $data_com;
      }

      public function getHora()
      {
          return $this->hora;
      }
      
      public function setHora($hora)
      {
          return $this->hora = $hora;
      }

      public function getTexto()
      {
          return $this->texto;
      }
      
      public function setTexto($texto)
      {
          return $this->texto = $texto;
      }

      public function getId_com()
      {
          return $this->id_com;
      }
      
      public function setId_com($id_com)
      {
          return $this->id_com = $id_com;
      }
   }

 ?>