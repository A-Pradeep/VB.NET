Imports System.Data.SqlClient
Public Class faq1
    Inherits System.Web.UI.Page
    Dim vNoVar As Double
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Dim n As Long
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label6.Text = Now.Date
        TextBox2.Visible = False
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox1.BorderColor = Drawing.Color.Black
        Label3.Visible = False

        TextBox1.Focus()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        If TextBox1.Text = "" Then
            TextBox1.BorderColor = Drawing.Color.Red
            TextBox1.Focus()
            Label3.Visible = True
        Else
            TextBox1.BorderColor = Drawing.Color.Black
            Label3.Visible = False
            Conn.Open()
            Dim Cmd1 As New SqlCommand("select max(qno) from faq", Conn)
            Dim DataReader1 As SqlDataReader = Cmd1.ExecuteReader()
            If DataReader1.HasRows.ToString = True Then
                DataReader1.Read()
                vNoVar = IIf(IsDBNull(DataReader1(0)), 1000, DataReader1(0)) + 1
            Else
                vNoVar = 1001
            End If
            Conn.Close()
            TextBox2.Text = vNoVar
            Conn.Open()
            Dim cmd2 As New SqlCommand("insert into faq(qno,question,answer,date) values('" & TextBox2.Text & "','" & TextBox1.Text & "','','" & Label6.Text & "')", Conn)
            Dim res As SqlDataReader = cmd2.ExecuteReader()
            Conn.Close()
            Response.Redirect("faq_submit.aspx")
            TextBox1.Text = ""
        End If

    End Sub
End Class