<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Money Transfer.aspx.vb" Inherits="Bank_of_Swiss.Money_Transfer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BoS Money Transfer</title>
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
                                <li class="active"><a href="User_Home.aspx"><strong>Home</strong><span></span></a></li>
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
        
        
        
        
                    style="z-index: 1; left: 205px; top: 188px; position: absolute; height: 298px; width: 684px" 
                    BorderStyle="Double">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            style="z-index: 1; left: 15px; top: 46px; position: absolute; height: 157px; width: 651px">
        <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 39px; top: 37px; position: absolute; height: 20px; width: 49px;" 
                Text="To A/c"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 121px; top: 35px; position: absolute" 
                ToolTip="Receivers Account Number" BorderColor="Black" TabIndex="1"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 293px; top: 38px; position: absolute; height: 17px; width: 61px;" 
                Text="To Bank"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                
                
                
                
                
                style="z-index: 1; left: 118px; top: 103px; position: absolute; width: 303px;" TabIndex="3" 
                TextMode="MultiLine" BorderColor="Black" ToolTip="Particulars"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 120px; top: 70px; position: absolute" 
                ToolTip="Amount" BorderColor="Black" TabIndex="2"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 33px; top: 71px; position: absolute; height: 20px; width: 49px;" 
                Text="Amount"></asp:Label>
            <asp:Label ID="Label6" runat="server" 
                style="z-index: 1; left: 32px; top: 109px; position: absolute; height: 20px; width: 74px;" 
                Text="Particulars"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" 
                style="z-index: 1; left: 387px; top: 33px; position: absolute; height: 16px; width: 142px" 
                TabIndex="4" ToolTip="Select Receivers Bank">
                <asp:ListItem>Axis Bank</asp:ListItem>
                <asp:ListItem>Bank of India</asp:ListItem>
                <asp:ListItem>Corporation Bank</asp:ListItem>
                <asp:ListItem>City Bank</asp:ListItem>
                <asp:ListItem>HSBC</asp:ListItem>
                <asp:ListItem>Karnataka Bank</asp:ListItem>
                <asp:ListItem>Syndicate Bank</asp:ListItem>
                <asp:ListItem>Western Union Bank</asp:ListItem>
            </asp:DropDownList>
            <asp:CheckBox ID="CheckBox1" runat="server" 
                style="z-index: 1; left: 293px; top: 70px; position: absolute" 
                Text="Accept" TabIndex="5" ToolTip="Check to accept" />
            <asp:HyperLink ID="HyperLink1" runat="server" 
                
                style="z-index: 1; left: 365px; top: 71px; position: absolute; height: 18px; width: 160px" 
                ForeColor="#FF3300" NavigateUrl="~/ToC .aspx">Terms &amp; Conditions</asp:HyperLink>
            <asp:Label ID="Label15" runat="server" 
                style="z-index: 1; left: 40px; top: 10px; position: absolute; height: 20px; width: 49px;" 
                Text="Date"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" Enabled="False" 
                style="z-index: 1; left: 122px; top: 7px; position: absolute; right: 403px;" 
                ToolTip="Date"></asp:TextBox>
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            
                        style="z-index: 1; left: 14px; top: 14px; position: absolute; height: 25px; width: 651px; margin-bottom: 0px;">   Basic Details</asp:Label>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 348px; top: 225px; position: absolute; width: 85px" 
            TabIndex="6" Text="Transact" ToolTip="Click to Transact" />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 137px; top: 225px; position: absolute; height: 26px; width: 85px" 
            TabIndex="7" Text="Clear" ToolTip="Click to Clear" />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#FF3300" 
            style="z-index: 1; left: 141px; top: 259px; position: absolute; height: 25px; width: 323px; margin-bottom: 0px;" 
            Visible="False">Correct the Highlighted fields...!</asp:Label>
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" 
                        Font-Names="Arial Black" Font-Size="Large" ForeColor="#FF3300" 
                        style="z-index: 1; left: 189px; top: 257px; position: absolute; height: 25px; width: 214px; margin-bottom: 0px;" 
                        Visible="False">Insufficient Fund...!</asp:Label>
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" 
                        Font-Names="Arial Black" Font-Size="Large" ForeColor="#FF3300" 
                        style="z-index: 1; left: 159px; top: 258px; position: absolute; height: 25px; width: 323px; margin-bottom: 0px;" 
                        Visible="False">Create SB Account First...!</asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" 
                        style="z-index: 1; left: 484px; top: 257px; position: absolute; height: 21px; width: 115px" 
                        ToolTip="Balance Amount after transaction" Visible="False"></asp:TextBox>
    </asp:Panel>
    <div style="z-index: 1; left: 151px; top: 149px; position: absolute; height: 19px; width: 683px; color: #800000; font-weight: bold; font-size: large;">
    <marquee behavior="scroll" scrollamount="3">E Banking Serves in more than 52 Nations....!</marquee>
    </div>
    <asp:TextBox ID="TextBox4" runat="server" 
        style="z-index: 1; left: 12px; top: 230px; position: absolute; height: 21px; width: 115px" 
        Visible="False"></asp:TextBox>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label16" runat="server" 
            style="z-index: 1; left: 1079px; top: 158px; position: absolute; height: 29px; width: 109px" 
            Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label18" runat="server" 
            
            
            style="z-index: 1; left: 942px; top: 161px; position: absolute; height: 21px; width: 115px">Logged in as :</asp:Label>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1235px; top: 151px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" TabIndex="8" />
    </p>
    <br /><br /><br />
      <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
       <br /><br /><br /><br /><br />
       
    <div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016 |   wiss &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
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
