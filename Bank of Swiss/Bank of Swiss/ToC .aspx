<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ToC .aspx.vb" Inherits="Bank_of_Swiss.ToC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BoS Terms and Conditions</title>
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
<body>
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
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/tc.jpg" 
        
        style="z-index: 1; left: 279px; top: 144px; position: absolute; height: 210px; width: 575px" />
        </header> 
    <div style="z-index: 1; top: 369px; position: absolute; left: 176px; width: 818px; height: 311px">
     <center style="font-size: medium; color: #000000">  * All clients who are willing to join E Banking are bound under the following 
        terms and conditions of BoS, both for client and customes safety.<br />
        <br />
&nbsp; * Clients can sign-up for bank accounts(SB, RD, FD, Loan, Current) only by 
        providing truefull detailsof personal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        andsupporting in&nbsp; case necessary, only after the verification of tose 
        uploaded details by our experts and if the client found truefull only then such 
        requests will be approved, in case of unapproval BoS is not held responsible.<br />
        <br />
&nbsp; * After successfull registeration the password will be defaultly assigned to the 
        clients account and is strictly change it in there first login itself. In case 
        if the client neglects that may or may not lead to suspicious activities and BoS 
        can&#39;t be held reason for this.<br />
        <br />
&nbsp; * At any instance if BoS finds its client is unlawfull or un truefull to BoS, 
        then such clients will be blocked pernmentaly and all his account balance will 
        be ceased by BoS.</center></div>
    <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
        <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
   	<div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a href="Home.aspx">Home<span></span></a></li>
                                        <li><a href="About.aspx">About us<span></span></a></li>
                                        <li><a href="Partners.aspx">Partners<span></span></a></li>
                                        <li><a href="Register.aspx">Join Us<span></span></a></li>
                                        <li><a href="faq.aspx">Contacts<span></span></a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!-- {%FOOTER_LINK} -->
    </form>
</body>
</html>
