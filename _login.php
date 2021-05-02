<?php
require "system/model.php";
if (count($_POST) > 0) {
    try {
        $email = $_POST['email'];
        $pwd = $_POST['password'];
        $query = "SELECT * FROM users WHERE email = '$email'";
        $query = mysqli_query($con, $query);
        $data = mysqli_fetch_assoc($query);
        if (is_null($data)) {
            echo "Akun tidak ditemukan!";
            die;
        } else {
            if (password_verify($pwd, $data['password'])) {
                $_SESSION['email'] = $email;
                header("Location: index.php");
                exit;
            } else {
                echo "Password anda salah!";
                die;
            }
        }
    } catch (\Throwable $th) {
        var_dump($th->getMessage());
        die;
    }
} else {
    echo "Tidak ada data yang dikirim!";
}
