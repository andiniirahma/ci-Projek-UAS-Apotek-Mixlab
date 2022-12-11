<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="<?php echo base_url() ?>/assets/style.css" />
    </head>
    <body>
        <div class="main">
            <div class="header_area">
                <h1 align="center">Tanda Terima Uang</h1>
            </div>
            <div class="voucher_address">
                <div class="customer_address">
                    <h2>Info Kustomer(00<?php echo $customer_info->customer_id; ?>)</h2>
                    <table class="table table-hover table-bordered">
                        <tr>
                            <td>Nama Kustoemr : </td>
                            <td><?php echo $customer_info->customer_name; ?></td>
                        </tr>
                        <tr>
                            <td>Alamat Kustomer : </td>
                            <td><?php echo $customer_info->customer_address; ?></td>
                        </tr>
                        <tr>
                            <td>Telepon Kustomer : </td>
                            <td><?php echo $customer_info->customer_phone; ?></td>
                        </tr>
                        <tr>
                            <td>Email Kustomer : </td>
                            <td><?php echo $customer_info->customer_email; ?></td>
                        </tr>
                    </table>
                </div>
                <div class="shipping_address">
                    <h2>Info Pengiriman(00<?php echo $shipping_info->shipping_id; ?>)</h2>
                    <table class="table table-hover table-bordered">
                        <tr>
                            <td>Nama Pengiriman : </td>
                            <td><?php echo $shipping_info->shipping_name; ?></td>
                        </tr>
                        <tr>
                            <td>Alamat Pengiriman : </td>
                            <td><?php echo $shipping_info->shipping_address; ?></td>
                        </tr>
                        <tr>
                            <td>Telepon Pengiriman : </td>
                            <td><?php echo $shipping_info->shipping_phone; ?></td>
                        </tr>
                        <tr>
                            <td>Email Pengiriman : </td>
                            <td><?php echo $shipping_info->shipping_email; ?></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="voucher_item">
                <table width="100%" class="table table-striped table-bordered">
                    <thead class="table-inverse">
                        <tr>
                            <th>Sr.</th>
                            <th>Nama Produk</th>
                            <th>Gambar Produk</th>
                            <th>Harga Produk</th>
                            <th>Kuantitas Produk</th>
                            <th>Subtotal Produk</th>
                        </tr>
                    </thead>   
                    <tbody>
                        <?php
                        $i = 0;
                        foreach ($order_details_info as $single_order_details) {
                            $i++;
                            ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo $single_order_details->product_name ?></td>
                                <td><img src="<?php echo base_url('uploads/' . $single_order_details->product_image); ?>" style="width:200px;height:100px"/></td>
                                <td><?php echo $single_order_details->product_price ?></td>
                                <td><?php echo $single_order_details->product_sales_quantity ?></td>
                                <td><?php echo $single_order_details->product_price * $single_order_details->product_sales_quantity ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                    <tfoot class="table-inverse">
                    <td>Jumlah Total</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>= <?php echo $order_info->order_total ?> Rp</td>
                    </tfoot>
                </table>
            </div>
            <div class="footer_area">
                <p align="center">Copyright By Rostom Ali</p>
            </div>

        </div>
    </body>
</html>
