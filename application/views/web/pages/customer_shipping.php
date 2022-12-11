

<div class="main">
    <div class="content" style="text-align: center">
        <div class="register_account" style="text-align:center;display:inline-block;float: none">
            <h3>Alamat Pemesanan Anda</h3>
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            <form method="post" action="<?php echo base_url('customer/save/shipping/address');?>">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <div>
                                    <input type="text" name="shipping_name" placeholder="Masukkan Nama Anda">
                                </div>


                                <div>
                                    <input type="text" name="shipping_city" placeholder="Masukkan Kota Anda">
                                </div>
                                <div>
                                    <input type="text" name="shipping_phone" placeholder="Masukkan Nomor Telepon Anda">
                                </div>
                            </td>
                            <td>
                               
                                <div>
                                    <input type="text" name="shipping_address" placeholder="Masukkan Alamat Anda">
                                </div>
        
                            </td>
                        </tr> 
                    </tbody></table> 
                <div class="search"><div><button class="grey">Kirim</button></div></div>
                <p class="terms">Harap isi data dengan sebenar benarnya</p>
                <div class="clear"></div>
            </form>
        </div>  	
        <div class="clear"></div>
    </div>
</div>