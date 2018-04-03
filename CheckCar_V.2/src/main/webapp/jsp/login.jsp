<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
<html>


<head>
  <link rel="stylesheet" href="/assets/css/Nav-login.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

</head>


<body>
             
<%@include file = "Nav-login.jsp" %>


<div class="gray-line" style="margin-top: 6.2mm;"></div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div style="background-color:#99789B; padding:1em;" class="col-md-4 box-shadow-4">

                       <h2 align="center" style="color:#ffffff;">
                            <img src="/assets/img/logo-login-white.png" style="padding-right:0.3em;">MAP CAR</h2>           
                        <form name="login" action="login" method="post">
                        <div class="panel-body"> 
					<%
						if (result.equals("G")) {
					%>
					<div class="alert alert-danger">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>แบน </strong> โดนแบน 
					</div>
					
					<%
						}else if(result.equals("L")){
					%>
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<div class="alert alert-success">
						<strong>Success </strong> Logout Success
					</div>
					<%
						}else if(result.equals("F")){
					%>
					<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>ผิดพลาด ! </strong> กรุณากรอก ให้ถูกต้อง !!
					</div>
					<%	
						} 
					%>
					<div class="form-group">
						<label for="exampleInputEmail1"></label>Username <input type="text"
							class="form-control" placeholder="Usermane" name="username">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1"></label>Password <input
							type="password" class="form-control" placeholder="Password"
							name="password">
					</div>
						<button type="submit" class="btn btn-default btn-block">Login</button>
				    </div>      
				   		           
                        </form>
                 	 <div class="col-xs-12">&nbsp;</div>
                   <h5 align="right" style="color:#ffffff;" style="padding-right:0.3em;">MAP CAR v.1</h5>                       
               	   </div>
                
                    <!--<div style="padding:1em;"></div>-->
               	  <div class="hidden-md hidden-lg">&nbsp;</div>
             	  <div class="col-md-4 text-center">
                	 <img src="/assets/img/mobile_05.png" class="img-raise-4" height="380px">
                  </div>
                  <div class="col-md-4">
                        <h3>ทดลอง
                            <img src="/assets/img/eyefleet_sm.png" height="15px">
                        </h3>
                  <div style="font-size:1em;">
                    <p>สมัครบริการวันนี้ เพื่อทำให้ธุรกิจ
                   	    <br>ในทุกวันของคุณ ดีขึ้นกว่าเดิม
                    	<br>สอบถาม 02-052-4466
                    </p>
                    <i class="fa fa-check" aria-hidden="true"></i>สำหรับบุคคล
                    <br>
                 	<i class="fa fa-check" aria-hidden="true"></i>สำหรับธุรกิจ</div>
                  <div style="padding-top:3em;" align="center">
                	<a href="http://i.eye-fleet.com/east/iphone.htm#_signin"><img src="/assets/img/app-android.png" height="70px"></a>
                	<a href="http://m.eye-fleet.com/east/iphone.htm#_signin"><img src="/assets/img/app-iphone.png" height="70px"></a>
               	  </div>
               	
                        <!-- iphone|android -->
                  <div style="padding-top:1em;" align="center">
                	<a href="http://i.eye-fleet.com/east/iphone.htm#_signin"><img class="img-raise-4-scale" src="/assets/img/app_store.png" height="60px"></a>
                	<a href="http://play.google.com/store/apps/details?id=com.fleet.eyefleet"><img class="img-raise-4-scale" src="/assets/img/google_play.png" height="60px"></a>
				</div>
			</div>               
		</div>
	</div>
</div>
  		

  <!-- Modal Login-->
<div class="modal fade" id="myModal" role="dialog">
   	<div class="modal-dialog">
		<form name="login" action="login" method="post">
			<div class="panel panel-primary" style="margin-top: 15%">
				<div class="panel-heading" align="center">
				<h4 align="center"><strong>WELCOME MAP CAR</strong></h4></div>
				<br>
				<div class="panel-body"> 
					<%
						if (result.equals("G")) {
					%>
					<div class="alert alert-danger">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>แบน </strong> โดนแบน 
					</div>
					
					<%
						}else if(result.equals("L")){
					%>
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<div class="alert alert-success">
						<strong>Success </strong> Logout Success
					</div>
					<%
						}else if(result.equals("F")){
					%>
					<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>ผิดพลาด ! </strong> กรุณากรอก ให้ถูกต้อง !!
					</div>
					<%	
						} 
					%>
					<div class="form-group">
						<label for="exampleInputEmail1"></label>Username <input type="text"
							class="form-control" placeholder="Usermane" name="username">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1"></label>Password <input
							type="password" class="form-control" placeholder="Password"
							name="password">
					</div>
					<div class="panel-footer" align="right">
						<button type="submit" class="btn btn-success">Login</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>			
				</div>
			</div>
		</form>
	</div>
</div>


<footer class="footer_section section-primary" >
  <p align="center">Map Car</p>
</footer>

 
<script type="text/javascript">
	
	function fncSubmit(){
		if(document.login.username.value == "")
		{
			alert('Please input Username');
			document.login.username.focus();
			return false;
		}	
		if(document.login.password.value == "")
		{
			alert('Please input password');
			document.login.password.focus();
			return false;
		}	
	}
	function register() {
	    var txt;
	    if (confirm("คุณต้องการจะสมัคร หรือไม่")) {
	    	 window.location="/gotoregister"; 
	    	
	    } else {
	    	window.location="/";
	    }
	    document.getElementById("demo").innerHTML = txt;
	}
</script>
	
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>