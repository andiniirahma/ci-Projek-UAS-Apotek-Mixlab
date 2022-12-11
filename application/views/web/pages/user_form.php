

<div class="main">
    <div class="content">
        <div class="login_panel">
            <h3>Sign In</h3>
            <p>Masuk dengan form di bawah ini.</p>
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('messagelogin'); ?></p>
            </div>
            
            <form action="<?php echo base_url('customer/shipping/login');?>" method="post">
                <input name="customer_email" placeholder="Masukkan Email Anda" type="text"/>
                <input name="customer_password" placeholder="Masukkan Password Anda" type="password"/>
                <p class="note">Jika Anda lupa kata sandi, cukup masukkan email Anda dan klik <a href="#">disini</a></p>
                <div class="buttons"><div><button class="grey">Sign In</button></div></div>
            </form>
        </div>
        <div class="register_account">
            <h3>Buat Akun Baru</h3>
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            <form method="post" action="<?php echo base_url('customer/shipping/register');?>">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <div>
                                    <input type="text" name="customer_name" placeholder="Masukkan Nama Anda">
                                </div>

                                <div>
                                    <input type="text" name="customer_password" placeholder="Masukkan Password Anda">

                                </div>

                                <div>
                                    <input type="text" name="customer_phone" placeholder="Enter Your Phone">
                                </div>
                            </td>
                            <td>
                                <div>
                                    <input type="text" name="customer_email" placeholder="Enter Your Email">
                                </div>
                                        

                                <div>
                                    <input type="text" name="customer_address" placeholder="Enter Your Address">
                                </div>	

                            </td>
                        </tr> 
                    </tbody></table> 
                <div class="search"><div><button class="grey">Create Account</button></div></div>
                <p class="terms">Dengan mengklik 'Buat Akun', Anda menyetujui <a href="#">Terms &amp; Conditions</a>.</p>
                <div class="clear"></div>
            </form>
        </div>  	
        <div class="clear"></div>
    </div>
</div>