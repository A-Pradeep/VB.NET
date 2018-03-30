Imports System.Data.SqlClient
Public Class Admin_RD_Dep
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("aun") <> "admin" Then
            Response.Redirect("Admin_Login.aspx")
        End If
        TextBox3.Text = Now.Date
        TextBox1.Enabled = True
        TextBox8.Enabled = True
        TextBox9.Enabled = True
        CheckBox1.Checked = True
        Panel8.Visible = False
        Panel5.Visible = True

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        TextBox1.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
        TextBox7.Focus()
        Label2.Visible = False
        Label30.Visible = False
        Label12.Visible = False
        TextBox1.BorderColor = Drawing.Color.Black
        TextBox7.BorderColor = Drawing.Color.Black
        TextBox8.BorderColor = Drawing.Color.Black
        TextBox9.BorderColor = Drawing.Color.Black
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
      
        If TextBox1.Text = "" Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox1.BorderColor = Drawing.Color.Black
        End If
        If TextBox7.Text = "" Then
            TextBox7.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox7.BorderColor = Drawing.Color.Black
        End If
        If TextBox8.Text = "" Then
            TextBox8.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox8.BorderColor = Drawing.Color.Black
        End If

        If TextBox9.Text = "" Then
            TextBox9.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Exit Sub
        Else
            TextBox9.BorderColor = Drawing.Color.Black
        End If
        If IsNumeric(TextBox1.Text) = False Then
            TextBox1.BorderColor = Drawing.Color.Red
            Exit Sub
        Else
            TextBox1.BorderColor = Drawing.Color.Black
        End If

        If IsNumeric(TextBox8.Text) = False Then
            TextBox8.BorderColor = Drawing.Color.Red
            Exit Sub
        Else
            TextBox8.BorderColor = Drawing.Color.Black
        End If
        If IsNumeric(TextBox9.Text) = False Then
            TextBox9.BorderColor = Drawing.Color.Red
            Exit Sub
        Else
            TextBox9.BorderColor = Drawing.Color.Black
        End If
        If TextBox1.Text = "" Or TextBox7.Text = "" Or TextBox8.Text = "" Or TextBox9.Text = "" Then
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


        Conn.Open()
        Dim Cmd10 As New SqlCommand("select acno,status,actype from client where status!='Pending'  and acno='" & TextBox7.Text & "' and actype='Recurring Deposit (RD)' ", Conn)
        Dim DataReader10 As SqlDataReader = Cmd10.ExecuteReader()
        If DataReader10.HasRows.ToString = False Then
            TextBox7.BorderColor = Drawing.Color.Red
            TextBox7.Focus()
            Label2.Visible = True
            TextBox1.Text = ""

            TextBox7.Text = ""
            TextBox8.Text = ""
            TextBox9.Text = ""
            Label12.Visible = False
            TextBox1.BorderColor = Drawing.Color.Black

            TextBox8.BorderColor = Drawing.Color.Black
            TextBox9.BorderColor = Drawing.Color.Black
            Exit Sub
        Else
            TextBox7.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        Conn.Close()

        ' to verify if user has rdac and to get the payment

        Conn.Open()
        Dim Cmd11 As New SqlCommand("select inst_amt,rate,d_date,duration,m_amt,m_date from rdac where status!='Pending'  and acno='" & TextBox7.Text & "'", Conn)
        Dim DataReader11 As SqlDataReader = Cmd11.ExecuteReader()
        If DataReader11.HasRows.ToString = False Then
            ' Acception of new RD Payment

            Dim n As Integer, inst As Integer
            Dim pa As Double, ty As Double, r As Double, rbyn As Double, ci As Double, tn As Double, ia As Double, x As Double

            ty = Val(TextBox1.Text) / 12                  ' month to year
            r = Val(TextBox9.Text) / 100                  ' rate of intrest   
            n = Val(TextBox1.Text)
            TextBox13.Text = DateAdd("m", n, TextBox3.Text) ' Maturity Date
            Label29.Text = TextBox13.Text
            pa = Val(TextBox8.Text) * n                   ' Total Principle Amount Paied by client
            Label23.Text = Format(pa, "0.00")
            rbyn = r / 12
            tn = 12 * ty
            x = 1 + rbyn
            ci = Math.Pow(tn, x)
            TextBox14.Text = ci
            ia = Val(TextBox8.Text) * ci                 ' Maturity Amount
            Label25.Text = Format(ia, "0.00")
            inst = Val(TextBox1.Text) - 1                 ' Installments remaining
            Label32.Text = inst
            Label28.Text = Val(TextBox8.Text)

            Conn.Close()
            Conn.Open()
            Dim Cmd12 As New SqlCommand("insert into rdac(acno,dep_amt,inst_amt,rate,d_date,duration,m_amt,m_date,status) values('" & TextBox7.Text & "','" & pa & "','" & TextBox8.Text & "','" & TextBox9.Text & "','" & TextBox3.Text & "','" & TextBox1.Text & "','" & ia & "','" & TextBox13.Text & "','Approved')", Conn)
            Dim DataReader12 As SqlDataReader = Cmd12.ExecuteReader()
            Conn.Close()

            Conn.Open()
            Dim Cmd13 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox7.Text & "','" & TextBox8.Text & "','0.00',' RD Installment amount ','" & TextBox3.Text & "')", Conn)
            Dim DataReader13 As SqlDataReader = Cmd13.ExecuteReader()
            Conn.Close()
            Panel5.Visible = False
            Panel8.Visible = True
            Label12.Visible = True
            Label2.Visible = False
            Label30.Visible = False
            Label33.Visible = False
            Exit Sub
        Else
            ' Acception of Monthly payment
            Label12.Visible = False
            Label2.Visible = False
            Label30.Visible = False
            Label33.Visible = True
            Button4.Focus()
            Exit Sub
        End If
        Conn.Close()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        TextBox1.Enabled = False
        TextBox8.Enabled = False
        TextBox9.Enabled = False

        Conn.Open()
        Dim Cmd10 As New SqlCommand("select acno,status,actype from client where status!='Pending'  and acno='" & TextBox7.Text & "' and actype='Recurring Deposit (RD)' ", Conn)
        Dim DataReader10 As SqlDataReader = Cmd10.ExecuteReader()
        If DataReader10.HasRows.ToString = False Then
            TextBox7.BorderColor = Drawing.Color.Red
            TextBox7.Focus()
            Label2.Visible = True
            TextBox1.Text = ""

            TextBox7.Text = ""
            TextBox8.Text = ""
            TextBox9.Text = ""
            Label12.Visible = False
            TextBox1.BorderColor = Drawing.Color.Black

            TextBox8.BorderColor = Drawing.Color.Black
            TextBox9.BorderColor = Drawing.Color.Black
            Exit Sub
        Else
            TextBox7.BorderColor = Drawing.Color.Black
            Label2.Visible = False
        End If
        Conn.Close()

        Conn.Open()
        Dim Cmd12 As New SqlCommand("select inst_amt,rate,d_date,duration,m_amt,m_date,dep_amt from rdac where status!='Pending'  and acno='" & TextBox7.Text & "'", Conn)
        Dim DataReader12 As SqlDataReader = Cmd12.ExecuteReader()
        If DataReader12.HasRows.ToString = True Then
            ' Acception of monthly RD Payment
            DataReader12.Read()
            TextBox8.Text = DataReader12(0).ToString  'inst_amt
            Label28.Text = DataReader12(0).ToString  'inst_amt
            TextBox9.Text = DataReader12(1).ToString  'rate
            TextBox1.Text = DataReader12(3).ToString  'duration
            TextBox1.Text = Val(TextBox1.Text) - 1
            If Val(TextBox1.Text) <= 1 Then
                Panel8.Visible = True
                Panel5.Visible = False
                Label30.Visible = True
                Exit Sub
            Else
                Label30.Visible = False
            End If
            Label32.Text = Val(TextBox1.Text)
            Label25.Text = DataReader12(4).ToString   'maturity amt
            Label29.Text = DataReader12(5).ToString   'maturity date
            TextBox12.Text = DataReader12(5).ToString   'maturity date
            Label23.Text = DataReader12(6).ToString   'principle amt 
            Dim n As Integer
            n = DateDiff("m", TextBox3.Text, TextBox12.Text)
            If n >= 1 Then
                'if date difference b/w maturity date and today is positive
                Conn.Close()
                Conn.Open()
                Dim Cmd13 As New SqlCommand("update rdac set d_date='" & TextBox3.Text & "',duration='" & TextBox1.Text & "' where acno='" & TextBox7.Text & "'", Conn)
                Dim DataReader13 As SqlDataReader = Cmd13.ExecuteReader()

                Conn.Close()

                Conn.Open()
                Dim Cmd14 As New SqlCommand("insert into trans(acno,deposit,withdraw,particular,date) values('" & TextBox7.Text & "','" & TextBox8.Text & "','0.00',' RD Installment amount ','" & TextBox3.Text & "')", Conn)
                Dim DataReader14 As SqlDataReader = Cmd13.ExecuteReader()
                Conn.Close()
                Panel8.Visible = True
                Panel5.Visible = False

                Label12.Visible = True
                Label2.Visible = False
                Label30.Visible = False
                Label33.Visible = False
                Exit Sub
            Else
                'RD has Matured
                Panel8.Visible = True
                Panel5.Visible = False

                Label12.Visible = False
                Label2.Visible = False
                Label30.Visible = True
                Label33.Visible = False
                Exit Sub
            End If
        Else
            Panel8.Visible = False
            Panel5.Visible = True
            'make first payment
            TextBox1.Enabled = True
            TextBox8.Enabled = True
            TextBox9.Enabled = True
            Label12.Visible = False
            Label2.Visible = False
            Label30.Visible = False
            Label33.Visible = True
            Exit Sub
        End If

    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("aun") = ""
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class