<?php
session_start();
$con = mysqli_connect("localhost", "root", "", "db_php");
if ($con) {
    return true;
} else {
    echo "Koneksi database gagal";
    die;
}
