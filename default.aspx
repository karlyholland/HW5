<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <div id="wrapper">
    <form id="form1" runat="server">
    <div>
        <div id="container">
            <h1>Welcome to Simply Cookin' by the Book!</h1>
            <div id="menu">
                <ul id="navlist">
                    <li><a href="./default.aspx">Home</a></li>
                    <li><a href="./recipes.aspx">View All Recipes</a></li>
                    <li><a href="newrecipe.aspx">Add a New Recipe</a></li>
                </ul>
            </div>

            <div id="date">
                <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
            </div>

            <div id="content">
        
        <img alt="Cookin' by the Book!" title="Cookin' by the Book!"
            src="./images/cookin-by-the-book.jpg" Height="450px" />
            </div>
            <div id="footer">Copyright &copy;
                <asp:Label ID="lblCopy" runat="server" Text=""></asp:Label>
                Karly - 6K:183 Software Design &amp; Development
            </div>
        </div>
    </div>
    </form></div>
    
</body>
</html>
