Public Class Money_Transfer_Success
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("uun") = "" Then
            Response.Redirect("Login.aspx")
        End If
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("uun") = ""
        Response.Redirect("Login.aspx")
    End Sub
End Class