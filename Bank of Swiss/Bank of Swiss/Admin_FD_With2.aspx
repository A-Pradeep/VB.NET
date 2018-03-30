<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_FD_With2.aspx.vb" Inherits="Bank_of_Swiss.Admin_FD_With" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FD Payment</title>
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

                                <li class="active"><a href="#"><strong>FD A/c</strong><span></span></a>
                                <ul>
                                    	<li><a href="Approve_FD.aspx">Approve</a></li>
                                        <li> 
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1126px; top: 110px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" TabIndex="4" />
                                        </li>
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
                                
                                <li><a href="#"><strong>Security</strong><span></span></a>
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
        
        
        
        
        
        style="z-index: 1; left: 219px; top: 147px; position: absolute; height: 460px; width: 679px">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            
                        style="z-index: 1; left: 15px; top: 44px; position: absolute; height: 157px; width: 651px">
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 93px; top: 14px; position: absolute" 
                ToolTip="Full Name" Enabled="False"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 258px; top: 35px; position: absolute; height: 17px; width: 100px;" 
                Text="At the rate of"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 94px; top: 96px; position: absolute" TabIndex="2" 
                Enabled="False" ToolTip="Cell number"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                
                
                style="z-index: 1; left: 364px; top: 78px; position: absolute; height: 20px;" TabIndex="3" 
                ToolTip="Email ID" Enabled="False"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 93px; top: 54px; position: absolute" 
                ToolTip="Job / If Student specify it" Enabled="False"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 11px; top: 56px; position: absolute; height: 20px; width: 49px;" 
                Text="Amount"></asp:Label>
            <asp:Label ID="Label6" runat="server" 
                style="z-index: 1; left: 13px; top: 96px; position: absolute; height: 20px; width: 74px;" 
                Text="Duration"></asp:Label>
            <asp:Label ID="Label7" runat="server" 
                style="z-index: 1; left: 280px; top: 77px; position: absolute; height: 20px; width: 38px;" 
                Text="Date"></asp:Label>
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 13px; top: 16px; position: absolute; height: 22px; width: 65px;" 
                Text="A/c num"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                Enabled="False" style="z-index: 1; left: 363px; top: 38px; position: absolute" 
                ToolTip="Full Name"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Solid" 
                BorderWidth="1px" Enabled="False" 
                style="z-index: 1; left: 367px; top: 117px; position: absolute; height: 20px; margin-bottom: 11px;" 
                TabIndex="3" ToolTip="Email ID" Visible="False"></asp:TextBox>
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            
                        style="z-index: 1; left: 15px; top: 11px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">Deposit Details</asp:Label>
        <asp:Panel ID="Panel7" runat="server" BackColor="#99CCFF" 
            
                
                        style="z-index: 1; left: 15px; top: 251px; position: absolute; height: 134px; width: 651px">
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 288px; top: 15px; position: absolute; height: 23px; width: 89px;" 
                Text="Maturity Date"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 120px; top: 64px; position: absolute; margin-top: 0px; height: 32px; width: 131px;" 
                ToolTip="Client Account Number" Font-Bold="True" Font-Size="Large" 
                ForeColor="#0033CC"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 121px; top: 12px; position: absolute; margin-top: 0px" 
                ToolTip="Type of Account"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 386px; top: 13px; position: absolute; margin-top: 0px" 
                ToolTip="Introducer Account Number"></asp:TextBox>
            <asp:Label ID="Label15" runat="server" 
                style="z-index: 1; left: 25px; top: 14px; position: absolute; height: 23px; width: 89px;" 
                Text="Intrest Amt"></asp:Label>
            <asp:Label ID="Label14" runat="server" 
                style="z-index: 1; left: 25px; top: 72px; position: absolute; height: 26px; width: 108px;" 
                Text="Maturity Amt"></asp:Label>
            <asp:Label ID="Label17" runat="server" 
                style="z-index: 1; left: 294px; top: 74px; position: absolute; height: 26px; width: 71px;" 
                Text="Particulars"></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" 
                style="z-index: 1; left: 385px; top: 74px; position: absolute; width: 244px; height: 47px" 
                TextMode="MultiLine" TabIndex="1"></asp:TextBox>
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" 
            
                style="z-index: 1; left: 352px; top: 403px; position: absolute; height: 28px; width: 101px" 
                Text="Make Payment" ToolTip="Click to make Payment" TabIndex="2" />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 161px; top: 402px; position: absolute; height: 30px; width: 86px" 
            TabIndex="3" Text="Back" ToolTip="Back to Selection" 
                PostBackUrl="~/Admin_FD_With.aspx" />
        <asp:Label ID="Label10" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            
                        style="z-index: 1; left: 13px; top: 219px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">Maturity Value</asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="Large" ForeColor="#00CC00" 
            style="z-index: 1; left: 200px; top: 435px; position: absolute; height: 25px; width: 219px; margin-bottom: 0px;" 
            Visible="False">Payment Success...!</asp:Label>
    </asp:Panel>
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
