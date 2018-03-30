<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_Login.aspx.vb" Inherits="Bank_of_Swiss.Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BoS Admin Login</title>
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
<body >
    <form id="form1" runat="server">
    <header>
    	<div class="row-top">
        	<div class="main index">
            	<div class="container_24">
                	<div class="grid_24">
                    	<h1><a href="Home.aspx">E Banking</a></h1>
                        <nav class="fright">
                            <ul class="menu">
                                <li><a href="Home.aspx"><strong>Home</strong><span></span></a></li>
                                <li><a href="About.aspx"><strong>About us</strong><span></span></a></li>
                                <li><a href="Partners.aspx"><strong>partners</strong><span></span></a></li>
                                <li class="active"><a href="#"><strong>Join Us</strong><span></span></a>
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
                <asp:Panel ID="Panel4" runat="server" 
        
        
        style="z-index: 1; left: 296px; top: 214px; position: absolute; height: 284px; width: 603px" 
        BorderColor="#009999" BorderStyle="Outset" BorderWidth="2px" 
                    BackImageUrl="~/Images/loginpage_22.jpg">
        <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderWidth="2px" 
            style="z-index: 1; left: 121px; top: 162px; position: absolute; height: 32px; width: 258px;" 
            TextMode="Password" ToolTip="Password" TabIndex="2"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" ForeColor="White" 
            style="z-index: 1; left: 31px; top: 168px; position: absolute; height: 23px; width: 74px" 
            Text="Password"></asp:Label>
        <asp:Label ID="Label5" runat="server" ForeColor="White" 
            style="z-index: 1; left: 33px; top: 126px; position: absolute; height: 17px; width: 64px" 
            Text="User ID"></asp:Label>
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 330px; top: 228px; position: absolute; height: 27px; width: 53px;" 
            Text="Login" ToolTip="Login" TabIndex="3" />
        <asp:Button ID="Button3" runat="server" 
            style="z-index: 1; left: 100px; top: 225px; position: absolute; height: 28px; width: 55px;" 
            Text="Clear" ToolTip="Clear" TabIndex="4" />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#FF3300" 
            style="z-index: 1; left: 175px; top: 233px; position: absolute; height: 17px; width: 130px" 
            Text="Access Denied" Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="2px" 
                        style="z-index: 1; left: 120px; top: 120px; position: absolute; height: 31px; width: 257px;" 
                        ToolTip="Username " TabIndex="1"></asp:TextBox>
                    
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Login_templet.jpg" 
                        style="z-index: 1; left: 402px; top: 84px; position: absolute; height: 153px; width: 174px" />
    </asp:Panel>
     <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
                <br /><br /><br /><br /><br /><br />


 <div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2013  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a href="Home.aspx">Home<span></span></a></li>
                                        <li><a href="About.aspx">About us<span></span></a></li>
                                        <li><a href="Partners.aspx">Partners<span></span></a></li>
                                        <li><a class="active" href="Register.aspx">Join Us<span></span></a></li>
                                        <li><a href="faq.aspx">Contacts<span></span></a></li>
                                    </ul>
                                </nav>
                            </div>
    </form>
</body>
</html>
