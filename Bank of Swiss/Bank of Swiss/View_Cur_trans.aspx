<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="View_Cur_trans.aspx.vb" Inherits="Bank_of_Swiss.View_Cur_trans" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Current Account Transaction</title>
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
                                <li><a href="User_Home.aspx"><strong>Home</strong><span></span></a></li>
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

         <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1157px; top: 154px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" />

            <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 1011px; top: 174px; position: absolute; height: 24px; width: 123px"></asp:Label>

<asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 891px; top: 175px; position: absolute; height: 24px; width: 123px" 
            Text="Logged in as :"></asp:Label>
            <asp:Panel ID="Panel4" runat="server" BackColor="#99CCFF" BorderColor="#99FF33" 
        BorderStyle="Outset" BorderWidth="2px" 
        style="z-index: 1; left: 24px; top: 245px; position: absolute; height: 148px; width: 254px">
        <asp:TextBox ID="TextBox1" runat="server" 
    style="z-index: 1; left: 99px; top: 56px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 70px; top: 99px; position: absolute; height: 25px; width: 89px;" 
            Text="View Details" ToolTip="Click to View" />
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 13px; top: 48px; position: absolute; width: 59px" 
            Text="Acc no:"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" BackColor="White" BorderStyle="Solid" 
        BorderWidth="2px" 
        
        
        
        style="z-index: 1; left: 314px; top: 224px; position: absolute; height: 315px; width: 940px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Double" 
            BorderWidth="2px" Caption="Your Transactions" DataSourceID="SqlDataSource1" 
            style="z-index: 1; left: 27px; top: 27px; position: absolute; height: 187px; width: 683px" 
            ToolTip="Transactions" BorderColor="#FF9900">
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
            <EditRowStyle BorderColor="#CC6600" BorderStyle="Solid" BorderWidth="1px" />
            <HeaderStyle Font-Names="Andalus" BorderColor="#CC6600" BorderStyle="Solid" 
                BorderWidth="1px" />
            <RowStyle BorderColor="#FF9900" BorderStyle="Solid" BorderWidth="1px" />
        </asp:GridView>
        <asp:Panel ID="Panel6" runat="server" BackColor="White" BorderColor="#CC3300" 
            BorderStyle="Outset" BorderWidth="2px" 
            style="z-index: 1; left: 754px; top: 87px; position: absolute; height: 135px; width: 166px">
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderWidth="1px" 
                Enabled="False" style="z-index: 1; left: 20px; top: 69px; position: absolute"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" 
                style="z-index: 1; left: 18px; top: 27px; position: absolute; width: 128px" 
                Text="Balance Amount"></asp:Label>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [acno], [deposit], [withdraw], [particular], [date] FROM [trans] WHERE ([acno] = @acno) ORDER BY [date]">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="acno" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
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
              <br />
            <br /> 
          <br /> 
           <br />   <br />
            <br /> 

         
       	<div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a href="User_Home.aspx">Home<span></span></a></li>
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
