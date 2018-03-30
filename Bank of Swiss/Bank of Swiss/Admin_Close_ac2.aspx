<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_Close_ac2.aspx.vb" Inherits="Bank_of_Swiss.Close_SBac2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Client Accounts</title>
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
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1135px; top: 142px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" TabIndex="10" />
                <asp:Panel ID="Panel5" runat="server" BorderColor="Black" BorderWidth="3px" 
        
        
        
        
         style="z-index: 1; left: 27px; top: 145px; position: absolute; height: 481px; width: 1027px">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            style="z-index: 1; left: 15px; top: 46px; position: absolute; height: 157px; width: 651px">
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 14px; top: 12px; position: absolute; height: 20px; width: 49px;" 
                Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 93px; top: 10px; position: absolute" 
                ToolTip="Full Name" Enabled="False"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 291px; top: 25px; position: absolute; height: 17px; width: 74px;" 
                Text="Address"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 92px; top: 74px; position: absolute" TabIndex="2" 
                 Enabled="False" ToolTip="Cell number"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 92px; top: 104px; position: absolute" TabIndex="3" 
                ToolTip="Email ID" Enabled="False"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 368px; top: 20px; position: absolute; height: 108px; width: 261px" 
                TabIndex="4" TextMode="MultiLine" ToolTip="Residential Address" 
                Enabled="False"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 92px; top: 41px; position: absolute" 
                ToolTip="Job / If Student specify it" Enabled="False"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 11px; top: 45px; position: absolute; height: 20px; width: 49px;" 
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
            
                style="z-index: 1; left: 15px; top: 268px; position: absolute; height: 96px; width: 651px">
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 338px; top: 22px; position: absolute; height: 23px; width: 61px;" 
                Text="Introducer"></asp:Label>
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 168px; top: 57px; position: absolute; height: 22px; width: 65px;" 
                Text="A/c num"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 247px; top: 56px; position: absolute; margin-top: 0px" 
                ToolTip="Client Account Number"></asp:TextBox>
            <asp:Label ID="Label14" runat="server" 
                style="z-index: 1; left: 18px; top: 19px; position: absolute; height: 26px; width: 108px;" 
                Text="Account Type"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 121px; top: 19px; position: absolute; margin-top: 0px" 
                ToolTip="Type of Account"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 412px; top: 21px; position: absolute; margin-top: 0px" 
                ToolTip="Introducer Account Number"></asp:TextBox>
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" 
            
                style="z-index: 1; left: 329px; top: 403px; position: absolute; height: 26px; width: 85px" 
                Text="Block Client" ToolTip="Click to Block Client" TabIndex="2" />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 133px; top: 402px; position: absolute; height: 26px; width: 85px" 
            TabIndex="1" Text="Back" ToolTip="Click to Clear" 
                PostBackUrl="~/Admin_Close_ac.aspx" />
        <asp:Label ID="Label10" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            style="z-index: 1; left: 15px; top: 236px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">    Account Details</asp:Label>
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" 
                        Font-Names="Arial Black" Font-Size="Large" ForeColor="#00CC00" 
                        style="z-index: 1; left: 332px; top: 447px; position: absolute; height: 25px; width: 110px; margin-bottom: 0px;" 
                        Visible="False">Success...!</asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#FF3300" 
            style="z-index: 1; left: 210px; top: 446px; position: absolute; height: 25px; width: 323px; margin-bottom: 0px;" 
            Visible="False">Correct the Highlighted fields...!</asp:Label>
        <asp:Label ID="Label13" runat="server" 
            style="z-index: 1; left: 688px; top: 61px; position: absolute; height: 24px; width: 43px;" 
            Text="Photo"></asp:Label>
            <asp:Panel ID="Panel8" runat="server" BackColor="#99CCFF" BorderColor="Yellow" 
                BorderStyle="Outset" BorderWidth="2px" 
                
                        style="z-index: 1; left: 742px; top: 52px; position: absolute; height: 238px; width: 250px">
                <asp:Image ID="Image3" runat="server" 
                    
                    style="z-index: 1; left: 11px; top: 10px; position: absolute; height: 219px; width: 226px" 
                    ToolTip="Client Photo" />
            </asp:Panel>
                    <asp:Button ID="Button3" runat="server" 
                        style="z-index: 1; left: 506px; top: 405px; position: absolute; height: 26px; width: 85px" 
                        Text="Re Activate " ToolTip="Click to Approve Account" TabIndex="3" />
    </asp:Panel>
    <br />    <br />    <br />    <br />    <br />    <br />    <br />
        <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />
            <br />    <br />    <br />    <br />    <br />    <br />    <br />
           <br />    <br />    <br />    <br />

     <div class="wrapper">
                            	<span class="footer-text">E Banking © 2016|  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a  href="Admin_Home.aspx">Home<span></span></a></li>
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
