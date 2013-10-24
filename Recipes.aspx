<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipes.aspx.vb" Inherits="gridview" %>

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
    
        <asp:SqlDataSource ID="recipeDataSource" runat="server"
            ConnectionString="<%$ ConnectionStrings:csRecipes %>"
            SelectCommand="SELECT * FROM [Recipe]"
            DeleteCommand="DELETE FROM [Recipe] WHERE [recipeID] = @recipeID"
            InsertCommand="INSERT INTO [Recipe] ([recipeName], [submittedBy],
            [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5],
            [prep], [notes])
            VALUES (@recipeName, @submittedBy, @ingredient1, @ingredient2, @ingredient3,
            @ingredient4, @ingredient5, @prep, @notes)"
            UpdateCommand="UPDATE [Recipe] SET [recipeName] = @recipeName,
            [submittedBy] = @submittedBy, [ingredient1] = @ingredient1,
            [ingredient2] = @ingredient2, [ingredient3] = @ingredient3,
            [ingredient4] = @ingredient4, [ingredient5] = @ingredient5,
            [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <div id="container">
            <div id="menu">
                <ul id="navlist">
                    <li><a href="./default.aspx">Home</a></li>
                    <li><a href="./recipes.aspx">View All Recipes</a></li>
                    <li><a href="newrecipe.aspx">Add a New Recipe</a></li>
                </ul>
            </div>
            <div id="date"><asp:Label ID="lblDate" runat="server" Text=""></asp:Label></div>
            <div id="content">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="recipeDataSource" Width="700px">
            <Columns>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="recipedetails.aspx?recipeID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
    </div>
            <div id="footer">Copyright &copy;
                <asp:Label ID="lblCopy" runat="server" Text=""></asp:Label>
                Karly - 6K:183 Software Design &amp; Development</div>
        </div>
    </div>
    </form>
    </div>
</body>
</html>
