<?php
require "system/model.php";
if (count($_POST) > 0) {
    try {
        $nama = $_POST['nama'];
        $email = $_POST['email'];
        $pwd = password_hash($_POST['password'], PASSWORD_DEFAULT);
        $no_hp = $_POST['no_hp'];

        $query = "INSERT INTO users(nama,email,password,no_hp) VALUES('$nama','$email','$pwd','$no_hp')";
        $result = mysqli_query($con, $query);
        if ($result) {
            $_SESSION['email'] = $email;
            header("Location: index.php");
            exit;
        } else {
            echo "Register gagal!";
        }
    } catch (\Throwable $th) {
        var_dump($th->getMessage());
        die;
    }
} else {
    echo "Tidak ada data yang dikirim!";
}
