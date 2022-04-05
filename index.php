<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" href="index.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>
    <body>
        <div class="amarillo area_juego">
            <div class="area_ficha efecto">
                <div class="ficha"></div>
            </div>
            <?php
            for ($index = 0; $index < 10; $index++) {
                ?>
                <div class="paso horizontal"></div>
                <?php
            }
            ?>
            <div class="jugar" onclick="avanzar()">Tirar dado</div>
        </div>
        <script type="text/javascript" src="index.js"></script>
    </body>
</html>
