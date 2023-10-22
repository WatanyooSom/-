<?php
require 'db/admin.php';
$object = new CRUD();
$rdst = $object->Rdsetup();
foreach($rdst as $row);
?>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!-- SWEET ALERT -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<!-- FONTS -->
<link href="https://fonts.googleapis.com/css?family=Chonburi|Mitr|Prompt" rel="stylesheet">

<link rel="shortcut icon" href="images/hlogo.png"/>

<title>ระบบแจ้งซ่อมด่วน SOS Repair System</title>

</head>

<body>
 
<div auto;padding: 6px 0px 6px 0px;></div>
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6" style="text-align: center;display: block;margin: auto;padding: 6px 0px 6px 0px;">
<img style="display: block;margin: auto;" src="images/hlogo.png" class="img-fluid">
<!-- <img style="display: block;margin: auto;" src="images/<?php echo $row['img'];?>" height="100"> -->
</div>
<div class="col-md-3"></div>
</div>

<div style="text-align: center;padding: 12px 0px 6px 0px;">  
<h5>ระบบแจ้งซ่อม</h5>
</div>

<h4 style="text-align: center;padding: 12px 0px 12px 0px"><b>เข้าสู่ระบบ</b></h4>

<form action="ckin/" method="post">
<div class="row" style="text-align: center;padding: 0px 6px 6px 6px">
<div class="col-md-4"></div>
<div class="col-md-4">
<div class="form-group">
<div class="input-group">
<input type="text" autocapitalize="off" name="smail" class="form-control" placeholder="Username (สำหรับสมาชิกให้ระบุอีเมล์)" required>
</div>
</div>
<br>
<div class="form-group">
<div class="input-group">
<input type="Password" autocapitalize="off" name="pass" class="form-control" placeholder="Password" required>
</div>
</div>
</div>
<div class="col-md-4"></div>
</div>
                          
<div style="text-align: center;display: block;margin: auto;padding: 24px 0px 0px 0px;">
<button style="padding: 6px 36px 6px 36px;color: black;" type="submit" class="btn btn-outline-primary"><img src="images/accept.png" height="24"> ยืนยัน</button>
</div>
</form>
<br>
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">
<div class="row" style="text-align:center;">
<div class="col-md-12"><a href="regis/"><h4>ลงทะเบียน</h4></a></div>
<!-- <div class="col-md-4"><a href="regis/forgot/">ลืมรหัสผ่าน</a></div>
<div class="col-md-4"><a href="regis/new/">เปลี่ยนรหัสผ่าน</a></div> -->
</div>
</div>
<div class="col-md-4"></div>
</div>

<style type="text/css">
body{
font-family:Prompt,sans-serif;
background:#F0EFEF;
}
.col-md-4 a:link {
color: black;
}
/* visited link */
.col-md-4 a:visited {
color: black;
}
/* mouse over link */
.col-md-4 a:hover {
color: blue;
}
/* selected link */
.col-md-4 a:active {
color: red;
}
</style>

<!-- JS, Popper.js, and jQuery -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>