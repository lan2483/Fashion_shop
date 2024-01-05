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
<?php 
    include '../classses/brand.php';
    include '../classses/category.php';
    include '../classses/product.php';
    include_once '../helpers/format.php';
?>
<?php
	$pd = new product();
	$fm = new Format();
    if (isset($_GET['delid'])) {
		$id = $_GET['delid'];
		$delproduct = $pd->del_product($id);
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
                        <h3>Product list</h3>
                        <div class="activity-more">
                            <span class="ti-plus"></span>
                            <a href="productadd.php"> <h4>Add product</h4></a>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table>
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Product name</th>
                                    <th>Quanlity</th>
                                    <th>Price of the product</th>
                                    <th>Product image</th>
                                    <th>Product style</th>
                                    <th>Category</th>
                                    <th>Brand</th>
                                    <th>Description</th>
                                    <th>Style</th>
                                    <th>activity</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php 
                                $pd = new product();
                                $pdlist = $pd->show_product();
                                if ($pdlist) {
                                    $i=0;
                                    while ($result = $pdlist->fetch_assoc()) {
                                        $i++;	
                            ?>
                            <tr>
                                <td><?php echo $i ?></td>
                                <td><?php echo $result['productName'] ?></td>
                                <td><?php echo $result['quantity'] ?></td>
                                <td><?php echo $result['price'] ?></td>
                                <td><img src="upload/<?php echo $result['image'] ?>" style="width: 50px; height: 50px;" ></td>
                                <td><?php echo $result['typeProductName'] ?></td>
                                <td><?php echo $result['catName'] ?></td>
                                <td><?php echo $result['brandName'] ?></td>
                                <td>
                                    <?php 
                                        echo $fm->textShorten($result['product_desc'],20);
                                    ?>
                                </td>
                                <td>
                                    <?php 
                                        if ($result['type']==0) {
                                            echo 'Men clothes';
                                        } else if ($result['type']==1) {
                                            echo 'Women clothes';
                                        } else if ($result['type']==2) {
                                            echo 'children clothes';
                                        }
                                    ?>
                                </td>
                                <td><a href="productedit.php?productId=<?php echo $result['productId']?>">Edit</a> 
                                || <a onclick="return confirm('You are sure to delete')" href="?delid=<?php echo $result['productId'] ?>">Delete</a></td>
                             </tr>
                                <?php
                                    }
                                 }
                                ?>
                        </table>
                    </div>
                </div>
            </div>
            </section>
        </main>
    </div>
</body>
</html>