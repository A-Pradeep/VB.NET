<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="faq.aspx.vb" Inherits="Bank_of_Swiss.faq1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>F.A.Q's</title>
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
                                <li ><a href="Home.aspx"><strong>Home</strong><span></span></a></li>
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
                                <li class="active"><a href="faq.aspx"><strong>Contact Us</strong><span></span></a></li>
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
        &nbsp;</p>
    <asp:Panel ID="Panel4" runat="server" BorderColor="Black" 
        BorderStyle="Groove" BorderWidth="3px" 
        
        
    
    style="z-index: 1; left: 257px; top: 356px; position: absolute; height: 258px; width: 717px; margin-left: 4px" 
    BackColor="White">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Double" 
            BorderWidth="2px" Caption="FAQ's" DataSourceID="SqlDataSource1" 
            style="z-index: 1; left: 23px; top: 18px; position: absolute; height: 187px; width: 668px" 
            ToolTip="FAQ's" BorderColor="Blue" CellPadding="1" CellSpacing="1" 
            PageSize="3">
            <Columns>
                <asp:BoundField DataField="qno" HeaderText="qno" SortExpression="qno" />
                <asp:BoundField DataField="question" HeaderText="question" 
                    SortExpression="question" />
                <asp:BoundField DataField="answer" HeaderText="answer" 
                    SortExpression="answer" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
            <EditRowStyle BackColor="#FFFF66" BorderStyle="Solid" BorderWidth="1px" />
            <HeaderStyle BackColor="#E9E9E9" Font-Names="Andalus" BorderColor="#FF9900" 
                BorderStyle="Solid" BorderWidth="1px" />
            <RowStyle BorderColor="#FF9900" BorderStyle="Double" BorderWidth="1px" />
        </asp:GridView>
    </asp:Panel>
    <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="#FF3300" 
        style="z-index: 1; left: 552px; top: 310px; position: absolute; height: 22px; width: 132px" 
        Text="Invalied Request" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="1px" 
        MaxLength="249" 
        style="z-index: 1; left: 308px; top: 216px; position: absolute; height: 75px; width: 615px" 
        TextMode="MultiLine" ToolTip="Enter your question"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 735px; top: 302px; position: absolute" 
        Text="Submit Query" ToolTip="Click to Submit Question" />
    <asp:Button ID="Button2" runat="server" 
        style="z-index: 1; left: 383px; top: 304px; position: absolute" 
        Text="Clear Field" TabIndex="2" ToolTip="Clear Fields" />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" 
        style="z-index: 1; left: 311px; top: 186px; position: absolute; height: 22px; width: 118px" 
        Text="Your Question"></asp:Label>
    <asp:Label ID="Label6" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 1117px; top: 185px; position: absolute; height: 21px; width: 128px" 
        ToolTip="Date"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 24px; top: 276px; position: absolute; width: 39px" 
        Visible="False"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [qno], [question], [answer], [date] FROM [faq]">
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
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
           <br /> 
          <br />
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
                                    	<li><a href="Home.aspx">Home<span></span></a></li>
                                        <li><a href="About.aspx">About us<span></span></a></li>
                                        <li><a href="Partners.aspx">Partners<span></span></a></li>
                                        <li><a href="Register.aspx">Join Us<span></span></a></li>
                                        <li><a class="active"  href="faq.aspx">Contacts<span></span></a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!-- {%FOOTER_LINK} -->
    </form>
</body>
</html>
