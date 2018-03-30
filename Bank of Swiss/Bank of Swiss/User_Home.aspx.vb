Imports System.Data.SqlClient
Public Class User_Home
    Inherits System.Web.UI.Page
    Public Conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\bos.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("uun") = "" Then
            Response.Redirect("Login.aspx")
        End If
        Label4.Text = ""
        Label4.Visible = False
        Label2.Text = Application("uun")
        Conn.Open()
        Dim cmd1 As New SqlCommand("select actype from client where acno='" & Label2.Text & "' ", Conn)
        Dim dr1 As SqlDataReader = cmd1.ExecuteReader()
        If dr1.HasRows = True Then
            dr1.Read()
            Label4.Text = dr1(0).ToString
            Conn.Close()
            If Label4.Text = "Saving Bank (SB)" Then
                Menu1.Items(0).Enabled = True
                Menu1.Items(1).Enabled = False
                Menu1.Items(2).Enabled = False
                Menu1.Items(4).Enabled = False

            ElseIf Label4.Text = "Current Account" Then
                Menu1.Items(4).Enabled = True
                Menu1.Items(1).Enabled = False
                Menu1.Items(2).Enabled = False
                Menu1.Items(0).Enabled = False

            ElseIf Label4.Text = "Recurring Deposit (RD)" Then
                Menu1.Items(2).Enabled = True
                Menu1.Items(1).Enabled = False
                Menu1.Items(4).Enabled = False
                Menu1.Items(0).Enabled = False

            ElseIf Label4.Text = "Fixed Deposit (FD)" Then
                Menu1.Items(1).Enabled = True
                Menu1.Items(2).Enabled = False
                Menu1.Items(4).Enabled = False
                Menu1.Items(0).Enabled = False
            End If
        Else
            Menu1.Items(1).Enabled = False
            Menu1.Items(2).Enabled = False
            Menu1.Items(4).Enabled = False
            Menu1.Items(0).Enabled = False
            Menu1.Items(3).Enabled = False
            Label4.Visible = True
            Label4.Text = "Access Denied...!"
        End If
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Application("uun") = ""
        Response.Redirect("Home.aspx")
    End Sub
End Class