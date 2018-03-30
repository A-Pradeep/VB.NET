Imports System.Data.SqlClient
Public Class Admin_SB_Withdraw
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label18.Visible = False
        TextBox3.Text = Now.Date
        TextBox6.Focus()
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub

    
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox6.Text = ""
        TextBox5.Text = ""
        TextBox6.Focus()
        Label2.Visible = False
        Label18.Visible = False
        Label12.Visible = False
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox6.BorderColor = Drawing.Color.Black
        TextBox2.BorderColor = Drawing.Color.Black
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        If TextBox2.Text = "" Then
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
        If IsNumeric(TextBox1.Text) = False Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Text = ""
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox1.BorderColor = Drawing.Color.Black
        End If
        If TextBox6.Text = "" Then
            TextBox6.BorderColor = Drawing.Color.Red
            TextBox6.Focus()
            Exit Sub
        Else
            TextBox6.BorderColor = Drawing.Color.Black
        End If
        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox6.Text = "" Then
            Label2.Visible = True
            Exit Sub
        Else
            Label2.Visible = False
        End If
        If IsNumeric(TextBox1.Text) = False Then
            TextBox1.BorderColor = Drawing.Color.Red
            Label2.Visible = True
            TextBox1.Text = ""
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox1.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        Conn.Open()
        Dim Cmd10 As New SqlCommand("select acno,status,actype from client where status!='Pending'and actype='Saving Bank (SB)' and acno='" & TextBox6.Text & "'", Conn)
        Dim DataReader10 As SqlDataReader = Cmd10.ExecuteReader()
        If DataReader10.HasRows.ToString = False Then
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox6.Text = ""
            TextBox6.Focus()
            Label2.Visible = True
            Label18.Visible = False
            Label12.Visible = False
            TextBox1.BorderColor = Drawing.Color.Black
            TextBox6.BorderColor = Drawing.Color.Red
            TextBox2.BorderColor = Drawing.Color.Black
            Exit Sub
        Else
        End If
        Conn.Close()


        Conn.Open()
        Dim cmd2 As New SqlCommand("select sum(balance) from sbac where acno='" & TextBox6.Text & "' group by acno", Conn)
        Dim res2 As SqlDataReader = cmd2.ExecuteReader()
        If res2.HasRows = True Then
            res2.Read()
            ' balance b4 deposit
            TextBox4.Text = res2(0).ToString
            'Total balance
            TextBox5.Text = Val(TextBox4.Text) - Val(TextBox1.Text)
            If Val(TextBox5.Text) < 1000 Then
                Label18.Visible = True
                TextBox5.Text = ""
                TextBox1.Text = ""
                TextBox2.Text = ""
                TextBox6.Text = ""
                TextBox1.Focus()
                Label2.Visible = False
                Label12.Visible = False
                TextBox1.BorderColor = Drawing.Color.Red
                TextBox6.BorderColor = Drawing.Color.Black
                TextBox2.BorderColor = Drawing.Color.Black

                Exit Sub
            End If

            Conn.Close()
            Conn.Open()

            Dim cmd3 As New SqlCommand("update sbac set deposit='0.00',withdraw='" & CStr(TextBox1.Text) & "',trdate='" & TextBox3.Text & "',balance='" & TextBox5.Text & "' ,particular='" & TextBox2.Text & "' where acno='" & TextBox6.Text & "' ", Conn)
            Dim res3 As SqlDataReader = cmd3.ExecuteReader()
            Conn.Close()
            Conn.Open()
            Dim cmd5 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox6.Text & "','0.00','" & CStr(TextBox1.Text) & "','" & TextBox2.Text & "','" & TextBox3.Text & "')", Conn)
            Dim res5 As SqlDataReader = cmd5.ExecuteReader()
            Label12.Visible = True
            Conn.Close()
            'TextBox1.Text = ""
            'TextBox2.Text = ""
            'TextBox6.Text = ""
            'TextBox5.Text = ""
            'TextBox6.Focus()
            Label2.Visible = False
            Label18.Visible = False
            'TextBox1.BorderColor = Drawing.Color.Black
            'TextBox6.BorderColor = Drawing.Color.Black
            'TextBox2.BorderColor = Drawing.Color.Black

            Exit Sub
        Else ' First Transaction
            Conn.Close()
            Conn.Open()

            Dim cmd4 As New SqlCommand("insert into sbac(acno,deposit,withdraw,trdate,balance,particular,status) values('" & TextBox6.Text & "', '00.00','" & CStr(TextBox1.Text) & "','" & TextBox3.Text & "','" & CStr(TextBox1.Text) & "' ,'" & TextBox2.Text & "','Active')", Conn)
            Dim res4 As SqlDataReader = cmd4.ExecuteReader()
            Conn.Close()
            Conn.Open()
            Dim cmd5 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox6.Text & "','0.00','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "')", Conn)
            Dim res5 As SqlDataReader = cmd5.ExecuteReader()
            Label12.Visible = True
            Conn.Close()
            'TextBox1.Text = ""
            'TextBox2.Text = ""
            'TextBox6.Text = ""
            'TextBox5.Text = ""
            'TextBox6.Focus()
            Label2.Visible = False
            Label18.Visible = False
            'TextBox1.BorderColor = Drawing.Color.Black
            'TextBox6.BorderColor = Drawing.Color.Black
            'TextBox2.BorderColor = Drawing.Color.Black
            Exit Sub
        End If

    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class