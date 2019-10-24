<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="innerCss.css">
<link href="https://fonts.googleapis.com/css?family=Flamenco&display=swap" rel="stylesheet"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
#b{
margin-left:40px;
}

.prod{
text-align:center;
float:left;
padding:40px;
padding-bottom:50px;
display:block;

}

div.para{
word-wrap: break-word;
}

</style>

</head>

<body id="b">

    <header>				<!-- **here is our navigation bar** -->
      <nav>
          <div class="nav-div clearfix">
                      <img alt="logo" src="Images/casper-coloring-page.jpg" class="logo">
              <ul class="main-nav animated zoomIn">
                  
                  <li><a href="#"> Hi, Username  </a></li>
              </ul>
          </div>
      </nav>
      <div class="title">
      <h1 class="title-heading"> WELCOME TO <span>EMI CARD</span></h1>
      
      </div>
  </header>				<!--** navigation ends here** -->
  <br><br><br><br><br>
  <form action="info" method="post">
  <c:forEach items="${prodList}" var="products">
<div class="prod">
  <img src="<c:out value='${products.prodImg}'/>" width="200px" height="200px"/ href ="info" ></br>
 
 <b>${products.prodId}</b>
  <b>${products.prodName}</b>
  <div class="para"><p>${products.prodList}
</p></div>
  <h4>${products.prodCost}</h4>

<form method="post" action="info?id=${products.prodId}">
				<button type="submit" class="form-button">Buy</button>
			</form>
			<%-- <a href="info?id=${products.prodId}">Buy</a> --%>
</div>
  </c:forEach>
</form>




<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

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