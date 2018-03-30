Public Class Admin_FD_With1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Now.Date
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim r As GridViewRow = GridView1.SelectedRow
        Application("acno") = r.Cells(1).Text
        Application("d_amt") = r.Cells(2).Text
        Application("duration") = r.Cells(3).Text
        Application("d_date") = r.Cells(4).Text
        Application("rate") = r.Cells(5).Text
        Application("m_amt") = r.Cells(6).Text
        Application("m_date") = r.Cells(7).Text
        Application("nominee") = r.Cells(8).Text
        Application("status") = r.Cells(9).Text
        Response.Redirect("Admin_FD_With2.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class