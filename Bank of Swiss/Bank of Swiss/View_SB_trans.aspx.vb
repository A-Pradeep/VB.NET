Imports System.Data.SqlClient

Public Class View_SB_trans
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
   
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
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
        Conn.Open()
        If StrComp(Label5.Text, TextBox1.Text) = 0 Then
            Dim cmd As New SqlCommand("select balance from sbac where acno='" & TextBox1.Text & "'", Conn)
            Dim res As SqlDataReader = cmd.ExecuteReader()
            If res.HasRows.ToString = True Then
                res.Read()
                TextBox2.Text = res(0).ToString
                TextBox1.BorderColor = Drawing.Color.Black
                Panel5.Visible = True
            Else
                TextBox1.BorderColor = Drawing.Color.Red
                TextBox1.Focus()
                TextBox1.Text = ""
                Panel5.Visible = False
                Exit Sub
            End If
        Else
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            TextBox1.Text = ""
            Panel5.Visible = False
            Exit Sub
        End If
    End Sub
End Class