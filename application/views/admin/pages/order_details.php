<!-- start: Content -->
<div id="content" class="span10">


    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="<?php echo base_url('dashboard') ?>">Home</a> 
            <i class="icon-angle-right"></i>
        </li>
        <li><a href="<?php echo base_url('manage/order') ?>">Detail Pemesanan</a></li>
    </ul>

    <div class="row-fluid sortable">		
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon user"></i><span class="break"></span>Detail Pemesanan</h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>



            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>

            <div class="box-content">
                <div class="span4 text-left">
                    <h2>Info Kustomer(00<?php echo $customer_info->customer_id; ?>)</h2>
                    <table class="table table-striped table-bordered">
                        <tr>
                            <td>Nama Kustomer : </td>
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
                <div class="span4"></div>
                <div class="span4 text-right" class="table table-striped table-bordered">
                    <h2>Info Data Pemesanan(00<?php echo $shipping_info->shipping_id; ?>)</h2>
                    <table class="table table-striped table-bordered">
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
                        
                    </table>
                </div>

                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Sr.</th>
                            <th>Nama Produk</th>
                            <th>Gambar Produk</th>
                            <th>Harga Produk</th>
                            <th>Kuantitas Produk</th>
                            <th>Subtotal Prouduk</th>
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
                                <td><img src="<?php echo base_url('uploads/'.$single_order_details->product_image);?>" style="width:200px;height:100px"/></td>
                                <td>Rp<?php echo $this->cart->format_number($single_order_details->product_price)?></td>
                                <td><?php echo $single_order_details->product_sales_quantity ?></td>
                                <td>Rp<?php echo $this->cart->format_number($single_order_details->product_price * $single_order_details->product_sales_quantity) ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                    <tfooter>
                        <td colspan="5">Jumlah Total</td>
                        <td>Rp= <?php echo $this->cart->format_number($order_info->order_total)?></td>
                    </tfooter>
                </table>            
            </div>
        </div><!--/span-->

    </div><!--/row-->



</div><!--/.fluid-container-->

<!-- end: Content -->