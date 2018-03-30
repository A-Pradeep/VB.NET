Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class User_Security
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("uun") = "" Then
            Response.Redirect("Login.aspx")
        End If
        Label16.Text = Application("uun")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click

        Conn.Open()
        Dim cmd1 As New SqlCommand("select * from login where uname='" & Label16.Text & "'", Conn)
        Dim dr1 As SqlDataReader = cmd1.ExecuteReader()
        If dr1.HasRows = True Then
            Conn.Close()
            Conn.Open()
            Dim cmd2 As New SqlCommand("update login set password='Abc123' where uname='" & Label16.Text & "'", Conn)
            Dim dr2 As SqlDataReader = cmd2.ExecuteReader()
            Conn.Close()
            Label12.Visible = True
            Label2.Visible = False
            Label18.Visible = False
        Else
            Label12.Visible = False
            Label2.Visible = True
            Label18.Visible = False
            Exit Sub
        End If
        Conn.Open()
        Dim cmd10 As New SqlCommand("select email from client where acno='" & Label16.Text & "'", Conn)
        Dim dr10 As SqlDataReader = cmd10.ExecuteReader()
        If dr10.HasRows = False Then
            Exit Sub
        End If
        dr10.Read()
        TextBox9.Text = dr10(0).ToString
        ' to inform by email
        Try

            Dim SmtpServer As New SmtpClient()

            Dim mail As New MailMessage()

            SmtpServer.Credentials = New Net.NetworkCredential("ask4const@gmail.com", "8050924438") ' From

            SmtpServer.Port = 587

            SmtpServer.Host = "smtp.gmail.com"

            mail = New MailMessage()

            mail.From = New MailAddress(TextBox9.Text, "Bank of Swiss")  ' to

            mail.To.Add(TextBox9.Text)                  ' to

            mail.Subject = "Confirmation Mail"

            mail.Body = "This mail was sent as you had requested to Re-Set your accounts password with Bank of Swiss and it was did Successfully... Your new Password 'Abc123' "

            SmtpServer.Send(mail)

        Catch ex As Exception
            Exit Sub
        End Try
        Conn.Close()
        Application("uun") = ""
        Response.Redirect("Login.aspx")
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
        Dim cmd1 As New SqlCommand("select * from login where uname='" & Label16.Text & "' and password='" & TextBox7.Text & "' ", Conn)
        Dim dr1 As SqlDataReader = cmd1.ExecuteReader()
        If dr1.HasRows = True Then
            Conn.Close()
            Conn.Open()
            Dim cmd2 As New SqlCommand("update login set password='" & TextBox8.Text & "' where uname='" & Label16.Text & "'", Conn)
            Dim dr2 As SqlDataReader = cmd2.ExecuteReader()
            Conn.Close()
            Label18.Visible = False
            Label12.Visible = True
            Label2.Visible = False

        Else
            TextBox7.Text = ""
            TextBox7.Focus()
            Label18.Visible = False
            Label12.Visible = False
            Label2.Visible = True
            Exit Sub
        End If
        Conn.Open()
        Dim cmd10 As New SqlCommand("select email from client where acno='" & Label16.Text & "'", Conn)
        Dim dr10 As SqlDataReader = cmd10.ExecuteReader()
        If dr10.HasRows = False Then
            Exit Sub
        End If
        dr10.Read()
        TextBox9.Text = dr10(0).ToString
        ' to inform by email
        Try

            Dim SmtpServer As New SmtpClient()

            Dim mail As New MailMessage()

            SmtpServer.Credentials = New Net.NetworkCredential("ask4const@gmail.com", "8050924438") ' From

            SmtpServer.Port = 587

            SmtpServer.Host = "smtp.gmail.com"

            mail = New MailMessage()

            mail.From = New MailAddress(TextBox9.Text, "Bank of Swiss")  ' to

            mail.To.Add(TextBox9.Text)                  ' to

            mail.Subject = "Confirmation Mail"

            mail.Body = "This mail was sent as you had requested to Update your accounts password with Bank of Swiss and it was did Successfully... Your new Password '" & TextBox8.Text & "'  "

            SmtpServer.Send(mail)

        Catch ex As Exception
            Exit Sub
        End Try
        Conn.Close()
        Application("uun") = ""
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("uun") = ""
        Response.Redirect("Home.aspx")
    End Sub
End Class