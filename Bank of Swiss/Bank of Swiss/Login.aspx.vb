Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox2.BorderColor = Drawing.Color.Black
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox1.Focus()
        Label6.Visible = False
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        TextBox1.Focus()
        Label6.Visible = False
        Application("uun") = ""
        Application("aun") = ""
        Conn.Open()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        If TextBox1.Text = "" And TextBox2.Text = "" Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox2.BorderColor = Drawing.Color.Red
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox1.Focus()
            Label6.Visible = True
        End If
        Dim cmd As New SqlCommand("select * from login where uname='" & TextBox1.Text & "' and  password='" & TextBox2.Text & "'", Conn)
        Dim res As SqlDataReader = cmd.ExecuteReader()
        If res.HasRows.ToString = True Then
            Label6.Visible = False
            Application("uun") = TextBox1.Text
            Response.Redirect("User_Home.aspx")
        Else
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox2.BorderColor = Drawing.Color.Red
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox1.Focus()
            Label6.Visible = True
        End If
        Conn.Close()
    End Sub
End Class