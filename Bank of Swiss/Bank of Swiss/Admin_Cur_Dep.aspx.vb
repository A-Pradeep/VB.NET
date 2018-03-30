Imports System.Data.SqlClient
Public Class Admin_Cur_Dep
    Inherits System.Web.UI.Page
    Dim due As Long
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox7.Focus()
        TextBox3.Text = Now.Date
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox7.Text = ""
        TextBox7.Focus()
        Label2.Visible = False
        Label12.Visible = False
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox2.BorderColor = Drawing.Color.Black
        TextBox7.BorderColor = Drawing.Color.Black

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        If TextBox2.Text = "" Then
            TextBox2.BorderColor = Drawing.Color.Red
        Else
            TextBox2.BorderColor = Drawing.Color.Black
        End If
        If TextBox1.Text = "" Then
            TextBox1.BorderColor = Drawing.Color.Red
        Else
            TextBox1.BorderColor = Drawing.Color.Black
        End If
        If IsNumeric(TextBox1.Text) = False Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Label12.Visible = True
        Else
            TextBox1.BorderColor = Drawing.Color.Black
            Label12.Visible = False
        End If
        If TextBox1.Text = "" Or TextBox2.Text = "" Then
            Label2.Visible = True
            Exit Sub
        Else
            Label2.Visible = False
        End If
        Conn.Open()
        Dim Cmd10 As New SqlCommand("select acno,status,actype from client where status!='Pending'  and acno='" & TextBox7.Text & "' and actype='Current Account'", Conn)
        Dim DataReader10 As SqlDataReader = Cmd10.ExecuteReader()
        If DataReader10.HasRows.ToString = False Then
            TextBox7.BorderColor = Drawing.Color.Red
            TextBox7.Focus()
            Label2.Visible = True
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox7.Text = ""
            Label12.Visible = False
            TextBox1.BorderColor = Drawing.Color.Black
            TextBox2.BorderColor = Drawing.Color.Black
            Exit Sub
        Else
            TextBox6.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        Conn.Close()

        Conn.Open()
        Dim cmd2 As New SqlCommand("select sum(balance), sum(dues) from currentac where acno='" & TextBox7.Text & "'  group by acno", Conn)
        Dim res2 As SqlDataReader = cmd2.ExecuteReader()
        If res2.HasRows = True Then
            res2.Read()

            TextBox4.Text = res2(0).ToString              ' balance b4 deposit
            TextBox6.Text = res2(1).ToString              ' Due amt b4 deposit
            Label18.Text = TextBox6.Text
            'Total balance
            TextBox5.Text = Val(TextBox4.Text) + Val(TextBox1.Text) 'Total Deposit

            If Val(TextBox5.Text) >= Val(TextBox6.Text) Then  ' to cut dues
                TextBox5.Text = Val(TextBox5.Text) - Val(TextBox6.Text)
                Label18.Text = Label18.Text + TextBox6.Text
            End If
            Conn.Close()
            Conn.Open()

            Dim cmd3 As New SqlCommand("update currentac set deposit='" & Val(TextBox1.Text) & "',withdraw='000.00',date='" & TextBox3.Text & "',balance='" & Val(TextBox5.Text) & "' ,particulars='" & TextBox2.Text & "',dues='" & Val(TextBox6.Text) & "' where acno='" & TextBox7.Text & "'", Conn)
            Dim res3 As SqlDataReader = cmd3.ExecuteReader()
            Conn.Close()
            Conn.Open()
            Dim cmd5 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox7.Text & "','" & Val(TextBox1.Text) & "','000.00','" & TextBox2.Text & "','" & TextBox3.Text & "')", Conn)
            Dim res5 As SqlDataReader = cmd5.ExecuteReader()
            Label12.Visible = True
            Conn.Close()
            'TextBox1.Text = ""
            'TextBox2.Text = ""
            'TextBox7.Text = ""
            'TextBox5.Text = ""
            'TextBox7.Focus()
            'Label2.Visible = False
            'TextBox1.BorderColor = Drawing.Color.Black
            'TextBox2.BorderColor = Drawing.Color.Black
            'TextBox7.BorderColor = Drawing.Color.Black

            Exit Sub
        Else
            Conn.Close()
            Conn.Open()

            Dim cmd4 As New SqlCommand("insert into currentac(acno,deposit,withdraw,date,balance,particulars,overdraw,dues,status) values('" & TextBox7.Text & "', '" & Val(TextBox1.Text) & "','000.00','" & TextBox3.Text & "','" & Val(TextBox1.Text) & "','" & TextBox2.Text & "' ,'0.00','0.00','Active')", Conn)

            Dim res4 As SqlDataReader = cmd4.ExecuteReader()
            Conn.Close()
            Conn.Open()
            Dim cmd5 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox7.Text & "','" & Val(TextBox1.Text) & "','000.00','" & TextBox2.Text & "','" & TextBox3.Text & "')", Conn)
            Dim res5 As SqlDataReader = cmd5.ExecuteReader()
            Label12.Visible = True
            Conn.Close()
            'TextBox1.Text = ""
            'TextBox2.Text = ""
            'TextBox7.Text = ""
            'TextBox5.Text = ""
            'TextBox7.Focus()
            'Label2.Visible = False
            'TextBox1.BorderColor = Drawing.Color.Black
            'TextBox2.BorderColor = Drawing.Color.Black
            'TextBox7.BorderColor = Drawing.Color.Black

            Exit Sub
        End If
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class