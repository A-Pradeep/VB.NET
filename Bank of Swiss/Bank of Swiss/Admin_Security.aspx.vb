Imports System.Data.SqlClient
Public Class Admin_Security
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Conn.Open()
        Dim cmd1 As New SqlCommand("select * from adminlogin where uname='admin'", Conn)
        Dim dr1 As SqlDataReader = cmd1.ExecuteReader()
        If dr1.HasRows = True Then
            Conn.Close()
            Conn.Open()
            Dim cmd2 As New SqlCommand("update adminlogin set password='admin' where uname='admin'", Conn)
            Dim dr2 As SqlDataReader = cmd2.ExecuteReader()
            Conn.Close()
            Label12.Visible = True
            Label2.Visible = False
            Label18.Visible = False
            Exit Sub
        Else
            Label12.Visible = False
            Label2.Visible = True
            Label18.Visible = False
            Exit Sub
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If TextBox6.Text = "" Then
            TextBox6.BorderColor = Drawing.Color.Red
            TextBox6.Focus()
            Exit Sub
        Else
            TextBox6.BorderColor = Drawing.Color.Black
        End If

        If TextBox7.Text = "" Then
            TextBox7.BorderColor = Drawing.Color.Red
            TextBox7.Focus()
            Exit Sub
        Else
            TextBox7.BorderColor = Drawing.Color.Black
        End If

        If TextBox8.Text = "" Then
            TextBox8.BorderColor = Drawing.Color.Red
            TextBox8.Focus()
            Exit Sub
        Else
            TextBox8.BorderColor = Drawing.Color.Black
        End If

        If TextBox6.Text = "" Or TextBox7.Text = "" Or TextBox8.Text = "" Then
            Label12.Visible = False
            Label18.Visible = True
            Label2.Visible = False
            Exit Sub
        Else
            Label12.Visible = False
            Label18.Visible = False
            Label2.Visible = False
        End If

        If StrComp(TextBox8.Text, TextBox6.Text) <> 0 Then
            TextBox6.Focus()
            TextBox6.BorderColor = Drawing.Color.Red
            TextBox8.BorderColor = Drawing.Color.Red
            Label12.Visible = False
            Label18.Visible = True
            Label2.Visible = False
            Exit Sub
        Else
            TextBox6.BorderColor = Drawing.Color.Black
            TextBox8.BorderColor = Drawing.Color.Black
            Label12.Visible = False
            Label18.Visible = False
            Label2.Visible = False
        End If
        Conn.Open()
        Dim cmd1 As New SqlCommand("select * from adminlogin where uname='admin' and password='" & TextBox7.Text & "' ", Conn)
        Dim dr1 As SqlDataReader = cmd1.ExecuteReader()
        If dr1.HasRows = True Then
            Conn.Close()
            Conn.Open()
            Dim cmd2 As New SqlCommand("update adminlogin set password='" & TextBox8.Text & "' where uname='admin'", Conn)
            Dim dr2 As SqlDataReader = cmd2.ExecuteReader()
            Conn.Close()
            Label18.Visible = False
            Label12.Visible = True
            Label2.Visible = False
            Exit Sub
        Else
            Label18.Visible = False
            Label12.Visible = False
            Label2.Visible = True
            TextBox7.Focus()
            TextBox7.Text = ""
            Exit Sub
        End If
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Home.aspx")
    End Sub
End Class