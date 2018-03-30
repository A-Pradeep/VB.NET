<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_SB_Deposit.aspx.vb" Inherits="Bank_of_Swiss.Admin_SB_Deposit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Saving Bank Deposit</title>
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
                                <li  class="active"><a href="#"><strong>SB A/c</strong><span></span></a>
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
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1154px; top: 154px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" TabIndex="7" />

    <asp:Panel ID="Panel5" runat="server" BorderColor="Black" BorderWidth="3px" 
        
        
        
        
        
        style="z-index: 1; left: 181px; top: 169px; position: absolute; height: 412px; width: 684px">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            
            style="z-index: 1; left: 15px; top: 46px; position: absolute; height: 83px; width: 650px">
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 13px; top: 24px; position: absolute; height: 25px; width: 127px;" 
                Text="Enter A/c Num"></asp:Label>
            <asp:Label ID="Label16" runat="server" 
                style="z-index: 1; left: 333px; top: 21px; position: absolute; height: 19px; width: 48px;" 
                Text="Date"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 397px; top: 14px; position: absolute; margin-top: 6px" 
                ToolTip="Date"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 155px; top: 23px; position: absolute" 
                TabIndex="1"></asp:TextBox>
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            style="z-index: 1; left: 15px; top: 14px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">Select Account</asp:Label>
        <asp:Panel ID="Panel7" runat="server" BackColor="#99CCFF" 
            
            style="z-index: 1; left: 14px; top: 199px; position: absolute; height: 124px; width: 651px">
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 38px; top: 61px; position: absolute; width: 66px; height: 19px;" 
                Text="Particular"></asp:Label>
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 16px; top: 19px; position: absolute; height: 21px; width: 140px;" 
                Text="Deposit Amount"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 160px; top: 57px; position: absolute; height: 49px; width: 355px" 
                TextMode="MultiLine" TabIndex="3" ToolTip="Deposit Summary"></asp:TextBox>
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 165px; top: 17px; position: absolute" 
                 MaxLength="6" TabIndex="2" ToolTip="Deposit Amount"></asp:TextBox>
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 422px; top: 347px; position: absolute; height: 26px; width: 85px" 
            TabIndex="4" Text="Deposit" ToolTip="Click to Deposit " />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 135px; top: 345px; position: absolute; height: 26px; width: 85px" 
            TabIndex="6" Text="Back" ToolTip="Click to go Back" 
            PostBackUrl="~/Admin_Home.aspx" />
        <asp:Label ID="Label10" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            
            style="z-index: 1; left: 14px; top: 164px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">  Deposit Details</asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#FF3300" 
            style="z-index: 1; left: 156px; top: 383px; position: absolute; height: 25px; width: 323px; margin-bottom: 0px;" 
            Visible="False">Correct the Highlighted fields...!</asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="Large" ForeColor="#00CC00" 
            style="z-index: 1; left: 172px; top: 381px; position: absolute; height: 25px; width: 258px; margin-bottom: 0px;" 
            Visible="False">Transaction Success...!</asp:Label>
        <asp:Button ID="Button3" runat="server" 
            style="z-index: 1; left: 270px; top: 346px; position: absolute; height: 26px; width: 85px" 
            TabIndex="5" Text="Clear" ToolTip="Click to Clear" />
    </asp:Panel>
    <asp:Label ID="Label15" runat="server" 
        style="z-index: 1; left: 186px; top: 146px; position: absolute; height: 16px; width: 105px" 
        Text="Cash Deposit"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" 
        
        
        
        style="z-index: 1; left: 31px; top: 231px; position: absolute; height: 27px" 
        Visible="False"></asp:TextBox>
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel8" runat="server" BackColor="#99CCFF" BorderColor="#CC9900" 
        BorderStyle="Inset" BorderWidth="5px" 
        
        style="z-index: 1; left: 905px; top: 289px; position: absolute; height: 180px; width: 266px">
        <asp:Label ID="Label17" runat="server" 
    
            style="z-index: 1; left: 14px; top: 74px; position: absolute; height: 20px; width: 72px;" 
            Text="Total Balance" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" BorderWidth="1px" 
            
            style="z-index: 1; left: 95px; top: 78px; position: absolute; height: 27px" 
            Enabled="False"></asp:TextBox>
    </asp:Panel>
    <p>
    <asp:TextBox ID="TextBox6" runat="server" 
        
        style="z-index: 1; left: 33px; top: 310px; position: absolute; height: 27px" 
            Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox7" runat="server" 
        
        style="z-index: 1; left: 28px; top: 165px; position: absolute; height: 27px" 
            Visible="False"></asp:TextBox>
    </p>
     <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br />
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
