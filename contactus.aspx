<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newrecipe.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <div id="wrapper">
    <form id="form1" runat="server">
    <div></div>
    <div>
         <img src="./images/header.png" alt="Wicked Easy Recipes - Using 5 Ingredients or Less!" width:"750px"; />
        </div>
        <div id="container">

            <div id="menu">
                <ul id="navlist">
                    <li><a href="./default.aspx">Home</a></li>
                    <li><a href="newrecipe.aspx">New Recipe</a></li>
                    <li><a href="./aboutus.aspx">About Us</a></li>
                    <li><a href="./contactus.aspx">Contact</a></li>
                </ul>
                
                <p>
                    &nbsp;</p>
                
    <div id="content">
<br />


        <asp:Label ID="lblEmail" runat="server" Text="Your Email Address:"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server" Text="Your Message:"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="500px"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSend" runat="server" Text="Send" />


        <br />


<br />
    </div>

            <div id="footer">
                <br />
                &copy;
                <asp:Label ID="lblCopy" runat="server" Text=""></asp:Label>
                6K:183 Software Design &amp; Development</div>
        </div>
    </div>
    </form>
    </div>
</body>
</html>
