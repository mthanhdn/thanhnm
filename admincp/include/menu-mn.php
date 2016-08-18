<table width="215" border="0" cellspacing="0" cellpadding="0">
  <tr>
   <td class="menu" height="30"><div align="left" style="color:#FFF; font-family:Tahoma; font-size: 13px; font-weight:bold">NHÓM &amp; LOẠI SẢN PHẨM</div></td>
  </tr>
  <tr>
  	<td  height="30" style="padding-left:5px; background: #eee">
      <strong> NHÓM SẢN PHẨM</strong></td>
  </tr>
  <tr>
   <td height="60" style="padding-left:5px">
  <div align="left">
  <a href="../admincp/?m=mn&b=nhomsp-insert" class="admin-menu-left"> Thêm nhóm sản phẩm</a> 
   	<div style="height:10px"></div>
	<a href="../admincp/?m=mn&b=nhomsp-list" class="admin-menu-left"> Danh sách nhóm sản phẩm</a>
	</div>
    </td>
  </tr>
    <tr>
  	<td  height="30" style="padding-left:5px; background: #eee">
      <strong> LOẠI SẢN PHẨM</strong></td>
  </tr>
  <tr>
   <td height="50" style="padding-left:5px">
  <div align="left">
 <a href="../admincp/?m=mn&b=loaisp-insert" class="admin-menu-left"> Thêm loại sản phẩm</a> 
   	<div style="height:10px"></div>
	<a href="../admincp/?m=mn&b=loaisp-list" class="admin-menu-left"> Danh sách tất cả loại sản phẩm</a>
	</div>
    </td>
  </tr> 
   <tr bgcolor="#eee">
   <td style="padding-left:5px;" height="25"><strong>LOẠI SẢN PHẨM THEO NHÓM</strong></td>
   </tr>
  <tr> 
	<td>  
    <?php
    $sql3=mysql_query("select * from nhomsanpham");
	while($r3=mysql_fetch_array($sql3))
	{
		$tennhom=$r3["tennhom"];$id_nhom=$r3["id_nhom"];
		echo "<tr><td>
		<div style=\"padding-left:20px;\">
		<table border=0 cellspacing=0 cellpadding=0 >
		<tr><td height=30px width=100%>		
		&nbsp;&nbsp;&nbsp;
		<a style=\"color:#000000\" onMouseOver=\"style.color='#0099CC'\" onMouseOut=\"style.color='#000000'\" href='../admincp/?m=mn&b=loaisp-get-list&idn=$id_nhom'>$tennhom</a>
		</td></tr>		
		</table>
		</div></td></tr>";	
	}
	?>
    </td>
  </tr>
</table>