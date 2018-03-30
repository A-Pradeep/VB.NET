Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.UI.WebControls
Imports System.Net.Mail
Public Class Register
    Inherits System.Web.UI.Page
    Dim num As Long, i As Long
    Dim mid As String
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Focus()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        DropDownList2.ClearSelection()
        TextBox1.Focus()
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox2.BorderColor = Drawing.Color.Black
        TextBox3.BorderColor = Drawing.Color.Black
        TextBox4.BorderColor = Drawing.Color.Black
        TextBox5.BorderColor = Drawing.Color.Black
        Label2.Visible = False

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        ' Check if any field is blank

        If FileUpload1.HasFile = False Then
            FileUpload1.BorderColor = Drawing.Color.Red
            Label2.Visible = True
            Exit Sub
        Else
            FileUpload1.BorderColor = Drawing.Color.Red
            Label2.Visible = True
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
        If Len(TextBox2.Text) < 10 Then
            TextBox2.BorderColor = Drawing.Color.Red
            TextBox2.Focus()
            Exit Sub
        Else
            TextBox2.BorderColor = Drawing.Color.Black
        End If

        If TextBox3.Text = "" Then
            TextBox3.BorderColor = Drawing.Color.Red
        Else
            TextBox3.BorderColor = Drawing.Color.Black
        End If

        If TextBox4.Text = "" Then
            TextBox4.BorderColor = Drawing.Color.Red
        Else
            TextBox4.BorderColor = Drawing.Color.Black
        End If

        If TextBox5.Text = "" Then
            TextBox5.BorderColor = Drawing.Color.Red
        Else
            TextBox5.BorderColor = Drawing.Color.Black
        End If
        If TextBox6.Text = "" Then
            TextBox6.BorderColor = Drawing.Color.Red
        Else
            TextBox6.BorderColor = Drawing.Color.Black
        End If
        If CheckBox2.Checked = False Then
            CheckBox2.ForeColor = Drawing.Color.Red
            CheckBox2.Focus()
            Label2.Visible = True
            Exit Sub
        Else
            CheckBox2.ForeColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        If CheckBox1.Checked = False Then
            CheckBox1.ForeColor = Drawing.Color.Red
            CheckBox1.Focus()
            Label2.Visible = True
            Exit Sub
        Else
            CheckBox1.ForeColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        If emailaddresscheck(TextBox3.Text) = False Then
            TextBox3.Text = ""
            TextBox3.BorderColor = Drawing.Color.Red
            Exit Sub
        Else
            TextBox3.BorderColor = Drawing.Color.Black
        End If

        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Or TextBox6.Text = "" Then
            Label2.Visible = True
            Exit Sub
        Else
            Label2.Visible = False
        End If

        ' Verify Cell number

        If IsNumeric(TextBox2.Text) = False Then
            TextBox2.BorderColor = Drawing.Color.Red
            TextBox2.Text = ""
            Label2.Visible = True
            TextBox2.Focus()
            Exit Sub
        Else
            TextBox2.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If


        ' verify introducer

        Conn.Open()
        Dim Cmd10 As New SqlCommand("select acno,status,email from client where status!='Pending' or status!='Blocked'and acno='" & TextBox6.Text & "' ", Conn)
        Dim DataReader10 As SqlDataReader = Cmd10.ExecuteReader()
        If DataReader10.HasRows.ToString = False Then
            TextBox6.BorderColor = Drawing.Color.Red
            TextBox6.Focus()
            Label2.Visible = True
            Exit Sub
        Else
            TextBox6.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        Conn.Close()

        ' Auto Generated AccNo

        Conn.Open()
        Dim Cmd1 As New SqlCommand("select max(acno) from client", Conn)
        Dim DataReader1 As SqlDataReader = Cmd1.ExecuteReader()
        If DataReader1.HasRows.ToString = True Then
            DataReader1.Read()
            num = IIf(IsDBNull(DataReader1(0)), 1000620, DataReader1(0)) + 1
        Else
            num = 1000621
        End If
        Conn.Close()

        ' Insert record
        If FileUpload1.PostedFile IsNot Nothing Then

            Dim FileName As String = Path.GetFileName(FileUpload1.PostedFile.FileName)

            'Save files to disk

            FileUpload1.SaveAs(Server.MapPath("Photos/" & FileName))
            Conn.Open()
            Dim cmd2 As New SqlCommand("insert into client(acno,name,occupation,cellnum,email,address,actype,intracno,status,pname,purl) values('" & num & "','" & TextBox1.Text & "','" & TextBox5.Text & "','" & Val(TextBox2.Text) & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & DropDownList2.Text & "','" & TextBox6.Text & "','Pending',@FileName, @FilePath)", Conn)
            cmd2.Parameters.AddWithValue("@FileName", FileName)
            cmd2.Parameters.AddWithValue("@FilePath", "Photos/" & FileName)
            Dim res As SqlDataReader = cmd2.ExecuteReader()
            Conn.Close()
            'TextBox1.Text = ""
            'TextBox2.Text = ""
            'TextBox3.Text = ""
            'TextBox4.Text = ""
            'TextBox5.Text = ""
            'TextBox6.Text = ""
            'DropDownList2.ClearSelection()
            'TextBox1.Focus()
            'TextBox1.BorderColor = Drawing.Color.Black
            'TextBox2.BorderColor = Drawing.Color.Black
            'TextBox3.BorderColor = Drawing.Color.Black
            'TextBox4.BorderColor = Drawing.Color.Black
            'TextBox5.BorderColor = Drawing.Color.Black
            'TextBox5.BorderColor = Drawing.Color.Black

            Label2.Visible = False

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

                mail.Body = "This mail was sent as you had requested to open an account with Bank of Swiss, the status of your account will be informed soon..."

                SmtpServer.Send(mail)

                Response.Redirect("Thanks_for_Joining_us.aspx")

            Catch ex As Exception
                Response.Redirect("Thanks_for_Joining_us.aspx")
            End Try
        End If
    End Sub

    Private Function dr(ByVal i As Long) As Object
        Throw New NotImplementedException
    End Function
    Private Function emailaddresscheck(ByVal emailaddress As String) As Boolean
        Dim pattern As String = "^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
        Dim emailAddressMatch As Match = Regex.Match(emailaddress, pattern)
        If emailAddressMatch.Success Then
            emailaddresscheck = True
        Else
            emailaddresscheck = False
        End If
    End Function

End Class