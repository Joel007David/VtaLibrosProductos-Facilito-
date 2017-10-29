<?php

session_start();


//Conexion mysql

define('DB_HOST', 'localhost');
define('DB_DATABASE', 'prueba');
define('DB_USER', 'root');
define('DB_PASSWORD', '');


//funciones

function execute_db($sql){
    $mysqli = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_DATABASE);
    $execute = $mysqli->query($sql);
    $mysqli->close();
    return $execute;
}

function cerrar_sesion() { 
    $_SESSION['usuario_web'] = NULL;
    $_SESSION[''] = NULL;
    header("location:index.php");
}

?>
