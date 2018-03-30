Imports System.Data.SqlClient

Public Class Admin_Login
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Focus()
        Application("uun") = ""
        Application("aun") = ""

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox1.Focus()
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox2.BorderColor = Drawing.Color.Black
        Label6.Visible = False
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Then
            Label6.Visible = True
        Else
            Label6.Visible = False
        End If
        If TextBox1.Text = "" Then
            TextBox1.BorderColor = Drawing.Color.Red
        Else
            TextBox1.BorderColor = Drawing.Color.Black
        End If
        If TextBox2.Text = "" Then
            TextBox2.BorderColor = Drawing.Color.Red
        Else
            TextBox2.BorderColor = Drawing.Color.Black
        End If
        Conn.Open()
        Dim cmd As New SqlCommand("select * from adminlogin where uname='" & TextBox1.Text & "' and password='" & TextBox2.Text & "'", Conn)
        Dim res As SqlDataReader = cmd.ExecuteReader()
        If res.HasRows.ToString = True Then
            Label6.Visible = False
            Application("aun") = TextBox1.Text
            Response.Redirect("Admin_Home.aspx")
        Else
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox1.Focus()
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox2.BorderColor = Drawing.Color.Red
            Label6.Visible = True
        End If
        Conn.Close()
    End Sub
End Class