Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class Admin_RD_With2
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
        Label12.Visible = False
        TextBox11.Focus()
        TextBox1.Text = Application("racno")
        TextBox5.Text = Application("rdep_amt")
        TextBox2.Text = Application("rduration")
        TextBox9.Text = Application("rrate")
        TextBox3.Text = Now.Date
        TextBox8.Text = CStr(Application("rm_date"))
        TextBox6.Text = Application("rm_amt")

        TextBox7.Text = Format(Val(TextBox6.Text) - Val(TextBox5.Text), "0.00")
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
        Dim cmd2 As New SqlCommand("delete from rdac where acno='" & TextBox1.Text & "' ", Conn)
        Dim res2 As SqlDataReader = cmd2.ExecuteReader()
        Conn.Close()

        Conn.Open()
        Dim cmd3 As New SqlCommand("delete from login where uname='" & TextBox1.Text & "' ", Conn)
        Dim res3 As SqlDataReader = cmd3.ExecuteReader()
        Conn.Close()

        Conn.Open()
        Dim cmd112 As New SqlCommand("select email from client where acno='" & TextBox1.Text & "'", Conn)
        Dim dr112 As SqlDataReader = cmd112.ExecuteReader()
        If dr112.HasRows = True Then
            dr112.Read()

            TextBox10.Text = dr112(0).ToString

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

                mail.Body = "This mail was sent as your RD had been matured,the sum of matured amount '" & TextBox6.Text & "', is been sent to you as crossed cheque by our sources kindly recieve it...!"
                SmtpServer.Send(mail)
            Catch ex As Exception
                Exit Sub
            End Try
        End If
        Label12.Visible = True
        'TextBox1.Text = ""
        'TextBox5.Text = ""
        'TextBox2.Text = ""
        'TextBox9.Text = ""
        'TextBox3.Text = ""
        'TextBox8.Text = ""
        'TextBox6.Text = ""
        'TextBox7.Text = ""
        'TextBox11.Text = ""

    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class