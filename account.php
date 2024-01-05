<?php include './inc/handle.php' ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/account.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="shortcut icon" href="assets/img/favicon_created_by_logaster.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="assets/font/themify-icons/themify-icons.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account information </title>
</head>
<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['save'])) {
    $idUser = Session::get('user_id');
    $update_user = $user->update_user($idUser, $_POST);
}
?>

<body>
    <div class="content">
        <div class="grid">
            <?php include 'inc/header.php' ?>
        </div>
        <div class="grid wide" style="border-top: 1px solid #ccc;">
            <div class="account-body">
                <div class="row">
                    <div class="col l-3  underline">
                        <div class="category-all">
                            <ul>
                                <li style="display: flex;
                                align-items: center;
                                justify-content: center;
                                padding: 10px;
                                border-bottom: 1px solid #ccc;">
                                    <span class="ti-user" style="padding: 10px;border: 1px solid;border-radius: 50%;"></span>
                                    <a href="" style="text-decoration: none;padding: 0 10px;font-family: var(--font-family-monospace); color: black;
                                font-weight: bold"> Lan Lan</a>
                                </li>
                                <li class="category">
                                    <span class="ti-user"></span>
                                    <a href=""> Account information</a>
                                </li>
                                <li class="category">
                                    <span class="ti-comments"></span>
                                    <a href=""> My notice</a>
                                </li>
                                <li class="category">
                                    <span class="ti-printer"></span>
                                    <a href="donhang.php"> Order management</a>
                                </li>
                                <li class="category">
                                    <span class="ti-location-pin"></span>
                                    <a href=""> Address number</a>
                                </li>
                                <li class="category">
                                    <span class="ti-envelope"></span>
                                    <a href="">Billing Information</a>
                                </li>
                                <li class="category">
                                    <span class="ti-write"></span>
                                    <a href=""> Product comments purchased</a>
                                </li>
                                <li class="category">
                                    <span class="ti-ink-pen"></span>
                                    <a href=""> Viewed products</a>
                                </li>
                                <li class="category">
                                    <span class="ti-ink-pen"></span>
                                    <a href=""> Favorite product</a>
                                </li>
                                <li class="category">
                                    <span class="ti-shopping-cart-full"></span>
                                    <a href=""> Products purchased later</a>
                                </li>
                                <li class="category">
                                    <span class="ti-star"></span>
                                    <a href="">My comment</a>
                                </li>
                                <li class="category">
                                    <span class="ti-ticket"></span>
                                    <a href=""> Discount code</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col m-12 l-9">
                        <div class="account-me">
                            <div class="row">
                                <div class="col l-7 m-12 underline">
                                    <div class="account-tt">
                                        <span class="account-title">Personal information </span>
                                    </div>
                                    <?php
                                    $userId = Session::get('user_id');
                                    $infor_user = $user->show_User($userId);
                                    while ($result_infor_user = $infor_user->fetch_assoc()) {
                                    ?>
                                        <form action="" method="post">
                                            <div class="information">
                                                <div class="information-name">
                                                    <label>Full name</label>
                                                    <input type="text" name="name" value="<?php echo $result_infor_user['name'] ?>">
                                                </div>
                                                <div class="information-name">
                                                    <label>Phone number</label>
                                                    <input type="text" name="phone" value="<?php echo $result_infor_user['sdt'] ?>">
                                                </div>
                                                <div class="information-name">
                                                    <label>Email</label>
                                                    <input type="text" name="email" value="<?php echo $result_infor_user['email'] ?>">
                                                </div>
                                                <div class="information-name">
                                                    <label>Date of birth</label>
                                                    <input type="text" name="date" value="<?php echo $result_infor_user['ngaySinh'] ?>">
                                                </div>
                                                <div class="information-name">
                                                    <label>Address</label>
                                                    <input type="text" name="address" value="<?php echo $result_infor_user['diaChi'] ?>">
                                                </div>
                                                <div class="information-sex">
                                                    <label>Gender</label>
                                                    <?php if ($result_infor_user['gioiTinh'] == "Nam" || $result_infor_user['gioiTinh'] == "nam") { ?>
                                                        <input type="radio" checked="true" name="sex" id="Boy" value="Nam">
                                                        <label for="Nam">Male</label>
                                                        <input type="radio" name="sex" id="Girl" value="Nữ">
                                                        <label for="Nu">Female</label>
                                                    <?php
                                                    } else {
                                                    ?>
                                                        <input type="radio" name="sex" id="Boy" value="Nam">
                                                        <label for="Nam">Male</label>
                                                        <input type="radio" checked="true" name="sex" id="Girl" value="Nữ">
                                                        <label for="Nu">Female</label>
                                                    <?php } ?>
                                                </div>
                                                <div style="text-align: center;margin: 15px;">
                                                    <?php
                                                    if (isset($update_user)) {
                                                        echo $update_user;
                                                    }
                                                    ?>
                                                </div>

                                                <div class="infotmation-save">
                                                    <input type="submit" name="save" value="Lưu thay đổi">
                                                </div>


                                            <?php } ?>
                                        </form>
                                        <!-- <div class="">
                                            <a class="back-history" href="javascript:window.history.back();">
                                                <span class="ti-arrow-left" style="padding: 0 10px;">

                                                </span>

                                            </a>
                                        </div> -->
                                </div>
                            </div>
                            <div class="col l-5">
                                <div class="form-upload__img">
                                    <input type="file" name="user_name">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php include './inc/footer.php' ?>
    </div>
</body>

</html>