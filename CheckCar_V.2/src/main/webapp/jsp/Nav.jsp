<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/assets/css/Nav-login.css">
</head>



<body>

<div class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>  
        <span class="icon-bar"></span>                       
      </button>
       <a class="navbar-brand" href="#" style="margin-left: 10%"><img src="/assets/img/logo.png" width="auto" height="100%"></a>
    </div>
     <div class="collapse navbar-collapse" id="myNavbar" style="margin-left: 15%">
      <ul class="nav navbar-nav">
         <li><a href="/welcomeMember">Home</a></li>
         <li><a href="/carmap2">เผ้าสังเกตุรถ</a></li>
      	 <li><a href="/addcar2">ลงทะเบียนรถ</a></li>
     	 <!--<li><a href="/profile">โปรไฟล์</a></li>-->
     </ul>
     <ul class="nav navbar-nav navbar-right" >
        <li class="active"><a href="logout"><strong>Logout</strong></a></li>
     </ul>
    </div>
  </div>
</div>

</body>
</html>