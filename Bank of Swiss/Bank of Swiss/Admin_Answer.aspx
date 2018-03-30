<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_Answer.aspx.vb" Inherits="Bank_of_Swiss.Admin_Answer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Answer the Questions</title>
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
    <br />
     <br />
    <asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Images/logout_button.png" 
            style="z-index: 1; left: 1154px; top: 154px; position: absolute; height: 61px; width: 61px" 
            ToolTip="Log Out" />
    <asp:Panel ID="Panel4" runat="server" BorderColor="Black" 
        BorderStyle="Groove" BorderWidth="3px" 
        
        
    
    style="z-index: 1; left: 223px; top: 170px; position: absolute; height: 258px; width: 717px; margin-left: 4px" 
    BackColor="White">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BorderStyle="Double" 
            BorderWidth="2px" Caption="FAQ's" DataSourceID="SqlDataSource1" 
            style="z-index: 1; left: 23px; top: 18px; position: absolute; height: 187px; width: 668px" 
            ToolTip="Select the Query and Answer it below" BorderColor="Blue" 
            CellPadding="1" CellSpacing="1" 
            PageSize="3" DataKeyNames="qno">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="qno" HeaderText="qno" SortExpression="qno" 
                    ReadOnly="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [qno], [question], [answer], [date] FROM [faq] ORDER BY [qno]">
        </asp:SqlDataSource>
    </asp:Panel>
  <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#009900" 
        style="z-index: 1; left: 170px; top: 470px; position: absolute; height: 22px; width: 118px" 
        Text="Your Answer"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="1px" 
        MaxLength="249" 
        style="z-index: 1; left: 276px; top: 481px; position: absolute; height: 75px; width: 615px" 
        TextMode="MultiLine" ToolTip="Enter your question" TabIndex="1"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" 
        style="z-index: 1; left: 312px; top: 579px; position: absolute" 
        Text="Clear Field" TabIndex="3" ToolTip="Clear Fields" />
        <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 756px; top: 581px; position: absolute" 
        Text="Submit Answer" ToolTip="Click to Submit" TabIndex="2" />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" 
        style="z-index: 1; left: 1018px; top: 167px; position: absolute; height: 21px; width: 128px" 
        ToolTip="Date"></asp:Label>


    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>


    <p>
  <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red" 
        style="z-index: 1; left: 518px; top: 587px; position: absolute; height: 22px; width: 152px" 
        Text="Invalied Action...!"></asp:Label>
  <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#33CC33" 
        style="z-index: 1; left: 529px; top: 587px; position: absolute; height: 22px; width: 152px" 
        Text="Valied Action...!"></asp:Label>
    </p>
    <br /> <br />
        <br />
            <br />
                <br />
                    <br />
        <br />
            <br />
                <br />
                    <br /> <br /> <br />
        <br />
            <br />
                <br />
                    <br />
        <br />
            <br />
                <br />
                    <br />  <br />
          
           
 	<div class="wrapper">
                            	<span class="footer-text">E Banking &copy; 2016  |  <a href="ToC .aspx">Privacy policy<span></span></a></span>
                                <nav class="fright">
                                	<ul class="footer-menu">
                                    	<li><a  href="Admin_Home.aspx">Home<span></span></a></li>
                                        <li><a href="About.aspx">About us<span></span></a></li>
                                        <li><a href="Partners.aspx">Partners<span></span></a></li>
                                        <li><a href="Register.aspx">Join Us<span></span></a></li>
                                        <li><a class="active" href="faq.aspx">Contacts<span></span></a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!-- {%FOOTER_LINK} -->
    </form>
</body>
</html>
