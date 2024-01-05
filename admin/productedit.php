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
    if(isset($_GET['productId']) && $_GET['productId']!=NULL){
        $id = $_GET['productId'];
    } else {
        $id = $_GET['productId'];
    }
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
        //có $_FILES bởi vì có update hình ảnh  
        $updateProduct = $product->update_product($_POST,$_FILES,$id);
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
                        <h3>Product repair</h3>
                    <?php
                        if(isset($updateProduct)){
                            echo $updateProduct;
                        }
                    ?>  
                    </div>
            <?php
                $get_product_id = $product->getproductbyId($id);
                if ($get_product_id) {
                    while ($result_product = $get_product_id->fetch_assoc()) {
            ?>    
            <form action="" method="post" enctype="multipart/form-data">
            <table class="form">
                <tr>
                    <td class="form_title">
                        <label>Enter name</label>
                    </td>
                    <td>
                        <input type="text" name="productName" value="<?php echo $result_product['productName'] ?>" placeholder="Enter the name of the product" class="medium" />
                    </td>
                </tr>
                <tr>
                    <td class="form_title">
                        <label>The remaining amount</label>
                    </td>
                    <td>
                        <input type="button" name="productQuantity" value="<?php echo $result_product['quantity'] ?>" placeholder="Enter the number" class="medium" />
                    </td>
                </tr>
                <tr>
                    <td class="form_title">
                        <label>Add quantity</label>
                    </td>
                    <td>
                        <input type="text" name="addQuantity" value="" placeholder="Enter the number" class="medium" />
                    </td>
                </tr>
				<tr>
                    <td class="form_title">
                        <label>Product portfolio</label>
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
                            <option 
                            <?php 
                                if ($result['catId'] == $result_product['catId']) {
                                    echo 'selected';
                                }
                            ?> 
                            value="<?php echo $result['catId'] ?>"><?php echo $result["catName"] ?></option>
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
                            <option 
                            <?php 
                                if ($result['brandId'] == $result_product['brandId']) {
                                    echo 'selected';
                                }
                            ?> 
                            value="<?php echo $result['brandId'] ?>"><?php echo $result["brandName"] ?></option>
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
                                $typeProduct = new typeProduct();
                                $typeProductlist = $typeProduct ->show_type_product();
                                if ($typeProductlist) {
                                    while ($result = $typeProductlist ->fetch_assoc()) {
                            ?>
                            <option 
                            <?php 
                                if ($result['typeProductID'] == $result_product['typeProductId']) {
                                    echo 'selected';
                                }
                            ?> 
                            value="<?php echo $result['typeProductID'] ?>"><?php echo $result["typeProductName"] ?></option>
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
                        <textarea rows="9" cols="70" name="product_desc" class="tinymce"><?php echo $result_product['product_desc'] ?></textarea>
                    </td>
                </tr>
				<tr>
                    <td class="form_title">
                        <label>Price of the product</label>
                    </td>
                    <td>
                        <input type="text" name="price" value="<?php echo $result_product['price'] ?>" placeholder="Enter the price of the product" class="medium" />
                    </td>
                </tr>
            
                <tr>
                    <td class="form_title">
                        <label>Upload image</label>
                    </td>
                    <td>
                        <img src="upload/<?php echo $result_product['image'] ?>" style="width: 50px; height: 50px;" ><br>
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
                            <?php
                                if($result_product['type']==0) {
                            ?>
                                <option selected value="0">Men clothes</option>
                                <option value="1">Women clothes</option>
                                <option value="2">Children's wear</option>
                            <?php
                                }else if($result_product['type']==1){
                            ?>
                                <option value="0">Men clothes</option>
                                <option selected value="1">Women clothes</option>
                                <option value="2">Children's wear</option>
                            <?php
                                }else if($result_product['type']==2){
                            ?>
                                <option value="0">Men clothes</option>
                                <option value="1">Women clothes</option>
                                <option selected value="2">Children's wear</option>
                            <?php
                                }
                            ?>
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
            <?php 
                }
            }
            ?>
            </div>
            </div>
            </section>
        </main>
    </div>
</body>
</html>