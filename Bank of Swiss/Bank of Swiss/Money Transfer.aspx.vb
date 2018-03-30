Imports System.Data.SqlClient
Public Class Money_Transfer
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("uun") = "" Then
            Response.Redirect("Login.aspx")
        End If
        Label16.Text = Application("uun")

        Label14.Visible = False
        Label17.Visible = False
        TextBox6.Text = Now.Date
        CheckBox1.BorderColor = Drawing.Color.Black
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        Label2.Visible = False

        TextBox1.BorderColor = Drawing.Color.Black
        TextBox2.BorderColor = Drawing.Color.Black
        TextBox3.BorderColor = Drawing.Color.Black
        CheckBox1.Checked = False
    End Sub




    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If TextBox2.Text = "" Then
            TextBox2.BorderColor = Drawing.Color.Red
            TextBox2.Focus()
            Exit Sub
        Else
            TextBox2.BorderColor = Drawing.Color.Black
        End If
        If IsNumeric(TextBox2.Text) = False Then
            TextBox2.BorderColor = Drawing.Color.Red
            TextBox2.Focus()
            Exit Sub
        Else
            TextBox2.BorderColor = Drawing.Color.Black
        End If
        If TextBox1.Text = "" Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox1.BorderColor = Drawing.Color.Black
        End If

        If TextBox3.Text = "" Then
            TextBox3.BorderColor = Drawing.Color.Red
            TextBox3.Focus()
            Exit Sub
        Else
            TextBox3.BorderColor = Drawing.Color.Black
        End If

        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Then
            Label2.Visible = True
            Exit Sub
        Else
            Label2.Visible = False
        End If
        If CheckBox1.Checked = False Then
            CheckBox1.BorderColor = Drawing.Color.Red
            CheckBox1.Focus()
            Label2.Visible = True
            Exit Sub
        Else
            Label2.Visible = False
            CheckBox1.BorderColor = Drawing.Color.Black
        End If

        Conn.Open()
        Dim cmd2 As New SqlCommand("select sum(balance) from sbac where acno='" & Label16.Text & "' group by acno ", Conn)
        Dim res2 As SqlDataReader = cmd2.ExecuteReader()
        If res2.HasRows = True Then
            res2.Read()
            ' balance b4 deposit
            TextBox4.Text = res2(0).ToString
            'Total balance
            TextBox5.Text = Val(TextBox4.Text) - Val(TextBox2.Text)
            If Val(TextBox5.Text) < 1000 Then
                Label14.Visible = True
                TextBox5.Text = ""
                Exit Sub
            End If

            Conn.Close()
            Conn.Open()

            Dim cmd3 As New SqlCommand("update sbac set deposit='0.00',withdraw='" & TextBox2.Text & "',trdate='" & TextBox6.Text & "',balance='" & TextBox5.Text & "' ,particular='" & TextBox3.Text & "'", Conn)
            Dim res3 As SqlDataReader = cmd3.ExecuteReader()
            Conn.Close()
            Conn.Open()
            Dim cmd5 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & Label16.Text & "','0.00','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox6.Text & "')", Conn)
            Dim res5 As SqlDataReader = cmd5.ExecuteReader()
            Conn.Close()
            Response.Redirect("Money_Transfer_Success.aspx")
            Exit Sub
        Else
            Label17.Visible = True
        End If
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("uun") = ""
        Response.Redirect("Home.aspx")
    End Sub
End Class