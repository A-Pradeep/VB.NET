<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_RD_Dep.aspx.vb" Inherits="Bank_of_Swiss.Admin_RD_Dep" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RD Deposit</title>
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

                               <li class="active"><a href="#"><strong>RD A/c</strong><span></span></a>
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
            style="z-index: 1; left: 1087px; top: 138px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" />

                <asp:Panel ID="Panel5" runat="server" BorderColor="Black" BorderWidth="3px" 
        
        
        
        
        
        
        
                    style="z-index: 1; left: 213px; top: 169px; position: absolute; height: 416px; width: 684px">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            
            style="z-index: 1; left: 15px; top: 46px; position: absolute; height: 83px; width: 650px">
            <asp:Button ID="Button4" runat="server" 
                style="z-index: 1; left: 505px; top: 29px; position: absolute; width: 126px" 
                Text="Existing Payment" TabIndex="9" />
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 11px; top: 32px; position: absolute; height: 20px; width: 98px;" 
                Text="Enter A/c num"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 117px; top: 32px; position: absolute" 
                TabIndex="1"></asp:TextBox>
            <asp:Label ID="Label16" runat="server" 
                style="z-index: 1; left: 279px; top: 31px; position: absolute; height: 19px; width: 48px;" 
                Text="Date"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 341px; top: 24px; position: absolute; margin-top: 6px" 
                ToolTip="Date"></asp:TextBox>
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            style="z-index: 1; left: 15px; top: 14px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">Select Account</asp:Label>
        <asp:Panel ID="Panel7" runat="server" BackColor="#99CCFF" 
            
            
                
                        style="z-index: 1; left: 14px; top: 188px; position: absolute; height: 122px; width: 651px">
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 16px; top: 19px; position: absolute; height: 26px; width: 111px; right: 524px;" 
                Text="Deposit Amount"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" MaxLength="6" 
                style="z-index: 1; left: 394px; top: 17px; position: absolute; height: 26px;" 
                TabIndex="3" ToolTip="Deposit Amount"></asp:TextBox>
            <asp:Label ID="Label18" runat="server" 
                style="z-index: 1; left: 322px; top: 9px; position: absolute; width: 62px; height: 35px;" 
                Text="Duration (month)"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" MaxLength="6" 
                style="z-index: 1; left: 141px; top: 16px; position: absolute; height: 25px;" 
                TabIndex="2" ToolTip="Deposit Amount"></asp:TextBox>
            <asp:Label ID="Label19" runat="server" 
                style="z-index: 1; left: 31px; top: 72px; position: absolute; height: 26px; width: 77px; right: 543px;" 
                Text="Rate (%)"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" MaxLength="6" 
                style="z-index: 1; left: 143px; top: 72px; position: absolute; height: 23px;" 
                TabIndex="4" ToolTip="Deposit Amount"></asp:TextBox>
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF3300" 
                NavigateUrl="~/ToC .aspx" 
                style="z-index: 1; left: 394px; top: 73px; position: absolute"> T&amp;C</asp:HyperLink>
            <asp:CheckBox ID="CheckBox1" runat="server" 
                style="z-index: 1; left: 324px; top: 73px; position: absolute" 
                Text="Accept" BorderStyle="Solid" BorderWidth="1px" TabIndex="5" />
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 428px; top: 357px; position: absolute; width: 126px" 
            TabIndex="6" Text="Make First Deposit" ToolTip="Click to Deposit " />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 132px; top: 355px; position: absolute; height: 26px; width: 85px" 
            TabIndex="8" Text="Back" ToolTip="Click to go Back" 
            PostBackUrl="~/Admin_Home.aspx" />
        <asp:Label ID="Label10" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            
            
                style="z-index: 1; left: 14px; top: 153px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">  Deposit Details</asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#FF3300" 
            style="z-index: 1; left: 175px; top: 389px; position: absolute; height: 25px; width: 323px; margin-bottom: 0px;" 
            Visible="False">Correct the Highlighted fields...!</asp:Label>
        <asp:Button ID="Button3" runat="server" 
            style="z-index: 1; left: 276px; top: 357px; position: absolute; height: 26px; width: 85px" 
            TabIndex="7" Text="Clear" ToolTip="Click to Clear" />
            <asp:Label ID="Label12" runat="server" Font-Bold="True" 
                Font-Names="Arial Black" Font-Size="Large" ForeColor="#00CC00" 
                style="z-index: 1; left: 210px; top: 392px; position: absolute; height: 25px; width: 258px; margin-bottom: 0px;" 
                Visible="False">Transaction Success...!</asp:Label>
                    <asp:Label ID="Label33" runat="server" Font-Bold="True" 
                        Font-Names="Arial Black" Font-Size="Large" ForeColor="#FF3300" 
                        style="z-index: 1; left: 214px; top: 391px; position: absolute; height: 25px; width: 223px; margin-bottom: 0px;" 
                        Visible="False">Invalied Selection...!</asp:Label>
    </asp:Panel>
    <asp:Label ID="Label15" runat="server" 
        style="z-index: 1; left: 214px; top: 147px; position: absolute; height: 16px; width: 153px" 
        Text="RD Cash Deposit"></asp:Label>
        <asp:Panel ID="Panel8" runat="server" BackColor="#FFCCFF" BorderColor="#E1E100" 
        BorderStyle="Outset" BorderWidth="1px" 
        
        
        
        
                    
         
         
         style="z-index: 1; left: 395px; top: 214px; position: absolute; height: 361px; width: 379px">
        <asp:Label ID="Label20" runat="server" 
    
            style="z-index: 1; left: 94px; top: 16px; position: absolute; height: 25px; width: 153px;" 
            Text="Deposit Details" ForeColor="#006600"></asp:Label>
        <asp:Panel ID="Panel9" runat="server" BackColor="#FFCCFF" BorderStyle="Double" 
            BorderWidth="1px" 
            style="z-index: 1; left: 20px; top: 56px; position: absolute; height: 38px; width: 335px">
            <asp:Label ID="Label22" runat="server" ForeColor="#006600" 
                style="z-index: 1; left: 15px; top: 7px; position: absolute; height: 25px; width: 130px; right: 190px;" 
                Text="Amount you pay"></asp:Label>
            <asp:Label ID="Label23" runat="server" 
                style="z-index: 1; left: 189px; top: 9px; position: absolute; height: 22px; width: 122px" 
                Text="Label"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel10" runat="server" BackColor="#FFCCFF" BorderStyle="Double" 
            BorderWidth="1px" 
            style="z-index: 1; left: 20px; top: 102px; position: absolute; height: 38px; width: 335px">
            <asp:Label ID="Label26" runat="server" ForeColor="#006600" 
                style="z-index: 1; left: 15px; top: 7px; position: absolute; height: 25px; width: 126px" 
                Text="Maturity On"></asp:Label>
            <asp:Label ID="Label29" runat="server" 
                style="z-index: 1; left: 187px; top: 8px; position: absolute; height: 22px; width: 122px" 
                Text="Label"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel11" runat="server" BackColor="#FFCCFF" BorderStyle="Double" 
            BorderWidth="1px" 
            style="z-index: 1; left: 21px; top: 149px; position: absolute; height: 38px; width: 335px">
            <asp:Label ID="Label27" runat="server" ForeColor="#006600" 
                style="z-index: 1; left: 13px; top: 6px; position: absolute; height: 25px; width: 135px" 
                Text="Installment Amt"></asp:Label>
            <asp:Label ID="Label28" runat="server" 
                style="z-index: 1; left: 187px; top: 9px; position: absolute; height: 22px; width: 122px" 
                Text="Label"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel12" runat="server" BackColor="#FFCCFF" BorderStyle="Double" 
            BorderWidth="1px" 
            style="z-index: 1; left: 23px; top: 198px; position: absolute; height: 38px; width: 335px">
            <asp:Label ID="Label24" runat="server" ForeColor="#006600" 
                style="z-index: 1; left: 15px; top: 6px; position: absolute; height: 25px; width: 128px" 
                Text="Amount you get"></asp:Label>
            <asp:Label ID="Label25" runat="server" 
                style="z-index: 1; left: 183px; top: 8px; position: absolute; height: 22px; width: 122px" 
                Text="Label"></asp:Label>
        </asp:Panel>
            <asp:Panel ID="Panel13" runat="server" BackColor="#FFCCFF" BorderStyle="Double" 
                BorderWidth="1px" 
                style="z-index: 1; left: 22px; top: 252px; position: absolute; height: 38px; width: 335px">
                <asp:Label ID="Label31" runat="server" ForeColor="#006600" 
                    style="z-index: 1; left: 13px; top: 6px; position: absolute; height: 24px; width: 129px" 
                    Text="Installments Left"></asp:Label>
                <asp:Label ID="Label32" runat="server" 
                    style="z-index: 1; left: 187px; top: 9px; position: absolute; height: 22px; width: 122px" 
                    Text="Label"></asp:Label>
            </asp:Panel>
            <asp:Label ID="Label30" runat="server" Font-Bold="True" 
                Font-Names="Arial Black" Font-Size="Large" ForeColor="#00CC00" 
                style="z-index: 1; left: 15px; top: 318px; position: absolute; height: 25px; width: 349px; margin-bottom: 0px;" 
                Visible="False">You have completed your Term...!</asp:Label>
    </asp:Panel>
            <asp:TextBox ID="TextBox10" runat="server" 
        style="z-index: 1; left: 21px; top: 335px; position: absolute; height: 30px; width: 119px" 
        Visible="False"></asp:TextBox>
    <p>
            <asp:TextBox ID="TextBox11" runat="server" 
        style="z-index: 1; left: 18px; top: 161px; position: absolute; height: 30px; width: 119px" 
        Visible="False"></asp:TextBox>
    </p>
                <p>
                    &nbsp;</p>
                <p>
            <asp:TextBox ID="TextBox12" runat="server" 
        style="z-index: 1; left: 19px; top: 219px; position: absolute; height: 30px; width: 119px" 
        Visible="False"></asp:TextBox>
                </p>
                <p>
            <asp:TextBox ID="TextBox13" runat="server" 
        style="z-index: 1; left: 21px; top: 268px; position: absolute; height: 30px; width: 119px" 
        Visible="False"></asp:TextBox>
                </p>
                <p>
            <asp:TextBox ID="TextBox14" runat="server" 
        style="z-index: 1; left: 23px; top: 382px; position: absolute; height: 30px; width: 119px" 
        Visible="False"></asp:TextBox>
                </p>
                 <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br />
                <div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2013  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
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
