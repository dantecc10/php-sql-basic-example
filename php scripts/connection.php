<?php
$connection = new mysqli("localhost", "root", "", "soccer");
if ($connection->connect_error) {
    die("La conexión a la base de datos falló: " . $connection->connect_error);
} else {
    echo ("Conexión establecida"); # Confirmación de conexión
}
