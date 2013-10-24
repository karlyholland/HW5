
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblCopy.Text = DateTime.Now.Year

    End Sub

End Class
