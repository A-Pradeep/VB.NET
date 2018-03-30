Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class Admin_FD_With
    Inherits System.Web.UI.Page
    Dim mid As String
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
        Label12.Visible = False
        TextBox1.Text = Application("acno")
        TextBox5.Text = Application("d_amt")
        TextBox2.Text = Application("duration")
        TextBox9.Text = Application("rate")
        TextBox3.Text = Application("d_date")
        TextBox8.Text = CStr(Application("m_date"))
        TextBox6.Text = Application("m_amt")
        TextBox10.Text = Application("nominee")
        TextBox7.Text = Val(TextBox6.Text) - Val(TextBox5.Text)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If TextBox11.Text = "" Then
            TextBox11.BorderColor = Drawing.Color.Red
            TextBox11.Focus()
            Exit Sub
        Else
            TextBox11.BorderColor = Drawing.Color.Black
        End If
        Conn.Open()
        Dim cmd As New SqlCommand("insert into trans values('" & TextBox1.Text & "','0.00','" & TextBox6.Text & "','" & TextBox11.Text & " ','" & CStr(TextBox8.Text) & "')", Conn)
        Dim res As SqlDataReader = cmd.ExecuteReader()
        Conn.Close()

        Conn.Open()
        Dim cmd2 As New SqlCommand("delete from fdac where acno='" & TextBox1.Text & "' ", Conn)
        Dim res2 As SqlDataReader = cmd2.ExecuteReader()
        Conn.Close()

        Conn.Open()
        Dim cmd3 As New SqlCommand("delete from login where uname='" & TextBox1.Text & "' ", Conn)
        Dim res3 As SqlDataReader = cmd3.ExecuteReader()
        Conn.Close()

        Conn.Open()
        Dim cmd12 As New SqlCommand("select email from client where acno='" & TextBox1.Text & "'", Conn)
        Dim dr12 As SqlDataReader = cmd12.ExecuteReader()
        If dr12.HasRows = True Then
            dr12.Read()

            TextBox10.Text = dr12(0).ToString

            Try
                Conn.Close()
                Dim SmtpServer As New SmtpClient()

                Dim mail As New MailMessage()

                SmtpServer.Credentials = New Net.NetworkCredential("ask4const@gmail.com", "8050924438") ' From

                SmtpServer.Port = 587

                SmtpServer.Host = "smtp.gmail.com"

                mail = New MailMessage()
                mail.From = New MailAddress(TextBox10.Text, "Bank of Swiss")  ' to

                mail.To.Add(TextBox10.Text)                  ' to

                mail.Subject = "Confirmation Mail"

                mail.Body = "This mail was sent as your FD had been matured,the sum of matured amount '" & TextBox6.Text & "', is been sent to you as crossed cheque by our sources kindly recieve it...!"
                SmtpServer.Send(mail)
            Catch ex As Exception
                Exit Sub
            End Try
        End If
        Label12.Visible = True
        TextBox1.Text = ""
        TextBox5.Text = ""
        TextBox2.Text = ""
        TextBox9.Text = ""
        TextBox3.Text = ""
        TextBox8.Text = ""
        TextBox6.Text = ""
        TextBox10.Text = ""
        TextBox7.Text = ""
        TextBox11.Text = ""
        Exit Sub
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class