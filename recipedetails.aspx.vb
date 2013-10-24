﻿
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        'Delcare variables
        Dim delRecipe As String = e.Values("recipeName").ToString

        Response.Write("<span class=deletedrecipeshighlight>")
        Response.Write(delRecipe)
        Response.Write("</span> has been deleted.")

        Response.AddHeader("REFRESH", "3;URL=./states.aspx")

        'Response.Write("This recipe has been deleted.")

    End Sub
    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("./recipes.aspx")

    End Sub
    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("./recipes.aspx")

    End Sub
End Class