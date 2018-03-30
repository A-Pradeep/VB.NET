<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_Cur__With.aspx.vb" Inherits="Bank_of_Swiss.Admin_Cur__With" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Current Account Withdraw</title>
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

                                <li class="active"><a href="#"><strong>Current A/c</strong><span></span></a>
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
            style="z-index: 1; left: 1161px; top: 156px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" TabIndex="8" />

                <asp:TextBox ID="TextBox4" runat="server" 
        
        
        
        style="z-index: 1; left: 25px; top: 155px; position: absolute; height: 32px" 
        Visible="False"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" 
        style="z-index: 1; left: 208px; top: 134px; position: absolute; height: 23px; width: 120px; bottom: 366px;" 
        Text="Cash With Draw"></asp:Label>
        <asp:Panel ID="Panel5" runat="server" BorderColor="Black" BorderWidth="3px" 
        
        
        
        
        
         
          style="z-index: 1; left: 201px; top: 162px; position: absolute; height: 430px; width: 684px">
        <asp:Panel ID="Panel6" runat="server" BackColor="#99CCFF" 
            
            style="z-index: 1; left: 15px; top: 46px; position: absolute; height: 83px; width: 650px">
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 13px; top: 20px; position: absolute; height: 20px; width: 86px;" 
                Text="A/c Number"></asp:Label>
            <asp:Label ID="Label16" runat="server" 
                style="z-index: 1; left: 279px; top: 20px; position: absolute; height: 19px; width: 48px;" 
                Text="Date"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False" 
                
                style="z-index: 1; left: 341px; top: 12px; position: absolute; margin-top: 6px" 
                ToolTip="Date"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" 
                style="z-index: 1; left: 99px; top: 20px; position: absolute" TabIndex="1"></asp:TextBox>
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            style="z-index: 1; left: 15px; top: 14px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">Select Account</asp:Label>
        <asp:Panel ID="Panel7" runat="server" BackColor="#99CCFF" 
            
            
                style="z-index: 1; left: 14px; top: 199px; position: absolute; height: 154px; width: 651px">
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 34px; top: 82px; position: absolute; width: 66px; height: 19px;" 
                Text="Particular"></asp:Label>
            <asp:Label ID="Label11" runat="server" 
                style="z-index: 1; left: 6px; top: 19px; position: absolute; height: 26px; width: 131px;" 
                Text="With Draw Amount"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" MaxLength="6" 
                style="z-index: 1; left: 142px; top: 17px; position: absolute; height: 23px;" 
                TabIndex="2" ToolTip="Withdraw Amount"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" 
                style="z-index: 1; left: 140px; top: 86px; position: absolute; height: 49px; width: 355px" 
                TextMode="MultiLine" ToolTip="Summary of Transaction" TabIndex="4"></asp:TextBox>
            <asp:CheckBox ID="CheckBox1" runat="server" 
                style="z-index: 1; left: 145px; top: 53px; position: absolute" 
                Text="Over Draw" TabIndex="3" />
            <asp:Label ID="Label19" runat="server" 
                style="z-index: 1; left: 299px; top: 54px; position: absolute; width: 265px; height: 27px" 
                Text="Total Over Drawn Amount : "></asp:Label>
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 423px; top: 372px; position: absolute; height: 26px; width: 85px" 
            TabIndex="5" Text="With Draw" ToolTip="Click to Withdraw Amount" />
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 135px; top: 372px; position: absolute; height: 26px; width: 85px" 
            TabIndex="7" Text="Back" ToolTip="Click to go Back" 
            PostBackUrl="~/Admin_Home.aspx" />
        <asp:Label ID="Label10" runat="server" BackColor="#E1E100" Font-Bold="True" 
            Font-Names="Batang" Font-Size="Large" ForeColor="#333300" 
            
            style="z-index: 1; left: 14px; top: 164px; position: absolute; height: 25px; width: 650px; margin-bottom: 0px;">Withdraw Details</asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="Large" ForeColor="#FF3300" 
            style="z-index: 1; left: 178px; top: 405px; position: absolute; height: 25px; width: 328px; margin-bottom: 0px;" 
            Visible="False">Correct the Highlighted fields...!</asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="Large" ForeColor="#00CC00" 
            style="z-index: 1; left: 213px; top: 405px; position: absolute; height: 25px; width: 258px; margin-bottom: 0px;" 
            Visible="False">Transaction Success...!</asp:Label>
        <asp:Button ID="Button3" runat="server" 
            style="z-index: 1; left: 270px; top: 373px; position: absolute; height: 26px; width: 85px" 
            TabIndex="6" Text="Clear" ToolTip="Click to Clear" />
            <asp:Label ID="Label18" runat="server" Font-Bold="True" 
                Font-Names="Arial Black" Font-Size="Large" ForeColor="#FF3300" 
                style="z-index: 1; left: 243px; top: 406px; position: absolute; height: 25px; width: 323px; margin-bottom: 0px;" 
                Visible="False">Insufficient Balance...!</asp:Label>
            <asp:Label ID="Label20" runat="server" Font-Bold="True" 
                Font-Names="Arial Black" Font-Size="Large" ForeColor="#FF3300" 
                style="z-index: 1; left: 35px; top: 402px; position: absolute; height: 25px; width: 622px; margin-bottom: 0px;" 
                Visible="False">Create a Current Account First with nominal Balance Amount.</asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel8" runat="server" BackColor="#99CCFF" BorderColor="#E1E100" 
        BorderStyle="Groove" BorderWidth="5px" 
        
          style="z-index: 1; left: 936px; top: 303px; position: absolute; height: 143px; width: 252px">
        <asp:Label ID="Label17" runat="server" 
    
            style="z-index: 1; left: 14px; top: 40px; position: absolute; height: 46px; width: 69px;" 
            Text="Total Balance"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" BorderWidth="1px" Enabled="False" 
            style="z-index: 1; left: 78px; top: 44px; position: absolute; height: 24px" 
            ToolTip="Total Balance"></asp:TextBox>
    </asp:Panel>

    <p>
                <asp:TextBox ID="TextBox6" runat="server" 
        
        style="z-index: 1; left: 25px; top: 225px; position: absolute; height: 32px" 
                    Visible="False"></asp:TextBox>
        </p>
        <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
                <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br />

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
