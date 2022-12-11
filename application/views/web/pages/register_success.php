

<div class="main">
    <div class="content" style="text-align: center">
        <div class="register_account" style="text-align:center;display:inline-block;float: none">
            <h3>Selamat Datang di <?php echo $this->session->flashdata('customer_name'); ?></h3>
            
            <p>Hi <?php echo $this->session->flashdata('customer_name'); ?>, Anda Berhasil Mendaftar pada Situs Kami
            Silahkan Ke Email Anda <a href="mailto:<?php echo $this->session->flashdata('customer_email'); ?>"><b><?php echo $this->session->flashdata('customer_email'); ?></b></a>
            Dan Aktifkan Akun Anda. Terima Kasih karena Tetap Bersama Kami.
            </p>
            
            
            
        </div>  	
        <div class="clear"></div>
    </div>
</div>