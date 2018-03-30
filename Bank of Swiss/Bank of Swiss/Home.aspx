<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="Bank_of_Swiss.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to BoS's Home</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">   
    <script src="js/jquery-1.6.3.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script> 
    <script src="js/superfish.js" type="text/javascript"></script>
    <script src="js/jquery.hoverIntent.js" type="text/javascript"></script>
    <script src="js/FF-cash.js" type="text/javascript"></script> 
    <script src="js/script.js" type="text/javascript"></script>   
    <script src="js/tms-0.3.js" type="text/javascript"></script>
    <script src="js/tms_presets.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.color.js" type="text/javascript"></script>
   
</head>
<body style="height: 588px; width: 1364px;">
    <form id="form1" runat="server">
    <header>
    	<div class="row-top">
        	<div class="main index">
            	<div class="container_24">
                	<div class="grid_24">
                    	<h1><a href="Home.aspx">E Banking</a></h1>
                        <nav class="fright">
                            <ul class="menu">
                                <li class="active"><a href="Home.aspx"><strong>Home</strong><span></span></a></li>
                                <li><a href="About.aspx"><strong>About us</strong><span></span></a></li>
                                <li><a href="Partners.aspx"><strong>partners</strong><span></span></a></li>
                                <li><a href="#"><strong>Join Us</strong><span></span></a>
                                	<ul>
                                    	<li><a href="Register.aspx">Sign Up</a></li>
                                        <li class="last-item"><a href="#">Login</a>
                                        	<ul>
                                            	<li><a href="Login.aspx">Client Login</a></li>
                                                <li class="last-item"><a href="Admin_Login.aspx">Admin Login</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="faq.aspx"><strong>Contact Us</strong><span></span></a></li>
                            </ul>
                        </nav>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
       <div class="wrapper margin-top">
            <div class="slider-wrapper">
                <div class="slider">
                    <ul class="items">
                        <li>
                            <img src="images/2.jpg" alt="" />
                        </li>
                        <li>
                            <img src="images/3.jpg" alt="" />
                        </li>
                        <li>
                            <img src="images/1.jpg" alt="" />
                        </li>
                        <li>
                            <img src="images/4.jpg" alt="" />
                        </li>
                    </ul>
                </div>
                <ul class="main-list">
                	<li><a class="item-1" href="http://crsriharsha.blogspot.in">Blog <span>Discussion</span></a></li>
                    <li><a class="item-2" href="ToC .aspx">Terms <span> Ploicy</span></a></li>
                    <li><a class="item-3" href="faq.aspx"><strong>24/7</strong> <span>live support</span></a></li>
                </ul>
            </div>
        </div>
    </header>
       
  <div class="main">
            <div class="container_24">
     <div class="wrapper p6">
                    <article class="grid_8">
                    	<h2>Welcome!</h2>
                        <h5>Combining many years of banking and financial experience, we offer a new model of investments.</h5>
                        <span class="text-1">By implementing advanced technology, in the field of banking we have stepped into the next generation,<br>by making our clients to transact globally by sitting at there door steps.</span>
                    </article>
                     <article class="grid_8 spacer-2">
                    	<h2>Updates!</h2>
                        <h5>Get updates of BoS through Emails.</h5>
                        <span class="text-1">Flexible rate of intrests on student loans,<br>Get good returns on long term deposits for senior citizens.</span>
                    </article>
                  <article class="grid_8 spacer-2">
                        	<h3 class="prev-indent-bot">Have any Questions...?</h3>
                            <p class="p2">Need any suggetions for a right Investment or Want to know more about us...?
                                Do you have a Big Idea and waiting for Funds...? Just contact us we will make it for you...! </p>
                            <form id="newsletter-form">
                                <fieldset>
                                   <a href="faq.aspx" class="button" >Shoot a Question</a>                                                                                         
                                </fieldset>
                            </form>
                            </article> 
                        </div>
                    </div> 
              
                </div>     
 	<div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a class="active" href="Home.aspx">Home<span></span></a></li>
                                        <li><a href="About.aspx">About us<span></span></a></li>
                                        <li><a href="Partners.aspx">Partners<span></span></a></li>
                                        <li><a href="Register.aspx">Join Us<span></span></a></li>
                                        <li><a href="faq.aspx">Contacts<span></span></a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!-- {%FOOTER_LINK} -->
     <script type="text/javascript">
         $(window).load(function () {
             $('.slider')._TMS({
                 duration: 800,
                 easing: 'easeOutQuad',
                 preset: 'simpleFade',
                 slideshow: 7000,
                 banners: false,
                 pauseOnHover: true,
                 pagination: true
             });
         });
    </script>           
                   </form>
    </body>
</html>
