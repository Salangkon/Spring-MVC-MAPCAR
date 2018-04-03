<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="com.example.util.*"%>
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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/assets/css/frommap.css">
	<link rel="stylesheet" href="/assets/css/from.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<style type="text/css">
		.form-style-6 h1{
  		  background: #ff0000;
  		  padding:	 20px 0;
  		  font-size: 200%;
  		  font-weight: 500;
  		  text-align: center;
  		  color: #fff;
  		  margin: -16px -16px 16px -16px;
		}
	</style>
	<style>
		table {
   		border-collapse: collapse;
    	width: 100%;
		}

		th, td {
   		text-align: left;
    	padding: 8px;
		}

		tr:nth-child(even){background-color: #f2f2f2}

		th {
   		background-color: #4CAF50;
   		 color: white;
		}
	</style>
</head>
<%
	MemberBean bean = null;
	List<CarBean> carBean = null;
%>
<%
	bean = (MemberBean) request.getSession().getAttribute("LoginMember");
	carBean = (List<CarBean>) request.getAttribute("listcar");   
%>

<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvz1uVgLhfYyVUj_c0pwRDwAZPelVTIpE&libraries=places&callback=initMap" type="text/javascript"></script>



<body>

<%@include file = "Nav.jsp" %>

<div class="container-fluid">
	<div class="row content">
	
		<div class="col-sm-3 sidenav">
		<div class="form-style-6">
				<h1>Welcome to <%=bean.getMemUsername() %></h1>
			</div>
    	<div id='bodybox' style="margin-left: 3%">  
    	<table>
			<tr>
				<th>ลำดับ</th>
				<th>ที่อยุ่</th>
				<th>ลบ</th>
			</tr>
			<% for(int i=0; i < carBean.size();i++) {%>
			<tr>	
				<td><%= i+1 %></td>
				<td><%=carBean.get(i).getCarAddress()%></td>
				<td><a href="javascript: document.deleteForm.submit()" onclick="gotoDetele('<%=carBean.get(i).getCarId()%>')">
						<span class="glyphicon glyphicon-trash"></span></a></td>
			</tr>
			<%} %>
		</table><br><hr>
		<div align="right">
			<form action="carmap2" method="post" name="carmap2">
				<input type="hidden" value="<%=bean.getMemUsername() %>" name="useremail">
				<input type="submit" class="btn btn-primary" value="ดูรถ">
			</form>
		</div><br>
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

<footer class="footer_section section-primary " >
	<p align="center">MAP CAR</p>
</footer>

</body>
<!-- delete -->
<script type="text/javascript">
	function gotoDetele(filter) {
		document.getElementById("carId").value = filter;
		document.welcome.action="delete";
		document.welcome.submit();
		}
</script>


<script type="text/javascript" >  
var address = "";
var longti = "";
var lastti = "";
var vaId = "";
var mid = "";
var bs = "'";
var locations = [];
<% for(int i=0; i < carBean.size();i++) {%>
	address = '<%=carBean.get(i).getCarAddress()%>'
	longti =	<%=carBean.get(i).getCarLat()%>
	lastti =	<%=carBean.get(i).getCarLog()%>
	vaId =	<%=carBean.get(i).getCarId()%>
	mid = <%=carBean.get(i).getCarMid()%>
	
	locations.push([bs,address,bs,longti,lastti,'assets/img/1.png',mid,vaId]);
	<%
	}
	%>  
	    
var map = new google.maps.Map(document.getElementById('map'), {      
	zoom: 10,      
	center: new google.maps.LatLng(13.716117 , 100.656631),      
	mapTypeId: google.maps.MapTypeId.ROADMAP   
	});    
var infowindow = new google.maps.InfoWindow();     
var marker, i;    for (i = 0; i < locations.length; i++) {        
	marker = new google.maps.Marker({        
	position: new google.maps.LatLng(locations[i][3], locations[i][4]),       
	map: map,
	icon: locations[i][5]
	});     

	google.maps.event.addListener(marker, 'click', (function(marker, i) {        
return function() {         
 infowindow.setContent(locations[i][1]);          
 infowindow.open(map, marker);        
 }      
 })
 (marker, i));    
 }  
</script>
</html>
