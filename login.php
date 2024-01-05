<?php include './inc/handle.php' ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/dangnhap.css">
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/font/themify-icons/themify-icons.css">
    <link rel="shortcut icon" href="assets/img/favicon_created_by_logaster.ico" type="image/x-icon">
    <title>Log in</title>
</head>
<?php
	if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
        $login_user = $user->login_user($_POST);
    }
?>
<body>
    <?php include 'inc/header.php' ?>
       <div class="app">
            <div class="grid wide"> 
                <div class="app_content-all">
                    <form action="" method="post" class="auth__form-form">
                    <div class="row">
                        <div class="fix-content col c-5">
                            <div class="auth__form">
                                <div class="auth__form-container">
                                    <div class="form-container-title">You already have an MLL account
                                        <p>
                                            If you already have an account, log in to accumulate points
                                             Members and get better incentives!
                                        </p>
                                    </div>
                                    <div class="row">
                                        <div class="auth__form-group1 col c-12 ">
                                            <input type="text" name="username" class="auth__form-input" placeholder="Username">
                                        </div>
                                        <div class="auth__form-group1 col c-12">
                                            <input type="password" name="password" class="auth__form-input" placeholder="Password">
                                        </div>
                                    </div>
                                    <div style="text-align: right;">
                                        <a href="quenMatKhau.php" style="font-family: var(--font-family-monospace);color: #221f20;">Forget password</a>
                                    </div>
                                    <div class="baoloi">
                                    <?php
                                        if (isset($login_user)) {
                                            echo $login_user;
                                        }
                                    ?>
                                    </div>
                                    <input type="submit" name="submit" value="Login" class="btn btn-login mt-16">
                                </div>
                            </div>
                        </div>
                        <div class="col c-2">
                            <div class="auth-row">
                            </div>
                        </div>
                        <div class="col c-5">
                            <div class="auth__form">
                                <div class="auth__form-container">
                                    <div class="form-container-title">New customer of MLL
                                        <p>                              
                                        If you do not have an account on mll.com, use this option to access the registration form.
                                             By providing Ivy moda your detailed information, the purchase process on Ivymoda.com will be an interesting and faster experience.!
                                        </p>
                                    </div>
                                    <div class="btn-login1">
                                        <a href="dangky.php">Register </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                </form>
            </div>
        </div>  
        <?php include './inc/footer.php' ?>
    </div>
</body>
</html>