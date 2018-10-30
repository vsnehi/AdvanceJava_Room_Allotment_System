<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta charset="utf-8">
 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
 
<title>Private Rest House</title>
<link rel="icon" href="../images/vik.jpg" type="image/gif" sizes="16x16">


 
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>



<jsp:directive.include file = "../Includes/include-src-welcome-meta.jsp" />
 
</head>
<body>
<!-- Navigation bar with social media icons -->
<div class="w3-bar w3-black w3-hide-small">
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-facebook-official"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-instagram"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-snapchat"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-flickr"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-twitter"></i></a>
  <a href="#" class="w3-bar-item w3-button"><i class="fa fa-linkedin"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-right"><i class="fa fa-search"></i></a>
</div>

<%
		if (session != null) {
			if (session.getAttribute("name") != null) 
			
			
			
			
			{
				String name = (String) session.getAttribute("name");
				String email = (String) session.getAttribute("email");
				String mobile = (String) session.getAttribute("mobile");
				String gender = (String) session.getAttribute("gender");
				%>






















<!-- Left Column -->
<div class="w3-sidebar w3-bar-block w3-animate-left" style="display:none;z-index:5;position:random;" id="mySidebar">
  
     <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="../PG/Party.jpg" style="width:100%" alt="">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            
          </div>
        </div>
        <div class="w3-container">
            <button class="w3-bar-item w3-button w3-la,$rge" onclick="w3_close()">Close &times;</button>
            <a href="#" class="w3-bar-item w3-button"><% out.print(name); %></a><br>
            <a href="#" class="w3-bar-item w3-button"><% out.print(email); %></a></a>
            <a href="#" class="w3-bar-item w3-button"><% out.print(gender); %></a></a>
        <hr>
          
 
        </div>
        
        
        
      </div>

    <!-- End Left Column -->
</div>


















<%-- <!-- Sidebar -->
<div class="w3-sidebar w3-bar-block w3-animate-left" style="display:none;z-index:5" id="mySidebar">
  
  
  <button class="w3-bar-item w3-button w3-la,$rge" onclick="w3_close()">Close &times;</button>
  <a href="#" class="w3-bar-item w3-button">Your Name:<% out.print(name); %></a><br>
  <a href="#" class="w3-bar-item w3-button">Your Email:<% out.print(email); %></a></a>
  <a href="#" class="w3-bar-item w3-button">Your Number:<% out.print(gender); %></a></a>


</div>

<!-- Page Content -->
<div class="w3-overlay w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" id="myOverlay"></div>

<div> --%>





  <button class="w3-button w3-white w3-xxlarge" onclick="w3_open()">&#9776;</button>
 
 
 
     
<script>
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>















 


	<%			
				
				
				
			} else {
				
			}
		}
	%>
 

<div class="men-wear">
	<div class="container-fluid">
		<div class="col-md-2 products-left w3-fixed">
			<div class="filter-price">
				<h3>Filter By Price</h3>
					<ul class="dropdown-menu6">
						<li>                
							<div id="slider-range"></div>							
							<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>			
					</ul>
							<!---->
							<script type='text/javascript'>//<![CDATA[ 
							$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 950000,
										values: [ 0, 71000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "₹" + ui.values[ 0 ] + " - ₹" + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "₹" + $( "#slider-range" ).slider( "values", 0 ) + " - ₹" + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]>  

							</script>
						<script type="text/javascript" src="../DesiningTools/js/jquery-ui.js"></script>
					 <!---->
			</div>
			<div class="css-treeview">
				<h4>Categories</h4>
                    <li>Product list here</li>
            </div>
			
			
		
<div class="community-poll">

<div class="swit form">	
           			<form>
           			<center><h3><b>Select Brand</b></h3></center><hr>
		<div class="check_box"> <div class="checkbox"> <label><input type="checkbox" name="radio" checked=""></input><i></i>Brand A</label> </div></div>
		<div class="check_box"> <div class="checkbox"> <label><input type="checkbox" name="radio"></input><i></i>Brand B</label> </div></div>
		<div class="check_box"> <div class="checkbox"> <label><input type="checkbox" name="radio"></input><i></i>Brand C</label> </div></div>
		<div class="check_box"> <div class="checkbox"> <label><input type="checkbox" name="radio"></input><i></i>Brand D</label> </div></div>
		<div class="check_box"> <div class="checkbox"> <label><input type="checkbox" name="radio"></input><i></i>Brand E</label> </div></div>	
		<div class="check_box"> <div class="checkbox"> <label><input type="checkbox" name="radio"></input><i></i>Brand F</label> </div></div>
		<div class="check_box"> <div class="checkbox"> <label><input type="checkbox" name="radio"></input><i></i>Brand G</label> </div></div>	
		<div class="check_box"> <div class="checkbox"> <label><input type="checkbox" name="radio"></input><i></i>Brand H</label> </div></div>		
	
					</form>
</div>
</div>
			
			
<div class="clearfix"></div>
		</div>
		
		
		
		<div class="col-md-10 products-right">
			<h5>Product Compare(0)</h5>
			<div class="sort-grid">
				<div class="sorting">
					<select id="country1" onchange="change_country(this.value)" class="frm-field required sect w3-padding form">
						<option value="null" class="form-control w3-input padding-large">Customer Rating</option>
						<option value="null" class="form-control w3-input padding-large">Alphabet Up</option> 
						<option value="null" class="form-control w3-input padding-large">Alphabet Down</option> 
						<option value="null" class="form-control w3-input padding-large">Price Up</option>
						<option value="null" class="form-control w3-input padding-large">Price Down</option>
						<option value="null" class="form-control w3-input padding-large">Customer Review</option>
						<option value="null" class="form-control w3-input padding-large">Most Viewed</option>	
					</select>
					<div class="clearfix"></div>
				</div>
				<div class="sorting">

<!-- Search box NavBar -->


				<input type="text" class="w3-input" placeholder="Search from here"></input>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>


<div class="container-fluid">
<div class="col-lg-12">

<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="../PG/G.png" alt="" class="pro-image-front">
							<img src="../PG/G10room.jpg" alt="" class="pro-image-back">
									 
										<span class="product-new-top">68% off</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href="single.html">Home</a> &nbsp;<b><font style="color:#800000;font-size:26px;weight:bold;">****</font><font style="font-size:26px;weight:bold;">*</font></b></h4>
									<div class="info-product-price">
										<span class="item_price">₹4,550</span>
										<del>₹8,550</del>
									</div>
								
									<a href="#" class="item_add single-item hvr-outline-out button2">Wishlist</a>
									 
									</br>		</br>
									 
									<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
						             
						</div>
					</div>
</div>
<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="../PG/G2.jpg" alt="" class="pro-image-front">
							<img src="../PG/G3.jpg" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											 
										</div>
										<span class="product-new-top">8% off</span>
						</div>
						<div class="item-info-product ">
									<h4><a href="single.html">  Home</a> &nbsp;<b><font style="color:#800000;font-size:26px;weight:bold;">****</font><font style="font-size:26px;weight:bold;">*</font></b></h4>
									<div class="info-product-price">
										<span class="item_price">₹4,550</span>
										<del>₹4,55</del>
									</div>
						     		<a href="#" class="item_add single-item hvr-outline-out button2">Wishlist</a>
									 
									</br>		</br>
									 
									<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
						     
						</div>
					</div>
</div>
<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="../PG/G4.jpg" alt="" class="pro-image-front">
							<img src="../PG/G6.jpg" alt="" class="pro-image-back">
										 
										<span class="product-new-top">6% off</span>
						</div>
						<div class="item-info-product ">
									<h4><a href="single.html">Home</a> &nbsp;<b><font style="color:#800000;font-size:26px;weight:bold;">****</font><font style="font-size:26px;weight:bold;">*</font></b></h4>
									<div class="info-product-price">
										<span class="item_price">₹4,550</span>
										<del>₹550</del>
									
									</div>
								    <a href="#" class="item_add single-item hvr-outline-out button2">Wishlist</a>
									 
									</br>		</br>
									 
									<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
						     
						</div>
					</div>
</div>
<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="../PG/G11.jpg" alt="" class="pro-image-front">
							<img src="../PG/G12.jpg" alt="" class="pro-image-back">
									 
										<span class="product-new-top">3% off</span>
						</div>
						<div class="item-info-product ">
									<h4><a href="single.html">Home</a> &nbsp;<b><font style="color:#800000;font-size:26px;weight:bold;">****</font><font style="font-size:26px;weight:bold;">*</font></b></h4>
									<div class="info-product-price">
										<span class="item_price">₹4,550</span>
										<del>₹4,5500</del>
									</div>
								   <a href="#" class="item_add single-item hvr-outline-out button2">Wishlist</a>
									 
									</br>		</br>
									 
									<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
						     
						</div>
					</div>
</div>
<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="../PG/G13.jpg" alt="" class="pro-image-front">
							<img src="../PG/G20.jpg" alt="" class="pro-image-back">
						 
										<span class="product-new-top">1% off</span>
						</div>
						<div class="item-info-product ">
									<h4><a href="single.html">Home</a> &nbsp;<b><font style="color:#800000;font-size:26px;weight:bold;">****</font><font style="font-size:26px;weight:bold;">*</font></b></h4>
									<div class="info-product-price">
										<span class="item_price">₹1,550</span>
										<del>₹4,550</del>
									</div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Wishlist</a>
									 
									</br>		</br>
									 
									<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
						     						
						</div>
					</div>
</div>
<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="../PG/3bed2.jpg" alt="" class="pro-image-front">
							<img src="../PG/3bed.jpg" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											 
										</div>
									<span class="product-new-top">98% off</span>
						</div>
						<div class="item-info-product ">
									<h4><a href="single.html">Home</a> &nbsp;<b><font style="color:#800000;font-size:26px;weight:bold;">****</font><font style="font-size:26px;weight:bold;">*</font></b></h4>
									<div class="info-product-price">
										<span class="item_price">₹9,550</span>
										<del>₹88,550</del>
									</div>
							        <a href="#" class="item_add single-item hvr-outline-out button2">Wishlist</a>
									 
									</br>		</br>
									 
									<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
						     
						</div>
					</div>
</div>
</div>
</div>
 

</div>
</div>
				
				<div class="clearfix"></div>
</div>
		<div class="clearfix"></div>
 	
<script src="../DesiningTools/w3.js"></script>
 
 
</body>
</html>