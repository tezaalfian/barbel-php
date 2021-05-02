<?php
require "model.php";

function users()
{
    $con = mysqli_connect("localhost", "root", "", "db_php");
    if (isset($_SESSION['email'])) {
        $query = "SELECT * FROM users WHERE email = '" . $_SESSION['email'] . "'";
        $sql = mysqli_query($con, $query);
        $result = mysqli_fetch_assoc($sql);
        return $result;
    } else {
        return false;
    }
}
