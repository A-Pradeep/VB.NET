Imports System.Data.SqlClient
Public Class Admin_Answer
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label6.Text = Now.Date
        Label7.Visible = False
        Label8.Visible = False
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        If TextBox1.Text = "" Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Label7.Visible = True
            Label8.Visible = False
        Else
            TextBox1.BorderColor = Drawing.Color.Black
            Label7.Visible = False
            Conn.Open()
            Dim Cmd1 As New SqlCommand("select *from faq where qno='" & TextBox2.Text & "'", Conn)
            Dim DataReader1 As SqlDataReader = Cmd1.ExecuteReader()
            If DataReader1.HasRows.ToString = True Then
                Conn.Close()
                Conn.Open()
                Dim cmd2 As New SqlCommand("update faq set answer='" & TextBox1.Text & "' where qno='" & TextBox2.Text & "'", Conn)
            Dim res As SqlDataReader = cmd2.ExecuteReader()
                Label8.Visible = True
                Label7.Visible = False
                TextBox1.Text = ""
            Else
                Label7.Visible = True
                Label8.Visible = False
                Exit Sub
            End If
        End If
        Conn.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim r As GridViewRow = GridView1.SelectedRow
        TextBox2.Text = r.Cells(1).Text
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox1.Focus()
        Label7.Visible = False
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class