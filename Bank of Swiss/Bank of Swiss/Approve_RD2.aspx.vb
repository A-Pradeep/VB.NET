Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class Approve_RD2
    Inherits System.Web.UI.Page
    Dim mid As String
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
        Label12.Visible = False
        Label2.Visible = False
        TextBox1.Text = Application("MnameC")
        TextBox2.Text = Application("McellnumC")
        TextBox3.Text = Application("MemailC")
        TextBox4.Text = Application("MaddressC")
        TextBox5.Text = Application("MoccupationC")
        TextBox6.Text = Application("MacnoC")
        TextBox7.Text = Application("MactypeC")
        TextBox8.Text = Application("MintracnoC")
        Image3.ImageUrl = Application("MpurlC")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        Conn.Open()
        Dim cmd As New SqlCommand("update client set status='Approved' where acno='" & TextBox6.Text & "'", Conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        Conn.Close()
        ' Create Login
        Conn.Open()
        Dim cmd2 As New SqlCommand("insert into login(uname,password) values('" & TextBox6.Text & "','Abc123')", Conn)
        Dim dr2 As SqlDataReader = cmd2.ExecuteReader()
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

            mail.Body = "This mail was sent as you had requested to open RD Account with Bank of Swiss,and it is been Approved by our Experts...! User Id : '" & TextBox6.Text & "' and Password : 'Abc123' Please change the password when you read this email...! And Don't forget to credit amount to your account."

            SmtpServer.Send(mail)
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