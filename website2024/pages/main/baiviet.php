<?php
    $sql_bv = "SELECT * FROM tbl_baiviet WHERE tbl_baiviet.id='$_GET[id]' LIMIT 1";
    $query_bv = mysqli_query($mysqli,$sql_bv);
    $query_bv_all = mysqli_query($mysqli,$sql_bv);
    $row_bv_title = mysqli_fetch_array($query_bv);
?>
<h3>Bài viết : <span style="text-align: center;text-transform: uppercase;"><?php echo $row_bv_title['tenbaiviet'] ?></span></h3>
    <div class="row">
        <?php 
            while($row_bv = mysqli_fetch_array($query_bv_all)){
            ?>
            <div class="col-md-3">
                <h4><?php echo $row_bv['tenbaiviet']?></h4>
            <img class="img img-responsive" width="100%" src="admincp/modules/quanlybaiviet/uploads/<?php echo $row_bv['hinhanh']?>">
            <p class="title_product"><?php echo $row_bv['tomtat']?></p>
            <p style="margin: 10px;" class="title_product"><?php echo $row_bv['noidung']?></p>
            </div>
        <?php
        } 
        ?>
    </div>