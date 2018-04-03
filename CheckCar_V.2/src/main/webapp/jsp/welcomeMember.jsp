<!DOCTYPE html>

<%@page import="javax.swing.text.DefaultEditorKit.BeepAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@page import="com.example.model.*"%>
<%@ page import="java.util.List"%>
<html lang="en">
<head>

	<title>Bootstrap Example</title>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/assets/css/from.css">
	<link rel="stylesheet" href="/assets/css/frommap.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<style type="text/css">
		.form-style-6 h1{
	    background: #ff0000;
		padding: 20px 0;
		font-size: 140%;
	    font-weight: 300;
		text-align: center;
		color: #fff;
		margin: -16px -16px 16px -16px;
		}
	</style>
</head>
<%
	MemberBean bean = null;
%>
<%
	bean = (MemberBean) request.getSession().getAttribute("LoginMember");
    
%>
<body>

<%@include file = "Nav.jsp" %>

<div class="container-fluid">
	<div class="row content">
	
		<div class="col-sm-3 sidenav">
		<div class="form-style-6">
				<h1>Welcome to <%=bean.getMemUsername() %></h1>
			</div>
    	<div id='bodybox' style="margin-left: 3%">  
    	
			
		</div>
		</div>

		<div class="col-sm-9">
		<div class="content">	
		<div id="map" style="width:100%;height:525px;">
		</div>	
		</div>
		</div>
	</div>
</div>

      
  
<footer class="footer_section section-primary" >
  <p align="center">Map Car</p>
</footer>
					

</body>
<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvz1uVgLhfYyVUj_c0pwRDwAZPelVTIpE&libraries=places&callback=initMap"         
   		 type="text/javascript">
</script>
<script type="text/javascript" >   
var locations = [   
    ['TEST CAR ', 13.736717, 100.523186,'assets/img/1.png', 1],      
	];    
var map = new google.maps.Map(document.getElementById('map'), {      
zoom: 12,      
center: new google.maps.LatLng(13.736717, 100.523186),      
mapTypeId: google.maps.MapTypeId.ROADMAP   
});    
var infowindow = new google.maps.InfoWindow();    
var marker, i;    for (i = 0; i < locations.length; i++) {        
marker = new google.maps.Marker({        
position: new google.maps.LatLng(locations[i][1], locations[i][2]),       
map: map,
icon: locations[i][3]
});     

google.maps.event.addListener(marker, 'click', (function(marker, i) {        
return function() {         
 infowindow.setContent(locations[i][0]);          
 infowindow.open(map, marker);        
 }      
 })
 (marker, i));    
 }  
 </script>
</html>
