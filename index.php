<?php
 ini_set('display_errors', 0);
if(!isset($_SESSION))
	session_start();
	$user=$_SESSION["user"];
	$title="Thanhnmpd01257 Assignment PHP2";
?> 
<?php include "model/connect.php"; include "function.php"; ?>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php
echo $title;
?></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<script language="JavaScript" type="text/JavaScript" src="quanly.js"></script>
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="ajax.js"></script>
<script language="JavaScript" type="text/JavaScript" src="Scripts/avim.js"></script>
</head>

<body onload="kt()">
<script type="text/javascript" src="Scripts/tooltip/wz_tooltip.js"></script> 
<script type="text/javascript" src="Scripts/tooltip/tip_balloon.js"></script> 
<script type="text/javascript" src="Scripts/tooltip/tip_centerwindow.js"></script> 
<script type="text/javascript" src="Scripts/tooltip/tip_followscroll.js"></script>
<div id="container">
	<div id="header">
	  <?php include "view/header.php";?>
  </div>
    <div id="menu-ngang">      
	 <?php include "menu-top.php"; ?>   
    </div>
    <br clear="all" />
      
    <div id="main" style="margin-top:0px;">
    	<div id="content-left">
        <?php include "view/menu-left-or.php";?>        
        </div>
        
        <div id="content-right">
	
        <div style="height:5px"></div>
        <?php include "view/menu-giohang.php"; ?>	

  
                   	         	  
        </div>
        	
        <div id="content">
		<?php
		$file="view/content.php";
		//$file="include/cont.php";
		if(isset($_REQUEST["b"]))
		{
			$b=$_REQUEST["b"];
			if($b=="gioithieu")
				$file="view/gioithieu.php";
			if($b=="lienhe")
				$file="view/lienhe.php";				
			if($b=="huongdanmuahang")
				$file="view/huongdanmuahang.php";
			if($b=="ct")
				$file="view/chitiet.php";
			if($b=="ctm")
				$file="view/chitiet-menu.php";	
			if($b=="nsp")
				$file="view/nhomsp.php";
			if($b=="lsp")
				$file="view/loaisp.php";
			if($b=="tk")
				$file="view/result.php";
			if($b=="dk")
				$file="view/register.php";
			if($b=="cpw")
				$file="view/change-pw.php";
			//if($b=="rpw")
			//	$file="include/reset-pw.php";
			if($b=="showcart")
				$file="view/showcart.php";
			if($b=="gh")
				$file="view/giohang.php";				
			if($b=="pay")
				$file="view/thanhtoan.php";	
			if($b=="listcart")
				$file="view/cart.php";
			if($b=="m")
				$file="view/noidung-menu.php";
			if($b=="tintuc")
				$file="view/tintuc.php";	//tin tuc						
			if($b=="ttcn")
				$file="view/thongtincanhan.php";					
			if($b=="change")
				$file="view/change.php";									
			if($b=="pwr")
				$file="include/create-pass.php";
		}
		include "$file";
		
		?>
        </div>
    </div>
</div>
<div id="footer">
<?php include "view/footer.php"; ?>   
</div>
</body>
</html>