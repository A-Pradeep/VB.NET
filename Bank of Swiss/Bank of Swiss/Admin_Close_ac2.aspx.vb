Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class Close_SBac2
    Inherits System.Web.UI.Page
    Dim mid As String
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
        Label12.Visible = False
        Label2.Visible = False
        TextBox1.Text = Application("Mname")
        TextBox2.Text = Application("Mcellnum")
        TextBox3.Text = Application("Memail")
        TextBox4.Text = Application("Maddress")
        TextBox5.Text = Application("Moccupation")
        TextBox6.Text = Application("Macno")
        TextBox7.Text = Application("Mactype")
        TextBox8.Text = Application("Mintracno")
        Image3.ImageUrl = Application("Mpurl")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Conn.Open()
        Dim cmd As New SqlCommand("update client set status='Blocked' where acno='" & TextBox6.Text & "'", Conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        Conn.Close()

        ' Delete Login
        Conn.Open()
        Dim cmd112 As New SqlCommand("delete from login where uname='" & TextBox6.Text & "'", Conn)
        Dim dr112 As SqlDataReader = cmd112.ExecuteReader()
        Conn.Close()

        ' to inform by email
        Try

            Dim SmtpServer As New SmtpClient()

            Dim mail As New MailMessage()

            SmtpServer.Credentials = New Net.NetworkCredential("ask4const@gmail.com", "8050924438") ' From

            SmtpServer.Port = 587

            SmtpServer.Host = "smtp.gmail.com"

            mail = New MailMessage()
            mid = CStr(TextBox3.Text)
            mail.From = New MailAddress(mid, "Bank of Swiss")  ' to

            mail.To.Add(mid)                  ' to

            mail.Subject = "Confirmation Mail"

            mail.Body = "As per your request we have successfully closed your account, from the day of reception of this email your account will be blocked in future and you will not be able to access it... Thanks for being with us for these days and hope you will join back us."

            SmtpServer.Send(mail)
            ' Response.Redirect("Admin_Close_ac.aspx")
        Catch ex As Exception
            Exit Sub
        End Try
        Label12.Visible = True

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click

        Conn.Open()
        Dim cmd As New SqlCommand("update client set status='Approved' where acno='" & TextBox6.Text & "'", Conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        Conn.Close()
        ' Create Login
        Conn.Open()
        Dim cmd2 As New SqlCommand("insert into login(uname,password) values('" & TextBox6.Text & "','Abc123')", Conn)
        Dim dr2 As SqlDataReader = cmd2.ExecuteReader()
        Conn.Close()
        Label12.Visible = True
        ' to inform by email
        Try

            Dim SmtpServer As New SmtpClient()

            Dim mail As New MailMessage()

            SmtpServer.Credentials = New Net.NetworkCredential("ask4const@gmail.com", "8050924438") ' From

            SmtpServer.Port = 587

            SmtpServer.Host = "smtp.gmail.com"

            mail = New MailMessage()
            Mid = CStr(TextBox3.Text)
            mail.From = New MailAddress(mid, "Bank of Swiss")  ' to

            mail.To.Add(mid)                  ' to

            mail.Subject = "Confirmation Mail"

            mail.Body = "As per your request we have successfully Re-Activated your account, your account is active now and you can access it before asking to close your account please be aware of it...!"

            SmtpServer.Send(mail)
            '   Response.Redirect("Admin_Close_ac.aspx")
        Catch ex As Exception
            Exit Sub
        End Try
        Label12.Visible = True
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class