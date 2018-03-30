Public Class Approve_Cur
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim r As GridViewRow = GridView1.SelectedRow
        Application("MacnoC") = r.Cells(1).Text
        Application("MnameC") = r.Cells(2).Text
        Application("MoccupationC") = r.Cells(3).Text
        Application("McellnumC") = r.Cells(4).Text
        Application("MemailC") = r.Cells(5).Text
        Application("MaddressC") = r.Cells(6).Text
        Application("MactypeC") = r.Cells(7).Text
        Application("MintracnoC") = r.Cells(8).Text
        Application("MpurlC") = r.Cells(10).Text
        Response.Redirect("Approve_Cur2.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class