Imports System.Data.SqlClient
Public Class Admin_FD_Dep
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox3.Text = Now.Date
        TextBox7.Focus()
        Label21.Visible = False
        Panel5.Visible = True
        Panel8.Visible = False
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
        TextBox7.Focus()
        Label2.Visible = False
        Label12.Visible = False
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox2.BorderColor = Drawing.Color.Black
        TextBox7.BorderColor = Drawing.Color.Black
        TextBox8.BorderColor = Drawing.Color.Black
        TextBox9.BorderColor = Drawing.Color.Black
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
        If TextBox8.Text = "" Then
            TextBox8.BorderColor = Drawing.Color.Red
            TextBox8.Focus()
            Exit Sub

        Else
            TextBox8.BorderColor = Drawing.Color.Black
        End If

        If TextBox9.Text = "" Then
            TextBox9.BorderColor = Drawing.Color.Red
            TextBox9.Focus()
            Exit Sub
        Else
            TextBox9.BorderColor = Drawing.Color.Black
        End If
        If IsNumeric(TextBox1.Text) = False Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Text = ""
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox1.BorderColor = Drawing.Color.Black
        End If

        If IsNumeric(TextBox8.Text) = False Then
            TextBox8.BorderColor = Drawing.Color.Red
            TextBox8.Text = ""
            TextBox8.Focus()
            Exit Sub
        Else
            TextBox8.BorderColor = Drawing.Color.Black
        End If
        If IsNumeric(TextBox9.Text) = False Then
            TextBox9.BorderColor = Drawing.Color.Red
            TextBox9.Text = ""
            TextBox9.Focus()
            Exit Sub
        Else
            TextBox9.BorderColor = Drawing.Color.Black
        End If


        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox7.Text = "" Or TextBox8.Text = "" Or TextBox9.Text = "" Then
            Label2.Visible = True
            Exit Sub
        Else
            Label2.Visible = False
        End If
        If CheckBox1.Checked = False Then
            CheckBox1.BorderColor = Drawing.Color.Red
            Label2.Visible = True
            Exit Sub
        Else
            CheckBox1.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        If IsNumeric(TextBox1.Text) = False Then
            TextBox1.BorderColor = Drawing.Color.Red
            Label2.Visible = True
        Else
            TextBox1.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If

        If IsNumeric(TextBox8.Text) = False Then
            TextBox8.BorderColor = Drawing.Color.Red
            Label2.Visible = True
        Else
            TextBox8.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        If IsNumeric(TextBox9.Text) = False Then
            TextBox9.BorderColor = Drawing.Color.Red
            Label2.Visible = True
        Else
            TextBox9.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If

        Conn.Open()
        Dim Cmd10 As New SqlCommand("select acno,status,actype from client where status!='Pending'  and acno='" & TextBox7.Text & "' and actype='Fixed Deposit (FD)' ", Conn)
        Dim DataReader10 As SqlDataReader = Cmd10.ExecuteReader()
        If DataReader10.HasRows.ToString = False Then
            TextBox7.BorderColor = Drawing.Color.Red
            TextBox7.Focus()
            Label2.Visible = True
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox7.Text = ""
            TextBox8.Text = ""
            TextBox9.Text = ""
            Label12.Visible = False
            TextBox1.BorderColor = Drawing.Color.Black
            TextBox2.BorderColor = Drawing.Color.Black
            TextBox8.BorderColor = Drawing.Color.Black
            TextBox9.BorderColor = Drawing.Color.Black
            Exit Sub
        Else
            TextBox7.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        Conn.Close()
        Dim n As Integer
        Dim rt As Double, t As Double, ma As Double, m_amt, a As Double, num As Double, n_num As Double
        n = Val(TextBox1.Text)
        TextBox10.Text = DateAdd("m", n, TextBox3.Text) ' maturity date
        rt = Val(TextBox9.Text) / 100        ' rate of int  
        t = Val(TextBox1.Text) / 12          ' duration in year
        a = t * 12
        num = rt / n
        n_num = num + 1
        ma = Math.Pow(n_num, a)
        m_amt = Val(TextBox8.Text) * ma      ' maturity amount
        Label28.Text = Format(m_amt - Val(TextBox8.Text), "0.00")
        Label29.Text = TextBox10.Text
        Label25.Text = Format(m_amt, "0.00")
        Label23.Text = TextBox8.Text
        Conn.Open()
        Dim cmd2 As New SqlCommand("select *from fdac where acno='" & TextBox7.Text & "' ", Conn)
        Dim res2 As SqlDataReader = cmd2.ExecuteReader()
        If res2.HasRows = True Then
            ' One account can have only 1 

            Label21.Visible = True
            Panel5.Visible = False
            Panel8.Visible = False

            Exit Sub
        Else
            Label21.Visible = False
            Panel5.Visible = True
            Conn.Close()
            Conn.Open()
            Dim cmd1 As New SqlCommand("insert into fdac(acno,d_amt,duration,d_date,rate,m_amt,m_date,nominee,status) values('" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox1.Text & "','" & TextBox3.Text & "','" & TextBox9.Text & "','" & m_amt & "','" & TextBox10.Text & "','','Approved')", Conn)
            Dim res1 As SqlDataReader = cmd1.ExecuteReader()
            Conn.Close()
            Conn.Open()
            Dim cmd3 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox7.Text & "','" & TextBox8.Text & "','0.00','" & TextBox2.Text & "','" & TextBox3.Text & "')", Conn)
            Dim res3 As SqlDataReader = cmd3.ExecuteReader()
            Conn.Close()
            Label21.Visible = False
            Panel5.Visible = False
            Panel8.Visible = True
        End If
    End Sub

 
    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class