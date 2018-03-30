Public Class Approve_RD_
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim r As GridViewRow = GridView1.SelectedRow
        Application("Macno") = r.Cells(1).Text
        Application("Mname") = r.Cells(2).Text
        Application("Moccupation") = r.Cells(3).Text
        Application("Mcellnum") = r.Cells(4).Text
        Application("Memail") = r.Cells(5).Text
        Application("Maddress") = r.Cells(6).Text
        Application("Mactype") = r.Cells(7).Text
        Application("Mintracno") = r.Cells(8).Text
        Application("Mpurl") = r.Cells(10).Text
        Response.Redirect("Approve_SB_ac2.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class