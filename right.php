<?php

include 'connectDB.php';
$sql = $conn->query("SELECT product.*, brands.BranName
                     FROM product
                     INNER JOIN brands ON product.BrandID = brands.BrandID
                     LIMIT 9");
$temp = $sql->fetch_assoc();

?>

<div class="right" >
<?php    
    if(isset($_SESSION["inforloginnow"]["email"]) && $_SESSION["inforloginnow"]["email"] === "admin@gmail.com"){
        echo '<div class="container">';
        while ($row = $sql->fetch_assoc()) {
            echo '
                <div class="inner-container">
                    <div class="inner-box">
                        <a href="detail_product.php?Model=sanpham_admin">
                        <img src="' . $row["ImgProduct"] . '" alt="" style="width: 100%; height: 180px;"><br>
                        <p class="tsp" style="font-size: 15px;">' . $row["ProductName"] . '</p>
                        <p class="thieu">' . $row["BranName"] . '</p>
                        <p class="giasp" style="color: #F45050;">' . number_format($row["Price"],0,',','.').'đ' . '</p>
                    </div>
                </div>';
        }
        echo '</div>';
    }else{
        echo '<div class="container">';
        while ($row = $sql->fetch_assoc()) {
            echo '
                <div class="inner-container">
                    <div class="inner-box">
                        <a href="detail_product.php?Model=sanpham&ProductID=' . $row["ProductID"] . '">
                        <img src="' . $row["ImgProduct"] . '" alt="" style="width: 100%; height: 180px;"><br>
                        <p class="tsp" style="font-size: 15px;">' . $row["ProductName"] . '</p>
                        <p class="thieu">' . $row["BranName"] . '</p>
                        <p class="giasp" style="color: #F45050;">' . number_format($row["Price"],0,',','.').'đ' . '</p>
                    </div>
                </div>';
        }
        echo '</div>';
    }
   
?>

    
</div>