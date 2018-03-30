Public Class Home
    Inherits System.Web.UI.Page

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Application("uun") = ""
        Application("aun") = ""
    End Sub
End Class