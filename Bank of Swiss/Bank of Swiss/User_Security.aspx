<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="User_Security.aspx.vb" Inherits="Bank_of_Swiss.User_Security" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client Security Pannel</title>
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
                <asp:Panel ID="Panel5" runat="server" BorderColor="Black" BorderWidth="3px" 
        
        
        
        
        
                    
        style="z-index: 1; left: 243px; top: 174px; position: absolute; height: 406px; width: 680px">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            
                        style="z-index: 1; left: 15px; top: 46px; position: absolute; height: 127px; width: 651px">
            <div style="z-index: 1; left: 12px; top: 10px; position: absolute; height: 100px; width: 468px">
                Click the button to reset your password into default one (&quot;<strong>Abc123</strong>&quot;),<br /> 
                &nbsp;It is strictly adviced to view out
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF3300" 
                    NavigateUrl="~/ToC .aspx" 
                    style="z-index: 1; left: 213px; top: 20px; position: absolute">Terms &amp; Conditions</asp:HyperLink>
                <br />
                In case you proceed further you will be bound to our terms...!</div>
            <asp:Button ID="Button3" runat="server" 
                style="z-index: 1; top: 70px; position: absolute; height: 34px; width: 124px; left: 493px" 
                Text="Reset Password" TabIndex="1" />
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            style="z-index: 1; left: 15px; top: 14px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">Re 
                    Set Password</asp:Label>
        <asp:Panel ID="Panel7" runat="server" BackColor="#99CCFF" 
            
                
                        style="z-index: 1; left: 16px; top: 232px; position: absolute; height: 126px; width: 643px">
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 15px; top: 53px; position: absolute; height: 22px; width: 113px;" 
                Text="New Password"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" 
                
                style="z-index: 1; left: 131px; top: 53px; position: absolute; margin-top: 0px" 
                ToolTip="New Password" BorderStyle="Solid" BorderWidth="1px" 
                TextMode="Password" TabIndex="3"></asp:TextBox>
            <asp:Label ID="Label14" runat="server" 
                style="z-index: 1; left: 18px; top: 19px; position: absolute; height: 26px; width: 108px;" 
                Text="Old Password"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" 
                
                style="z-index: 1; left: 130px; top: 18px; position: absolute; margin-top: 0px" 
                ToolTip="Type of Account" BorderStyle="Solid" BorderWidth="1px" 
                TabIndex="2"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" 
                
                style="z-index: 1; left: 132px; top: 86px; position: absolute; margin-top: 0px" 
                ToolTip="New Password" BorderStyle="Solid" BorderWidth="1px" 
                TextMode="Password" TabIndex="4"></asp:TextBox>
            <asp:Label ID="Label17" runat="server" 
                style="z-index: 1; left: 16px; top: 88px; position: absolute; height: 21px; width: 114px;" 
                Text="New Password"></asp:Label>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/User_Home.aspx" 
                style="z-index: 1; left: 383px; top: 82px; position: absolute; height: 26px; width: 85px" 
                TabIndex="6" Text="Back" ToolTip="Back to Home" />
            <asp:Button ID="Button1" runat="server" 
                style="z-index: 1; left: 366px; top: 28px; position: absolute; height: 26px; width: 129px" 
                Text="Change Password" ToolTip="Change Password" TabIndex="5" />
        </asp:Panel>
        <asp:Label ID="Label10" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            
                        style="z-index: 1; left: 15px; top: 199px; position: absolute; height: 25px; width: 647px; margin-bottom: 0px;">Change 
                    Password</asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#FF3300" 
            style="z-index: 1; left: 169px; top: 376px; position: absolute; height: 25px; width: 391px; margin-bottom: 0px;" 
            Visible="False">Wrong Password...!</asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="Large" ForeColor="#00CC00" 
            style="z-index: 1; left: 28px; top: 374px; position: absolute; height: 25px; width: 629px; margin-bottom: 0px;" 
            Visible="False">Action Successful new Password will be updated by 2 Hours</asp:Label>
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" 
                        Font-Names="Arial Black" Font-Size="Large" ForeColor="#FF3300" 
                        style="z-index: 1; left: 136px; top: 377px; position: absolute; height: 25px; width: 391px; margin-bottom: 0px;" 
                        Visible="False">Correct Highlighted Fields...!</asp:Label>
    </asp:Panel>
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1230px; top: 138px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" />
    <p>
            <asp:Label ID="Label16" runat="server" 
        
        
            style="z-index: 1; left: 991px; top: 143px; position: absolute; height: 21px; width: 85px"></asp:Label>
    <asp:Label ID="Label15" runat="server" 
            
            
            style="z-index: 1; left: 868px; top: 146px; position: absolute; height: 21px; width: 102px">Logged in as :</asp:Label>
            </p>
             <br />
           <br /> 
          <br /> 
           <br /> 
          <br /> 
           <br /> 
          <br />
            <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
            <br /> 
          <br /> 
           <br /> 
          <br /> <br /> 
          <br /> 
           <br /> 
          <br />
            <br /> 
          <br />   <br /> 
          <br /> 
           <br />
           <br />  <br />
           <br /> 
         
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
                            <!-- {%FOOTER_LINK} -->
    </form>
</body>
</html>
