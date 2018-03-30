Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class Close_SBac
    Inherits System.Web.UI.Page

    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("uun") = "" Then
            Response.Redirect("Login.aspx")
        End If
        Label2.Text = Application("uun")
    End Sub

    Protected Sub ImageButton9_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton9.Click

        Conn.Open()
        Dim cmd3 As New SqlCommand("update client set status='Inactive' where acno='" & Label2.Text & "'", Conn)
        Dim res3 As SqlDataReader = cmd3.ExecuteReader()
        Conn.Close()

        Conn.Open()
        Dim cmd2 As New SqlCommand("delete from login where uname='" & Label2.Text & "'", Conn)
        Dim res2 As SqlDataReader = cmd2.ExecuteReader()
        Conn.Close()
        Conn.Open()
        Dim cmd10 As New SqlCommand("select email from client where acno='" & Label2.Text & "'", Conn)
        Dim dr10 As SqlDataReader = cmd10.ExecuteReader()
        If dr10.HasRows = False Then
            Exit Sub
        End If
        dr10.Read()
        TextBox1.Text = dr10(0).ToString
        ' to inform by email
        Try

            Dim SmtpServer As New SmtpClient()

            Dim mail As New MailMessage()

            SmtpServer.Credentials = New Net.NetworkCredential("ask4const@gmail.com", "8050924438") ' From

            SmtpServer.Port = 587

            SmtpServer.Host = "smtp.gmail.com"

            mail = New MailMessage()

            mail.From = New MailAddress(TextBox1.Text, "Bank of Swiss")  ' to

            mail.To.Add(TextBox1.Text)                  ' to

            mail.Subject = "Confirmation Mail"

            mail.Body = "This mail was sent as you had requested to Close your accounts with Bank of Swiss and it was De-Activate did Successfully, You will be noticed when Your account is closed..."

            SmtpServer.Send(mail)

        Catch ex As Exception
            Exit Sub
        End Try
        Conn.Close()
        Application("uun") = ""
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("uun") = ""
        Response.Redirect("Home.aspx")
    End Sub
End Class