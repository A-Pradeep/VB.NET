Public Class Admin_RD_With
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Now.Date
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim r As GridViewRow = GridView1.SelectedRow
        Application("racno") = r.Cells(1).Text
        Application("rdep_amt") = r.Cells(2).Text
        Application("rinst_amt") = r.Cells(3).Text
        Application("rrate") = r.Cells(4).Text
        Application("rd_date") = r.Cells(5).Text
        Application("rduration") = r.Cells(6).Text
        Application("rm_amt") = r.Cells(7).Text
        Application("rm_date") = r.Cells(8).Text
        Application("rstatus") = r.Cells(9).Text
        Response.Redirect("Admin_RD_With2.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class