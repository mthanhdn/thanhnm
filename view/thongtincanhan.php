<?php
$user=$_SESSION["user"];
$sql="select * from thanhvien where user='$user'";
$kq=mysql_query($sql);
$r=mysql_fetch_array($kq);
$hoten=$r["hoten"];$email=$r["email"];$diachi=$r["diachi"];$dienthoai=$r["dienthoai"];
?>
<table width="560" cellspacing="0" cellpadding="0" bordercolordark="#FFFFFF" style="border:1px solid #CCC;">
          <tr>
              <td height="35" colspan="2" align="center" style="background: #444;color:white;"><div align="center">THÔNG TIN CÁ NHÂN CỦA KHÁCH HÀNG <?php echo $user ?></div></td>
          </tr>
		  <tr >  
            <td height="35" style="padding-left:70px"><div align="left" style="width:120px">Tên đăng nhập:</div></td>
 			<td width="405" style="padding-left:15px" align="left">
                <?php echo "$user"?>                   				
              </td>            
          </tr>
          <tr>            
            <td height="35" style="padding-left:70px"><div align="left" style="width:120px">Họ tên:</div></td>
     		<td width="405" style="padding-left:15px">
       		  <?php echo "$hoten"; ?></td>            
          </tr>
          <tr>            
            <td height="35" style="padding-left:70px"><div align="left" style="width:120px">Email:</div></td>
 			<td width="405" style="padding-left:15px">
              <div align="left">
                <?php echo "$email"; ?>
              </div></td>            
          </tr>
          <tr>   
            <td height="35" style="padding-left:70px"><div align="left" style="width:120px">Địa chỉ:</div></td>
 			<td width="405" style="padding-left:15px">
             <div align="left">
			<?php echo "$diachi"; ?>
            </div>
              </td>            
          </tr>       
          <tr>            
            <td height="35" style="padding-left:70px"><div align="left" style="width:120px">Điện thoại:</div></td>
 			<td width="405" style="padding-left:15px">
              <div align="left">
                <?php echo "$dienthoai"; ?>
              </div></td>            
          </tr>
          <tr>
            <td height="35" colspan="2" align="center" >
              <div align="right" style="padding-right:10px">
              <a href="index.php?b=change"><font color="black">>>>Thay đổi thông tin cá nhân</font></a>
              <input type="hidden" name="act"/>
            </div></td>
          </tr>
        </table>