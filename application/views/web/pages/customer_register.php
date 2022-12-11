

<div class="main">
    <div class="content" style="text-align: center">
        <div class="register_account" style="text-align:center;display:inline-block;float: none">
            <h3>Buat Akun Baru</h3>
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            <form method="post" action="<?php echo base_url('customer/save');?>">
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
                                    <input type="text" name="customer_phone" placeholder="Masukkan Nomor Telepon Anda">
                                </div>
                                </td>
                            <td>  
                                <div>
                                    <input type="text" name="customer_email" placeholder="Masukkan Email Anda">
                                </div>  
                                <div>
                                    <input type="text" name="customer_address" placeholder="Masukkan Alamat Anda">
                                </div>
                            </td>
                        </tr> 
                    </tbody></table> 
                <div class="search"><div><button class="grey">Buat Akun</button></div></div>
                <p class="terms">Dengan mengklik 'Buat Akun', Anda menyetujui <a href="#">Terms &amp; Conditions</a>.</p>
                <div class="clear"></div>
            </form>
        </div>  	
        <div class="clear"></div>
    </div>
</div>