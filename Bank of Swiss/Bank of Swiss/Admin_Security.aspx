<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_Security.aspx.vb" Inherits="Bank_of_Swiss.Admin_Security" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Security</title>
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
                                <li><a href="#"><strong>SB A/c</strong><span></span></a>
                                <ul>
                                    	<li><a href="Approve_SB_ac.aspx">Approve</a></li>
                                        <li><a href="Admin_SB_Deposit.aspx">Get Deposits</a></li>
                                        <li><a href="Admin_SB_Withdraw.aspx">Allow Withdraws</a></li>
                                        <li><a href="Admin_ViewTrans.aspx">View Transactions</a></li>               
                                    </ul>
                                </li>

                                <li><a href="#"><strong>FD A/c</strong><span></span></a>
                                <ul>
                                    	<li><a href="Approve_FD.aspx">Approve</a></li>
                                        <li><a href="Admin_FD_Dep.aspx">Get Deposits</a></li>
                                        <li><a href="Admin_FD_With.aspx">Allow Withdraws</a></li>
                                        <li><a href="Admin_ViewTrans.aspx">View Transactions</a></li>               
                                    </ul>
                                </li>

                               <li><a href="#"><strong>RD A/c</strong><span></span></a>
                                <ul>
                                    	<li><a href="Approve_RD.aspx">Approve</a></li>
                                        <li><a href="Admin_RD_Dep.aspx">Get Deposits</a></li>
                                        <li><a href="Admin_RD_With.aspx">Allow Withdraws</a></li>
                                        <li><a href="Admin_ViewTrans.aspx">View Transactions</a></li>               
                                    </ul>
                                </li>

                                <li><a href="#"><strong>Current A/c</strong><span></span></a>
                                <ul>
                                    	<li><a href="Approve_Cur.aspx">Approve</a></li>
                                        <li><a href="Admin_Cur_Dep.aspx">Get Deposits</a></li>
                                        <li><a href="Admin_Cur__With.aspx">Allow Withdraws</a></li>
                                        <li><a href="Admin_ViewTrans.aspx">View Transactions</a></li>               
                                    </ul>
                                </li>
                                
                                <li class="active"><a href="#"><strong>Security</strong><span></span></a>
                                <ul>
                                    	<li><a href="Admin_Security.aspx">Manage Password</a></li>
                                        <li><a href="Admin_Close_ac.aspx">Manage Clients</a></li>
                                        <li><a href="Admin_Answer.aspx">Answer FAQ's</a></li>
                                    </ul>
                                </li>
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
        
        
        
        
        
         style="z-index: 1; left: 191px; top: 170px; position: absolute; height: 416px; width: 680px">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            
                        style="z-index: 1; left: 15px; top: 46px; position: absolute; height: 127px; width: 651px">
            <div style="z-index: 1; left: 12px; top: 10px; position: absolute; height: 100px; width: 468px">
                Click the button to reset your password into default one (&quot;<strong>admin</strong>&quot;),<br /> 
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
                style="z-index: 1; left: 74px; top: 55px; position: absolute; height: 20px; width: 147px;" 
                Text="New Password"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" 
                
                style="z-index: 1; left: 230px; top: 53px; position: absolute; margin-top: 0px" 
                ToolTip="New Password" BorderStyle="Solid" BorderWidth="1px" 
                TextMode="Password" TabIndex="3"></asp:TextBox>
            <asp:Label ID="Label14" runat="server" 
                style="z-index: 1; left: 71px; top: 19px; position: absolute; height: 22px; width: 133px;" 
                Text="Old Password"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" 
                
                style="z-index: 1; left: 230px; top: 16px; position: absolute; margin-top: 0px" 
                ToolTip="Type of Account" BorderStyle="Solid" BorderWidth="1px" 
                TabIndex="2"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" 
                
                style="z-index: 1; left: 229px; top: 86px; position: absolute; margin-top: 0px" 
                ToolTip="New Password" BorderStyle="Solid" BorderWidth="1px" 
                TextMode="Password" TabIndex="4"></asp:TextBox>
            <asp:Label ID="Label17" runat="server" 
                style="z-index: 1; left: 73px; top: 87px; position: absolute; height: 22px; width: 129px;" 
                Text="New Password"></asp:Label>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Admin_Home.aspx" 
                style="z-index: 1; left: 494px; top: 80px; position: absolute; height: 26px; width: 85px" 
                TabIndex="6" Text="Back" ToolTip="Back to Home" />
            <asp:Button ID="Button1" runat="server" 
                style="z-index: 1; left: 475px; top: 23px; position: absolute; height: 26px; width: 129px" 
                Text="Change Password" ToolTip="Change Password" TabIndex="5" />
        </asp:Panel>
        <asp:Label ID="Label10" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            
                        style="z-index: 1; left: 15px; top: 199px; position: absolute; height: 25px; width: 647px; margin-bottom: 0px;">Change 
                    Password</asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#FF3300" 
            style="z-index: 1; left: 133px; top: 378px; position: absolute; height: 25px; width: 391px; margin-bottom: 0px;" 
            Visible="False">Wrong Password...!</asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="Large" ForeColor="#00CC00" 
            style="z-index: 1; left: 17px; top: 376px; position: absolute; height: 25px; width: 634px; margin-bottom: 0px;" 
            Visible="False">Action Successful new Password will be updated by 
 2 Hours</asp:Label>
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" 
                        Font-Names="Arial Black" Font-Size="Large" ForeColor="#FF3300" 
                        style="z-index: 1; left: 136px; top: 377px; position: absolute; height: 25px; width: 391px; margin-bottom: 0px;" 
                        Visible="False">Correct Highlighted Fields...!</asp:Label>
    </asp:Panel>
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1230px; top: 138px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" />
               <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br /><br /><br /><br />
         	<div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a href="Admin_Home.aspx">Home<span></span></a></li>
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
