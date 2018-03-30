<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Client_Close_ac.aspx.vb" Inherits="Bank_of_Swiss.Close_SBac" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Close Account</title>
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
                                <li><a href="User_Home.aspx"><strong>Home</strong><span></span></a></li>
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
    </header> 
    <p>
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1240px; top: 159px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" 
            
            style="z-index: 1; left: 946px; top: 190px; position: absolute; height: 21px; width: 102px">Logged in as :</asp:Label>
    <asp:Label ID="Label2" runat="server" 
        
        style="z-index: 1; left: 1067px; top: 190px; position: absolute; height: 21px; width: 85px"></asp:Label>
    </p>
    <div style="z-index: 1; left: 82px; top: 414px; position: absolute; height: 105px; width: 887px; color: #000080; font-weight: 900; font-size: large;">
        <strong>If you are willing to close your Account please click the Button below  
        to De-Activate it first..,<br />
        Once approved by our Administrators your account will be closed, within 1 week 
        after the De-Activation.</strong><br />
    </div>
    <p>
        &nbsp;</p>
    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/caution1.jpg" 
        
        
        
        
        style="z-index: 1; left: 329px; top: 169px; position: absolute; height: 235px; width: 400px" />
    <div style="z-index: 1; left: 318px; top: 622px; position: absolute; height: 19px; width: 646px; color: #FF0000; font-weight: bolder; font-size: large; text-decoration: blink;">
    <marquee>* Re-Activation is not guaranteed in many Cases, we are sorry for that</marquee>
    </div>
    <p>
        &nbsp;</p>
    <p>
        <asp:ImageButton ID="ImageButton9" runat="server" 
            ImageUrl="~/Images/deact_button.jpg" 
            style="z-index: 1; left: 470px; top: 487px; position: absolute; height: 127px; width: 170px" 
            ToolTip="Click me to Deactivate" BackColor="#E9E9E9" />
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0066FF" 
            NavigateUrl="~/User_Home.aspx" 
            style="z-index: 1; left: 227px; top: 485px; position: absolute; height: 17px; width: 51px" 
            ToolTip="Back to Home">Back</asp:HyperLink>
    </p><br /><br /><br />
      <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
       <br /><br /><br /><br />
       
    <div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a href="User_Home.aspx">Home<span></span></a></li>
                                        <li><a href="About.aspx">About us<span></span></a></li>
                                        <li><a href="Partners.aspx">Partners<span></span></a></li>
                                        <li><a href="Register.aspx">Join Us<span></span></a></li>
                                        <li><a href="faq.aspx">Contacts<span></span></a></li>
                                    </ul>
                                </nav>
                            </div>
    </form>
    </body>
</html>
