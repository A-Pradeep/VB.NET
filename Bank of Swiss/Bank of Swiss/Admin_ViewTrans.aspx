<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_ViewTrans.aspx.vb" Inherits="Bank_of_Swiss.Admin_SB_ViewTrans" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Client Transactions</title>
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
            ToolTip="Log Out" TabIndex="3" />
    <p>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="SimSun-ExtB" 
            Font-Size="X-Large" ForeColor="#009933" 
            style="z-index: 1; left: 334px; top: 177px; position: absolute; height: 36px; width: 742px" 
            Text="View Client's Transactions by Entring Account Number :"></asp:Label>
    </p>
    <asp:Panel ID="Panel4" runat="server" BackColor="#99CCFF" BorderColor="#99FF33" 
        BorderStyle="Outset" BorderWidth="2px" 
        
        style="z-index: 1; left: 16px; top: 226px; position: absolute; height: 148px; width: 254px">
        <asp:TextBox ID="TextBox1" runat="server" 
    style="z-index: 1; left: 99px; top: 56px; position: absolute" TabIndex="1"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 70px; top: 99px; position: absolute; height: 25px; width: 89px;" 
            Text="View Details" ToolTip="Click to View" TabIndex="2" />
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 13px; top: 48px; position: absolute; width: 59px" 
            Text="Acc no:"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" BackColor="White" BorderStyle="Solid" 
        BorderWidth="2px" 
        
        
        style="z-index: 1; left: 315px; top: 219px; position: absolute; height: 311px; width: 742px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Double" 
            BorderWidth="2px" Caption="Your Transactions" DataSourceID="SqlDataSource1" 
            style="z-index: 1; left: 36px; top: 17px; position: absolute; height: 187px; width: 683px" 
            ToolTip="Transactions" BorderColor="#CC6600">
            <Columns>
                <asp:BoundField DataField="acno" HeaderText="acno" SortExpression="acno" />
                <asp:BoundField DataField="deposit" HeaderText="deposit" 
                    SortExpression="deposit" />
                <asp:BoundField DataField="withdraw" HeaderText="withdraw" 
                    SortExpression="withdraw" />
                <asp:BoundField DataField="particular" HeaderText="particular" 
                    SortExpression="particular" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
            <EditRowStyle BackColor="#FFFF66" BorderColor="#FF9900" BorderStyle="Solid" 
                BorderWidth="1px" />
            <HeaderStyle Font-Names="Andalus" BorderColor="#FF9900" BorderStyle="Solid" 
                BorderWidth="1px" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [trans] WHERE ([acno] = @acno) ORDER BY [date]">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="acno" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
     <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
        <br /><br /><br /><br /><br /><br />
         <br /><br /><br /><br />
         	<div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a href="Home.aspx">Home<span></span></a></li>
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
