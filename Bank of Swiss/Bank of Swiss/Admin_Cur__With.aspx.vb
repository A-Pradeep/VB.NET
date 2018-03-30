Imports System.Data.SqlClient

Public Class Admin_Cur__With
    Inherits System.Web.UI.Page
    Dim due As Long, od As Long, wd As Long
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label18.Visible = False
        TextBox7.Focus()
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
        TextBox3.Text = Now.Date
    End Sub


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox7.Text = ""
        TextBox5.Text = ""
        TextBox7.Focus()
        Label2.Visible = False
        Label18.Visible = False
        Label12.Visible = False
        Label20.Visible = False
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox2.BorderColor = Drawing.Color.Black
        TextBox7.BorderColor = Drawing.Color.Black
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
        If TextBox7.Text = "" Then
            TextBox7.BorderColor = Drawing.Color.Red
            TextBox7.Focus()
            Exit Sub
        Else
            TextBox7.BorderColor = Drawing.Color.Black
        End If
        If IsNumeric(TextBox1.Text) = False Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox1.BorderColor = Drawing.Color.Black
        End If
        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox7.Text = "" Then
            Label2.Visible = True
            Exit Sub
        Else
            Label2.Visible = False
        End If
        Conn.Open()
        Dim Cmd10 As New SqlCommand("select acno,status,actype from client where status!='Pending'and actype='Current Account' and acno='" & TextBox7.Text & "' order by acno ", Conn)
        Dim DataReader10 As SqlDataReader = Cmd10.ExecuteReader()
        If DataReader10.HasRows.ToString = False Then
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox7.Text = ""
            TextBox7.Focus()
            Label2.Visible = True
            Label18.Visible = False
            Label12.Visible = False
            TextBox1.BorderColor = Drawing.Color.Black
            TextBox7.BorderColor = Drawing.Color.Red
            TextBox2.BorderColor = Drawing.Color.Black
            Exit Sub
        Else
        End If
        Conn.Close()
        Conn.Open()
        Dim cmd2 As New SqlCommand("select sum(balance),sum(dues) from currentac where acno='" & TextBox7.Text & "' group by acno ", Conn)
            Dim res2 As SqlDataReader = cmd2.ExecuteReader()
            If res2.HasRows = True Then
                res2.Read()
                ' balance b4 withdraw
                TextBox4.Text = res2(0).ToString
                ' due b4 withdraw
                TextBox6.Text = res2(1).ToString
                'Total dues=withdraw amt + previous dues
            due = (Val(TextBox6.Text) + Val(TextBox1.Text))
            ' if dues is less then normel transaction
                If Val(TextBox4.Text) > due Then
                ' balance = t4-due
                    TextBox5.Text = Val(TextBox4.Text) - due
                    Conn.Close()
                    Conn.Open()

                Dim cmd3 As New SqlCommand("update currentac set deposit='0.00',withdraw='" & due & "',date='" & TextBox3.Text & "',balance='" & TextBox5.Text & "' ,particulars='" & TextBox2.Text & "' where acno='" & TextBox7.Text & "'", Conn)
                    Dim res3 As SqlDataReader = cmd3.ExecuteReader()
                    Conn.Close()
                    Conn.Open()
                Dim cmd5 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox7.Text & "','0.00','" & CStr(TextBox1.Text) & "','" & TextBox2.Text & "','" & TextBox3.Text & "')", Conn)
                    Dim res5 As SqlDataReader = cmd5.ExecuteReader()
                    Label12.Visible = True
                Conn.Close()
                'TextBox1.Text = ""
                'TextBox2.Text = ""
                'TextBox7.Text = ""
                'TextBox5.Text = ""
                'TextBox7.Focus()
                Label2.Visible = False
                Label18.Visible = False
                Label20.Visible = False
                TextBox1.BorderColor = Drawing.Color.Black
                TextBox2.BorderColor = Drawing.Color.Black
                TextBox7.BorderColor = Drawing.Color.Black
                Exit Sub
            Else
                ' if due is more and opts for over draw
                If CheckBox1.Checked = True Then
                    od = due - Val(TextBox4.Text) ' Overdraw = due - balance
                    TextBox5.Text = 0.0
                    wd = due 'Total Withdraw amount
                    Label19.Text = Label19.Text + CStr(od)
                    due = due + 500 ' Inclusive of tax amount
                    Conn.Close()
                    Conn.Open()

                    Dim cmd6 As New SqlCommand("update currentac set deposit='0.00',withdraw='" & wd & "',date='" & TextBox3.Text & "',balance='" & TextBox5.Text & "' ,particulars='" & TextBox2.Text & "',overdraw='" & od & "',dues='" & due & "' where acno='" & TextBox7.Text & "'", Conn)
                    Dim res6 As SqlDataReader = cmd6.ExecuteReader()
                    Conn.Close()
                    Conn.Open()
                    Dim cmd7 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox7.Text & "','0.00','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "')", Conn)
                    Dim res7 As SqlDataReader = cmd7.ExecuteReader()
                    Label12.Visible = True
                    Conn.Close()
                    'TextBox1.Text = ""
                    'TextBox2.Text = ""
                    'TextBox7.Text = ""
                    'TextBox5.Text = ""
                    TextBox7.Focus()
                    Label2.Visible = False
                    Label18.Visible = False
                    Label20.Visible = False
                    TextBox1.BorderColor = Drawing.Color.Black
                    TextBox2.BorderColor = Drawing.Color.Black
                    TextBox7.BorderColor = Drawing.Color.Black
                    Exit Sub
                Else
                    Label18.Visible = True
                    TextBox1.Text = ""
                    TextBox2.Text = ""
                    TextBox7.Text = ""
                    TextBox5.Text = ""
                    TextBox1.Focus()
                    Label2.Visible = False
                    Label12.Visible = False
                    Label20.Visible = False
                    TextBox1.BorderColor = Drawing.Color.Red
                    TextBox2.BorderColor = Drawing.Color.Black
                    TextBox7.BorderColor = Drawing.Color.Black
                    Exit Sub
                End If
            End If
        Else
            ' for first transaction with intial due amounts =0.00 and intial overdraw=0.00
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox7.Text = ""
            TextBox5.Text = ""
            TextBox7.Focus()
            Label2.Visible = False
            Label18.Visible = False
            Label12.Visible = False
            TextBox1.BorderColor = Drawing.Color.Black
            TextBox2.BorderColor = Drawing.Color.Black
            TextBox7.BorderColor = Drawing.Color.Black
            Label20.Visible = True
            Exit Sub
        End If
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class