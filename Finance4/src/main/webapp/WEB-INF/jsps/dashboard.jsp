<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="indexCss.css">
    <style>
        body{
            background: url('abc.jpeg.jpeg');
        }
       
        .abc {
            margin:auto;
            background: #abcabc;
            width:300px;
            height:200px;

        }
        h1,h3{
            text-align: center;
        }
      

      .ghi{
          text-align: center;
      }     
        
       table,th,td {
           margin:auto;
           border:4px solid black;
       }
       .def{
          background: #7dcfcb;
          margin:auto;
          width:60%;
       }
       li{
        display:inline
       }

    </style>
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
        
        </header>				<!--** navigation ends here** -->
    <div class="def">
    <h1>DASHBOARD</h1>
    <div class="abc">
        <label for="">Card number:</label> <br>
        <label for="">Name:</label> <br>
        <label for="">Valid till:MM/YY</label> <br>
        <label for="">Card Type:GOLD/TITANIUM</label> <br>
        <div class="ghi">ACTIVATED</div>
    </div>
<h2>Total Credit </h2>
<h2>Credit Used</h2>
<h2>Remaining Credit</h2>

<h3>PRODUCTS PURCHASED</h3>

<p >PRODUCT NAME: ${prodInfo.prodName}</p>
<p>AMOUNT: ${prodInfo.prodCost}</p>
<p>PAID</p>
<P>BALANCE</P>
<h2>RECENT TRANSACTIONS</h2>
<table>
    <tr>
     <th>PRODUCT</th>
     <th>PAID</th>
     <th>AMOUNT PAID</th>
    </tr>
     <tr>
         <td>___________     </td>
         <td>  _______________   </td>
         <td> _________________    </td>
     </tr>
</table>
</div>
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