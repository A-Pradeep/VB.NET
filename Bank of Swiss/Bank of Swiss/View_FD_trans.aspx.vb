Public Class View_FD_trans
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("uun") = "" Then
            Response.Redirect("Login.aspx")
        End If
        Label5.Text = Application("uun")
        Panel5.Visible = False
    End Sub

   

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("uun") = ""
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If StrComp(TextBox1.Text, Label5.Text) = 0 Then
            TextBox1.BorderColor = Drawing.Color.Black
            Panel5.Visible = True
        Else
            TextBox1.BorderColor = Drawing.Color.Red
            Panel5.Visible = False
            TextBox1.Text = ""
            TextBox1.Focus()
            Exit Sub
        End If
    End Sub
End Class