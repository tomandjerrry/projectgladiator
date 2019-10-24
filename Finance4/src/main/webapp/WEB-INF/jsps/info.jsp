<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="indexCss.css">
<link href="https://fonts.googleapis.com/css?family=Flamenco&display=swap" rel="stylesheet"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

.prod{
text-align:center;
float:left;
margin-right:100px;
}
.det{
padding-top:40px;

}
.emi{
text-align:center;
}


</style>
<script type="text/javascript">
function myEmi(){
	var x=document.getElementById("dt").value;
	if(x==="3"){
		var y= ${prodInfo.prodCost}/3
document.getElementById("demo").innerHTML = "you have to pay " + y;
		
	}
	if(x==="6"){
		var y= ${prodInfo.prodCost}/6
document.getElementById("demo").innerHTML = "you have to pay " + y;
	}
	if(x==="9"){
		var y= ${prodInfo.prodCost}/9
document.getElementById("demo").innerHTML = "you have to pay " + y;
	}
	if(x==="12"){
		var y= ${prodInfo.prodCost}/12
document.getElementById("demo").innerHTML = "you have to pay " + y;
	}
}
</script>
</head>

<body>

    <header>				<!-- **here is our navigation bar** -->
      <nav>
          <div class="nav-div clearfix">
                      <img alt="logo" src="Images/casper-coloring-page.jpg" class="logo">
              <ul class="main-nav animated zoomIn">
                  <li><a href="#"> REGISTER </a></li>
                  <li><a href="#"> LOGIN  </a></li>
              </ul>
          </div>
      </nav>
      <div class="title">
      <h1 class="title-heading"> WELCOME TO <span>EMI CARD</span></h1>
      
      </div>
  </header>				<!--** navigation ends here** -->
  <br><br><br><br><br>


<h1>Employee Details</h1>
	<table border="1">
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Product Cost</th>
			<th>Product All Details</th>
		</tr>
		<tr>
			<td>${prodInfo.prodId}</td>
			<td>${prodInfo.prodName}</td>
			<td>${prodInfo.prodList}</td>
			<td>${prodInfo.prodCost}</td>
		</tr>
	</table>


<%-- <div class="prod">
  <img src="D:\Project Gladiator\Images\img1.jpg" width="200px" height="200px">
</div>  

<div class="det">
<b>${productInfo.prodId}</b>
<b>${productInfo.prodName}</b>
<div class="para"><p>${productInfo.prodList}</p></div>
  <h4>${productInfo.prodCost}</h4>
  	
</div> --%><br><br><br>

<div class="emi">

<h3>EMI PERIOD</h3>

<select id="dt" onchange="myEmi()">
 <option value="3">3 Months</option>
<option value="6">6 Months</option>
<option value="9">9 Months</option>
<option value="12">12 Months</option>
</select><br><br><br>
<form method="post" action="dashboard?id=${prodInfo.prodId}">
<button>PAY NOW</button><br><br><br>
</form>
<p id="demo">emiemi</p><br>
<a href="tnd.html" >Terms and Conditions</a>

</div>
<br><br><br><br><br>
<br><br><br><br><br>
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
                        
                    </div>
                </div>
                </footer>
   
</body>
</html>