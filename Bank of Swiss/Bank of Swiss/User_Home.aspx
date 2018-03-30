<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="User_Home.aspx.vb" Inherits="Bank_of_Swiss.User_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home</title>
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
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1240px; top: 159px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" />
    </p>
    <div style="z-index: 1; left: 194px; top: 138px; position: absolute; height: 19px; width: 638px; color: #367981; font-size: large; font-weight: bold;">
    <marquee behavior="scroll" scrollamount="4">Welcome back to User Pannel...!</marquee>
    </div>
    <asp:Panel ID="Panel5" runat="server" 
        
        
        
        
        style="z-index: 1; left: 18px; top: 201px; position: absolute; height: 230px; width: 190px">
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" 
            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#7C6F57" StaticSubMenuIndent="10px" 
            RenderingMode="Table" 
            
            style="z-index: 1; left: 16px; top: 20px; position: absolute; height: 39px; width: 152px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#4383B3" />
            <Items>
                <asp:MenuItem ImageUrl="~/Images/sbac_menubutton.jpg" ToolTip="SB">
                    <asp:MenuItem NavigateUrl="~/Money Transfer.aspx" Text="Money Transfer" 
                        Value="Money Transfer"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/View_SB_trans.aspx" Text="View Transaction" 
                        Value="View Transaction"></asp:MenuItem>
                    <asp:MenuItem Text="Close" Value="Close" NavigateUrl="~/Client_Close_ac.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/fdac_menubutton.jpg" ToolTip="FD">
                    <asp:MenuItem Text="View Transaction" Value="View Transaction" 
                        NavigateUrl="~/View_FD_trans.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/rdac_menubutton.jpg" ToolTip="RD">
                    <asp:MenuItem Text="Deposit" Value="Deposit" NavigateUrl="~/About.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="View Transaction" Value="View Transaction" 
                        NavigateUrl="~/View_FD_trans.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/security_menubutton.jpg" ToolTip="Security">
                    <asp:MenuItem Text="Manage Password" Value="Manage Password" 
                        NavigateUrl="~/User_Security.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem ImageUrl="~/Images/curac_menubutton.jpg" 
                    ToolTip="Current Account">
                    <asp:MenuItem NavigateUrl="~/View_Cur_trans.aspx" Text="View Transaction" 
                        Value="View Transaction"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Client_Close_ac.aspx" Text="Close Account" 
                        Value="Close Account"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Cur_Money_Trans.aspx" Text="Money Transfer" 
                        Value="Money Transfer"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
    </asp:Panel>
    <asp:Label ID="Label2" runat="server" 
        
        style="z-index: 1; left: 1067px; top: 190px; position: absolute; height: 21px; width: 85px"></asp:Label>
    <p>
        <asp:Label ID="Label3" runat="server" 
            
            style="z-index: 1; left: 946px; top: 190px; position: absolute; height: 21px; width: 102px">Logged in as :</asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Red" 
            style="z-index: 1; left: 267px; top: 323px; position: absolute; width: 568px; height: 56px" 
            Visible="False"></asp:Label>
    </p>
     <br />
           <br /> 
          <br /> 
           <br /> 
          <br /> 
           <br /> 
          <br />
            <br /> 
          <br /> 
           <br /> 
          <br /> <br /> 
          <br /> 
           <br /> 
          <br />
            <br /> 
          <br /> 
           <br /> 
         
       	<div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a class="active" href="User_Home.aspx">Home<span></span></a></li>
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
