﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_Close_ac.aspx.vb" Inherits="Bank_of_Swiss.Approve_SB_ac" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Client Account and Manage</title>
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
<body style="height: 588px; width: 1364px;">
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
        <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1169px; top: 137px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" />
        </header> 
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
      <asp:Panel ID="Panel1" runat="server" Height="165px">
      </asp:Panel>
    <p>
        &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            
            
            
            
        SelectCommand="SELECT [acno], [name], [occupation], [cellnum], [email], [address], [actype], [intracno], [status], [purl], [pname] FROM [client] ORDER BY [acno]">
        </asp:SqlDataSource>
            <div style="z-index: 1; left: 184px; top: 129px; position: absolute; height: 19px; width: 646px">
    <marquee>If screen is Blank, then there may be No New Requests...!</marquee>
    </div>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
      <p>
      </p>
    <p>
        &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BorderStyle="Outset" BorderWidth="2px" 
            Caption="Our Clients List" DataSourceID="SqlDataSource1" 
            
            style="z-index: 1; left: 20px; top: 194px; position: absolute; height: 350px; width: 1294px" 
            DataKeyNames="acno" AllowSorting="True" CellPadding="1" CellSpacing="2" 
          PageSize="3" TabIndex="1">
            <AlternatingRowStyle BorderColor="#CC6600" BorderStyle="Solid" 
                BorderWidth="1px" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="acno" HeaderText="acno" ReadOnly="True" 
                    SortExpression="acno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="occupation" HeaderText="occupation" 
                    SortExpression="occupation" />
                <asp:BoundField DataField="cellnum" HeaderText="cellnum" 
                    SortExpression="cellnum" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="actype" HeaderText="actype" 
                    SortExpression="actype" />
                <asp:BoundField DataField="intracno" HeaderText="intracno" 
                    SortExpression="intracno" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:BoundField DataField="purl" HeaderText="purl" SortExpression="purl" />
                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            </Columns>
            <EditRowStyle BorderColor="#CC6600" BorderStyle="Solid" BorderWidth="1px" />
            <EmptyDataRowStyle BorderStyle="Solid" BorderWidth="1px" />
            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
            <PagerStyle BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <RowStyle BorderColor="#CC6600" BorderStyle="Solid" BorderWidth="1px" />
        </asp:GridView>
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
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
