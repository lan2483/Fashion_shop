<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
    <link rel="stylesheet" href="assets/font/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="assets/css/sp.css">
    <title>Product</title>
</head>
<?php include '../classses/brand.php';?>
<?php include '../classses/category.php';?>
<?php include '../classses/product.php';?>
<?php include '../classses/typeProduct.php';?>
<?php
    // isset($_POST['submit']) nếu người dùng nhấn vào submit thì mới thêm còn lại thì không
    $product = new product();
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
        //có $_FILES bởi vì có update hình ảnh  
        $insertProduct = $product->insert_product($_POST,$_FILES);
    }
?>
<body>
    <?php include './inc/sidebar.php' ?>
    <div class="main-content">
        <?php include './inc/header.php' ?>
        <main>
            <section class="recent">
            <div class="activity-grid">
                <div class="activity-card">
                    <div class="activity-header">
                        <h3>Add product</h3>
                        <?php
                            if(isset($insertProduct)){
                                echo $insertProduct;
                            }
                        ?>  
                    </div>
            <form action="" method="post" enctype="multipart/form-data">
            <table class="form">
                <tr>
                    <td class="form_title">
                        <label>Enter name</label>
                    </td>
                    <td>
                        <input type="text" name="productName" placeholder="Enter product" class="medium" />
                    </td>
                </tr>
                <tr>
                    <td class="form_title">
                        <label>Quanlity</label>
                    </td>
                    <td>
                        <input type="text" name="productQuantity" placeholder="Enter quanlity" class="medium" />
                    </td>
                </tr>
				<tr>
                    <td class="form_title">
                        <label>Product list</label>
                    </td>
                    <td>
                        <select id="select" name="category">
                            <option>Choose a catalog</option>
                            <?php
                                $cat = new category();
                                $catlist = $cat ->show_category();
                                if ($catlist) {
                                    while ($result = $catlist ->fetch_assoc()) {
                            ?>
                            <option value="<?php echo $result['catId'] ?>"><?php echo $result["catName"] ?></option>
                            <?php
                                    }
                                }
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="form_title">
                        <label>Product type</label>
                    </td>
                    <td>
                        <select id="select" name="typeProduct">
                            <option>Choose a product type</option>
                            <?php
                                $typeP = new typeProduct();
                                $catlist = $typeP ->show_type_product();
                                if ($catlist) {
                                    while ($result = $catlist ->fetch_assoc()) {
                            ?>
                            <option value="<?php echo $result['typeProductID'] ?>"><?php echo $result["typeProductName"] ?></option>
                            <?php
                                    }
                                }
                            ?>
                        </select>
                    </td>
                </tr>
				<tr>
                    <td class="form_title">
                        <label>Brand</label>
                    </td>
                    <td>
                        <select id="select" name="brand">
                            <option>Brand selection</option>
                            <?php
                                $brand = new brand();
                                $brandlist = $brand ->show_brand();
                                if ($brandlist) {
                                    while ($result = $brandlist ->fetch_assoc()) {
                            ?>
                            <option value="<?php echo $result['brandId'] ?>"><?php echo $result["brandName"] ?></option>
                            <?php
                                    }
                                }
                            ?>
                        </select>
                    </td>
                </tr>
				 <tr>
                    <td class="form_title" style="vertical-align: top; padding-top: 9px;">
                        <label>Description</label>
                    </td>
                    <td>
                        <textarea rows="9" cols="70" name="product_desc" class="tinymce"></textarea>
                    </td>
                </tr>
				<tr>
                    <td class="form_title">
                        <label>Price of product</label>
                    </td>
                    <td>
                        <input type="text" name="price" placeholder="Enter the price of the product" class="medium" />
                    </td>
                </tr>
            
                <tr>
                    <td class="form_title">
                        <label>Upload photos</label>
                    </td>
                    <td>
                        <input type="file" name="image" />
                    </td>
                </tr>
				<tr>
                    <td class="form_title">
                        <label>Product type</label>
                    </td>
                    <td>
                        <select id="select" name="type">
                            <option>Select Type</option>
                            <option value="0">Men clothes</option>
                            <option value="1">Women clothes</option>
                            <option value="2">Children's wear</option>
                        </select>
                    </td>
                </tr>

				<tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" Value="Save" />
                    </td>
                </tr>
            </table>
            </form>
            </div>
            </div>
            </section>
        </main>
    </div>
</body>
</html>