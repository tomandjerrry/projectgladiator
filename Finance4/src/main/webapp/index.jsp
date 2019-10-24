<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="indexCss.css">
<link href="https://fonts.googleapis.com/css?family=Flamenco&display=swap" rel="stylesheet"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- ***********Sliding products*********** -->
  <style>
.card{
box-shadow: 0 4px 8px 0 rgba(0, 0, 255, 0.5);
max-width: 800px;
text-align: center;
margin: auto;
}
aside{
color:maroon;
text-align: center;
font-size: medium;
}

</style>
  
</head>

<!-- *******Body******* -->
<body>
<div class="body-img">

<header>				<!-- **here is our navigation bar** -->
	<nav>
		<div class="nav-div clearfix">
					<img alt="logo" src="Images/casper-coloring-page.jpg" class="logo">
			<ul class="main-nav animated zoomIn">
				<li><a href="fin/gotoadmin"> REGISTER </a></li>
				<li><a href="fin/login"> LOGIN  </a></li>
			</ul>
		</div>
	</nav>
	<div class="title">
	<h1 class="title-heading"> WELCOME TO <span>EMI CARD</span></h1>
	
	</div>
</header>				<!--** navigation ends here** -->
<br><br><br><br><br>
	
<div>
	
	<form action="fin/login" class="card">
		<h1>Samsaung galaxy</h1>
		<img alt="IMAGE" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWrJl2mbCzyf6hHDfc15hT3AkWet87RNp3xJKGnu3mMKK6_oP"
		 width="500px">
 		<p class="price">Rs. 40000</p>
   		<h4>No Cost <span class="prize-para">EMI</span></h4><br>
   		<h4>Tenor <b>12 Months</b>&nbsp &nbsp &nbsp &nbsp &nbsp    Expiry <b>30 OCT 2019</b></h4><br>
   		<input type="submit" value="BUY NOW"><br><br>
	</form>
</div>
	
	<br><br>			
</div>	<!-- ******body-img div ends -->

<!-- ****Footer Starts Here*** -->
<footer>
<div class="footer">
	<div class="footer-content">
		<div class="footer-section about">
			 <h1 class="logo-text">TITLE</h1><br>
			<p>
				No Cost EMI<br>
				pay in easy installment at no extra cost.
			</p><br>
			<div class="contact">
			<span>&#9742 &nbsp; 123-456-789</span>
			<span><i class="fa fa-envelope"></i> &nbsp; info@apnaEmiCard.com</span>
			</div>
			 <div class="socials">
				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-instagram"></i></a>
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-youtube"></i></a>
			</div>
		</div>
		<div class="footer-section links">
		 	<h2>QUICK LINKS</h2><br>
			<ul>
				<a href="#"><li>FAQ's</li></a>
				<a href="#"><li>Terms & Conditions</li></a>
				<a href="#"><li>Contact Us</li></a>
				<a href="#"><li>About Us</li></a>
				<a href="#"><li>Why Us</li></a>
			</ul>
		</div> 
		
		<div class="footer-section contact-form">
			<h2>Contact Us</h2><br>
			<form action="index.html" method="post">
				<input type="email" name="email" class="text-input contact-input" placeholder="Your Email Address..."><br>
				<textarea name="message" class="text-input contact-input" placeholder="Your Message Is......."></textarea><br>
				<button type="submit" class="btn btn-big"> Send</button>
			</form>
		</div>
	</div>
	<div class="footer-bottom">
		&copy; codingpoets.com | Designed by Sneha
	</div>
</div>
</footer>

</body>
</html>