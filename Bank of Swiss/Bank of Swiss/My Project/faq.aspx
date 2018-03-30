<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="faq.aspx.vb" Inherits="Bank_of_Swiss.faq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderWidth="3px" 
                
                
                
                
                style="z-index: 1; left: 13px; top: 16px; position: absolute; height: 105px; width: 1290px" 
                BorderColor="#00CC00" BorderStyle="Outset" ForeColor="#FF3300">
               
               
               
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bs_logo1.jpg" 
                    style="z-index: 1; left: 4px; top: 2px; position: absolute; height: 79px; width: 110px" />
                <asp:Panel ID="Panel2" runat="server" 
                    
                    style="z-index: 1; left: 161px; top: 35px; position: absolute; height: 61px; width: 649px; margin-left: 11px;" 
                    BorderColor="#33CC33" BorderStyle="Inset" BorderWidth="1px">
                    <asp:ImageButton ID="ImageButton4" runat="server" 
                        ImageUrl="~/Images/about_button.jpg" 
                        style="z-index: 1; left: 223px; top: 10px; position: absolute; height: 44px; width: 63px" 
                        ToolTip="About Us" />
                    <asp:ImageButton ID="ImageButton5" runat="server" 
                        ImageUrl="~/Images/register_button.jpg" 
                        style="z-index: 1; left: 368px; top: 7px; position: absolute; height: 44px; width: 63px" 
                        ToolTip="Register" />
                    <asp:ImageButton ID="ImageButton6" runat="server" 
                        ImageUrl="~/Images/login_button.jpg" 
                        style="z-index: 1; left: 41px; top: 7px; position: absolute; height: 44px; width: 63px" 
                        ToolTip="Login" />
                    <asp:ImageButton ID="ImageButton7" runat="server" 
                        ImageUrl="~/Images/home_button.jpg" PostBackUrl="~/Home.aspx" 
                        style="z-index: 1; left: 531px; top: 7px; position: absolute; height: 44px; width: 63px" 
                        ToolTip="Home Page" />
                </asp:Panel>
               
                    <asp:Panel ID="Panel3" runat="server" 
                    
                    
                    style="z-index: 1; left: 850px; top: 20px; position: absolute; height: 43px; width: 328px">
                        <div style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 38px; width: 336px">
                        <marquee behavior="scroll" direction="up" scrollamount="1" 
                                style="height: 26px; width: 309px;">* Update your Passbook regularly.</marquee>
                        <br />
                        <marquee behavior="scroll" direction="up" scrollamount="1" 
                                style="height: 26px; width: 310px;">* Change Passwords regularly.</marquee>
                        <br />
                        <marquee behavior="scroll" direction="up" scrollamount="1" 
                                style="height: 26px; width: 311px;">* Have a look on your transaction.</marquee>
                        </div>
                </asp:Panel>
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" 
                    style="z-index: 1; left: 1141px; top: 73px; position: absolute; width: 145px" 
                    Text="ask4const@gmail.com" ForeColor="#CC6600"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/mail_button.jpg" 
                    style="z-index: 1; left: 1183px; top: 20px; position: absolute; height: 43px; width: 58px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div style="z-index: 1; left: 178px; top: 12px; position: absolute; height: 19px; width: 640px; color: #008000;">
                <center>Serving in more than 52 Countries and&nbsp; Ranked The Eco-Friendly Bank of the Year 2012</center>
                </div>
                </asp:Panel>
    </form>
</body>
</html>
