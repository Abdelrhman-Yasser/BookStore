<!DOCTYPE html>
<html>
	
	<!-- *********************************************** -->
	<!-- DEFINE HEADER -->
	<!-- *********************************************** -->
	<head>
		<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
		<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>
	

	<!-- *********************************************** -->
	<!-- DEFINE BODY -->
	<!-- *********************************************** -->
	<body>
		<!--top nav bar-->
		<div class="w3-top" id="bar_toggle">
			<ul class="w3-navbar w3-teal w3-card-2" style="min-width:1100px">
				<li><a href="#" class="w3-hover-teal" style="padding-top:15px; padding-bottom:15px" onclick="handleSideNav()"><i class="fa fa-bars w3-xlarge"></i></a></li>
				<li><a href="#" class="w3-padding-16 w3-hover-teal">My Orders</a></li>
			</ul>
		</div>
		
		<!-- side tabs -->
		<nav class="w3-sidenav w3-white w3-card-2 w3-light-grey w3-animate-left" style="width:250px; margin-top:57px; display:none" id="SideNav01">
			<div class="w3-container">
				<h3>M-Shaban</h3>
			</div>
		  
			<a href="#" onclick="$('#home_hidden_form').submit(); return false;" >HOME</a>
			<a href="#" onclick="$('#account_hidden_form').submit(); return false;" >ACCOUNT</a>
			<a href="#" onclick="$('#cart_hidden_form').submit(); return false;" >SHOPPING CART</a>
			<a href="#" class="w3-green">MY ORDERS</a>
			<a href="#" onclick="$('#publisher_orders_hidden_form').submit(); return false;">PUBLISHER ORDERS</a>
			<a href="#" onclick="$('#signout_hidden_form').submit(); return false;">SIGN OUT</a>
		</nav>
		
		<!-- page content -->
		<div class="w3-container">

			<div class="w3-container" style="margin-top: 70px;">
			  <table class="w3-table-all w3-hoverable w3-card-2">
			  	<!-- header -->
			    <thead>
			      <tr class="w3-blue">
			        <th>First Name</th>
			        <th>Last Name</th>
			        <th>Points</th>
			      </tr>
			    </thead>
			    <!-- create rows -->
			    <tr>
			      <td>Jill</td>
			      <td>Smith</td>
			      <td>50</td>
			    </tr>
			    <tr>
			      <td>Eve</td>
			      <td>Jackson</td>
			      <td>94</td>
			    </tr>
			    <tr>
			      <td>Adam</td>
			      <td>Johnson</td>
			      <td>67</td>
			    </tr>
			  </table>
			</div>

			
		</div>


		<!-- handling site navigation (hidden forms) -->
		<form id="home_hidden_form" action="/Library/home" method="get" style="display: none">
		  <input type="hidden" name="myParameterName" value="myParameterValue">
		</form>

		<form id="account_hidden_form" action="/Library/account" method="post" style="display: none">
		  <input type="hidden" name="myParameterName" value="myParameterValue">
		</form>

		<form id="cart_hidden_form" action="/Library/cart" method="post" style="display: none">
		  <input type="hidden" name="myParameterName" value="myParameterValue">
		</form>

		<form id="publisher_orders_hidden_form" action="/Library/publiser_orders" method="post" style="display: none">
		  <input type="hidden" name="myParameterName" value="myParameterValue">
		</form>

		<form id="signout_hidden_form" action="/Library/signin" method="get" style="display: none">
		  <input type="hidden" name="myParameterName" value="myParameterValue">
		</form>



		
	</body>
	
	<!-- *********************************************** -->
	<!-- POST-LOADING SCRIPTS -->
	<!-- *********************************************** -->
	<script>

		function handleSideNav(){
			var x=document.getElementById("SideNav01");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}

	</script>
	
</html>

