<?php
session_start();
require "../koneksi.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
</head>
<style>
    .main {
        height: 100vh;
        background: url(/tokoonline/gambar/bg.png) no-repeat;
        background-size: cover;

    }

    .login-box {
        width: 500px;
        height: 430px;
        box-sizing: border-box;
        border-radius: 10px;
        background: rgba(225, 225, 225, 0.5);
    }
</style>

<body>
    <div class="main d-flex flex-column justify-content-center align-items-center">
        <div class="login-box p-5 shadow">
            <form action="" method="post">
                <p align="center">
                    <img src="/tokoonline/gambar/logo.png" width="150px" height="150px">
                </p>
                <div>
                    <label for="username">Username</label>
                    <input type="text" class="form-control" name="username" id="username">
                </div>
                <div>
                    <label for="username">Password</label>
                    <input type="password" class="form-control" name="password" id="password">
                </div>
                <div>
                    <button class="btn btn-light form-control mt-3 text-light" type="submit" name="loginbtn" style="background-color: #FF69B4">Login</button>
                </div>
            </form>
        </div>

        <div class="mt-3" style="width: 500px">
            <?php
            if (isset($_POST['loginbtn'])) {
                $username = htmlspecialchars($_POST['username']);
                $password = htmlspecialchars($_POST['password']);

                $query = mysqli_query($con, "SELECT * FROM users WHERE username='$username'");
                $countdata = mysqli_num_rows($query);
                $data = mysqli_fetch_array($query);
                if ($countdata > 0) {
                    if (password_verify($password, $data['password'])) {
                        $_SESSION['username'] = $data['username'];
                        $_SESSION['login'] = true;
                        header('location: ../admin');
                    } else {
            ?>
                        <div class="alert alert-warning" role="alert">Password salah!</div>
                    <?php
                    }
                } else {
                    ?>
                    <div class="alert alert-warning" role="alert">Akun tidak tersedia!</div>
            <?php
                }
            }

            ?>
        </div>
    </div>
</body>

</html>