

<div class="main">
    <div class="content" style="text-align: center">
         <div class="login_panel" style="width:400px;text-align:center;display:inline-block;float: none">
            <h3>Masuk</h3>
            <p>Masuk dengan form di bawah ini.</p>
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            
            <form action="<?php echo base_url('customer/logincheck');?>" method="post">
                <input name="customer_email" placeholder="Masukkan Email Anda" type="text"/>
                <input name="customer_password" placeholder="Masukkan Password Anda" type="password"/>
                <p class="note">Jika Anda lupa kata sandi, cukup masukkan email Anda dan klik <a href="#">disini</a></p>
                <div class="buttons"><div><button class="grey">Masuk</button></div></div>
            </form>
        </div>	
        <div class="clear"></div>
    </div>
</div>