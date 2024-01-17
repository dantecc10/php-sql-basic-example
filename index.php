<!DOCTYPE html>
<html lang="es-MX">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Goleadores - Top 4 futbolistas más goleadores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>

<body>
    <section>
        <div class="container">
            <header class="d-flex justify-content-center">
                <h1>Futbolistas con más goles en la historia</h1>
            </header>
        </div>
        <div class="container">
            <div class="col">
                <div class="row">
                    <div class="col">
                        <table class="w-100">
                            <thead>
                                <tr>
                                    <th class="text-center fs-3">#</th>
                                    <th class="text-center fs-3">Nombre</th>
                                    <th class="text-center fs-3">Apellidos</th>
                                    <th class="text-center fs-3">Goles</th>
                                    <th class="text-center fs-3">País</th>
                                    <th class="text-center fs-3">Edad</th>
                                    <th class="text-center fs-3">Imagen</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                include "php scripts/connection.php";
                                $query = "SELECT * FROM `jugadores`";
                                $result = $connection->query($query);
                                if ($result->num_rows > 0) { // Condicional para revisar si existen datos (al menos 1 [por eso checa si son > {mayor} que 0])
                                    // Hacer fetch a los datos
                                    while ($row = $result->fetch_array()) {
                                        // Procesar cada registro obtenido
                                        echo (' <tr>
                                                    <td class="text-center">' . $row['id_jugador'] . '</td>
                                                    <td class="text-center">' . $row['nombre_jugador'] . '</td>
                                                    <td class="text-center">' . $row['apellidos_jugador'] . '</td>
                                                    <td class="text-center">' . $row['goles_jugador'] . '</td>
                                                    <td class="text-center">' . $row['país_jugador'] . '</td>
                                                    <td class="text-center">' . $row['edad_jugador'] . '</td>
                                                    <td class="text-center">
                                                        <img
                                                            height="100px"
                                                            src="' . $row['imagen_jugador'] . '"
                                                        />
                                                    </td>
                                                </tr>');
                                    }
                                } else { // No hay registros
                                    echo ("No se encontró ningún registro en la tabla de jugadores.");
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>