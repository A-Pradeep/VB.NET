<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="Bank_of_Swiss.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register with BoS for a new account</title>
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
    </style>
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
    <center>
    <div style="z-index: 1; left: 319px; top: 163px; position: absolute; height: 19px; width: 651px; color: #9966FF; font-weight: bold; font-size: medium;">
    <marquee behavior="scroll" scrollamount="3">* Register for new FD account and win a free trip to U.K</marquee> 
    </div>
    </center>
    <asp:Panel ID="Panel4" runat="server" 
        
        style="z-index: 1; left: 11px; top: 190px; position: absolute; height: 234px; width: 243px" 
        BorderColor="#0066FF" BorderStyle="Double" BorderWidth="2px">
        <asp:Image ID="Image3" runat="server" 
    
            style="z-index: 1; left: 31px; top: 13px; position: absolute; height: 168px; width: 176px;" 
            ImageUrl="~/Images/free-sms.jpg" />
        <div style="z-index: 1; left: 17px; top: 195px; position: absolute; height: 19px; width: 211px; color: #800080; text-decoration: blink;">
        Free SMS alert, E-Mail alerts
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" BorderColor="Black" BorderWidth="3px" 
        
        
         style="z-index: 1; left: 299px; top: 191px; position: absolute; height: 515px; width: 684px">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            style="z-index: 1; left: 15px; top: 46px; position: absolute; height: 157px; width: 651px">
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 14px; top: 12px; position: absolute; height: 20px; width: 49px;" 
                Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 93px; top: 10px; position: absolute" 
                ToolTip="Full Name" TabIndex="1"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 291px; top: 25px; position: absolute; height: 17px; width: 74px;" 
                Text="Address"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 92px; top: 74px; position: absolute" TabIndex="3"
                ToolTip="Cellnumber"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 92px; top: 104px; position: absolute" TabIndex="4" 
                ToolTip="Email ID"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 368px; top: 20px; position: absolute; height: 108px; width: 166px" 
                TabIndex="5" TextMode="MultiLine" ToolTip="Residential Address"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 92px; top: 41px; position: absolute" 
                ToolTip="Job / If Student specify it" TabIndex="2"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 7px; top: 45px; position: absolute; height: 20px; width: 68px;" 
                Text="Occupation"></asp:Label>
            <asp:Label ID="Label6" runat="server" 
                style="z-index: 1; left: 11px; top: 78px; position: absolute; height: 20px; width: 74px;" 
                Text="Cell Num"></asp:Label>
            <asp:Label ID="Label7" runat="server" 
                style="z-index: 1; left: 13px; top: 108px; position: absolute; height: 20px; width: 74px;" 
                Text="E-Mail"></asp:Label>
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            style="z-index: 1; left: 15px; top: 14px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">   Basic Details</asp:Label>
        <asp:Panel ID="Panel7" runat="server" BackColor="#99CCFF" 
            style="z-index: 1; left: 15px; top: 268px; position: absolute; height: 124px; width: 651px">
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 24px; top: 70px; position: absolute; width: 108px;" 
                Text="Introducer"></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server" 
                style="z-index: 1; left: 361px; top: 31px; position: absolute" TabIndex="8" 
                Text="Get E-Mail Alerts" ToolTip="Get Alerts" />
            <asp:CheckBox ID="CheckBox2" runat="server" 
                style="z-index: 1; left: 362px; top: 70px; position: absolute; right: 220px" 
                TabIndex="9" Text="Accept" ToolTip="Accept Terms and Conditions" />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
                style="z-index: 1; left: 434px; top: 71px; position: absolute" 
                TabIndex="9" NavigateUrl="~/ToC .aspx">Terms &amp; Conditions</asp:HyperLink>
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 18px; top: 19px; position: absolute; height: 26px; width: 108px;" 
                Text="Account Type"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" 
                style="z-index: 1; left: 129px; top: 21px; position: absolute; height: 16px; width: 142px" 
                TabIndex="6" ToolTip="Select Type of Account">
                <asp:ListItem>Saving Bank (SB)</asp:ListItem>
                <asp:ListItem>Fixed Deposit (FD)</asp:ListItem>
                <asp:ListItem>Recurring Deposit (RD)</asp:ListItem>
                <asp:ListItem>Current Account</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 132px; top: 70px; position: absolute; width: 135px;" 
                TabIndex="7" ToolTip="Email ID"></asp:TextBox>
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 354px; top: 452px; position: absolute; height: 26px; width: 85px" 
            TabIndex="11" Text="Register" ToolTip="Click to Register" />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 156px; top: 451px; position: absolute; height: 26px; width: 85px" 
            TabIndex="12" Text="Clear" ToolTip="Click to Clear" />
        <asp:Label ID="Label10" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            style="z-index: 1; left: 15px; top: 236px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">    Account Details</asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#FF3300" 
            style="z-index: 1; left: 145px; top: 488px; position: absolute; height: 25px; width: 323px; margin-bottom: 0px;" 
            Visible="False">Correct the Highlighted fields...!</asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" 
            BorderWidth="2px" 
            style="z-index: 1; left: 225px; top: 412px; position: absolute" 
            TabIndex="10" />
        <asp:Label ID="Label13" runat="server" 
            style="z-index: 1; left: 173px; top: 411px; position: absolute; height: 24px; width: 43px;" 
            Text="Photo"></asp:Label>
    </asp:Panel>
     <br />
           <br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br />
             <br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />
            <br /><br /><br />

       	<div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
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
                            <!-- {%FOOTER_LINK} -->
    </form>
</body>
</html>
