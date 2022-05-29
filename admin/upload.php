<?php

if (($_FILES["file"]["type"] == "image/pjpeg") || ($_FILES["file"]["type"] == "image/jpeg") || ($_FILES["file"]["type"] == "image/png") || ($_FILES["file"]["type"] == "image/gif") || ($_FILES["file"]["type"] == "image/svg+xml")) {
    if (move_uploaded_file($_FILES["file"]["tmp_name"], "../img/productos/" . $_FILES['file']['name'])) {
        echo $_FILES['file']['name'];
    } else {
        echo 0;
    }
} else {
    echo 0;
}
?>