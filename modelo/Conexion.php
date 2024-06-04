<?php

class modeloConexion {
    //ARTRIBUTOS
    private $bdhost = 'localhost'; 
    private $bdnombre = 'id21456646_proyecto_lopez_calderon'; 
    private $usuario = 'id21456646_123sena'; 
    private $bdContrasena = '456Wp___'; 

    //METODOS 
    public function conectar(){
        $objPDO = new PDO('mysql:host='.$this->bdhost.';dbname='.$this->bdnombre.';
                            charset=utf8',$this->usuario,$this->bdContrasena); 
        $objPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
        return $objPDO; 
    }

    public function desconectar(){
        return null; 
    }
}

?>