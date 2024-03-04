
Imports System.Data
Imports System.Data.SqlClient
Imports System.Diagnostics.Eventing

Partial Class _Default
    Inherits Page

    ' Creates a new SqlConnection object via SqlClient '
    Dim connect As New SqlConnection("Data Source=SFS-OPS-PRGMR-A;Initial Catalog=ReadingLogDB;User ID=sa;Password=Late4The$")
    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click

        Dim logId As Integer = LogIdTextBox.Text
        Dim readerId As Integer = ReaderIdTextBox.Text
        Dim todaysDate As DateTime = DateTextBox.Text
        Dim title As String = TitleTextBox.Text
        Dim author As String = AuthorTextBox.Text
        Dim time As Integer = TimeDropDownList.SelectedValue
        Dim pages As Integer = PagesTextBox.Text
        Dim comments As String = CommentsTextBox.Text

        connect.Open()

        'Executing the SqlCommand'
        Dim command As New SqlCommand("INSERT INTO [Log] (LogID, Date, Title, Author, [Time], Pages, Comments, ReaderID) VALUES ('" & logId & "', '" & todaysDate & "', '" & title & "', '" & author & "', '" & time & "', '" & pages & "', '" & comments & "', '" & readerId & "')", connect)
        command.ExecuteNonQuery()

        MsgBox("Record inserted.", MsgBoxStyle.Information, "Message")

        connect.Close()

        'Method prints reading log on button click'
        ListReadingLog()

    End Sub
    Protected Sub ListReadingLog()

        Dim command As New SqlCommand("SELECT * FROM [Log]", connect)
        Dim dataAdapter As New SqlDataAdapter(command)
        Dim dataTable As New DataTable

        dataAdapter.Fill(dataTable)

        ReadingLogGridView.DataSource = dataTable
        ReadingLogGridView.DataBind()

    End Sub

    Protected Sub UpdateButton_Click(sender As Object, e As EventArgs) Handles UpdateButton.Click
        Dim logId As Integer = LogIdTextBox.Text
        Dim readerId As Integer = ReaderIdTextBox.Text
        Dim todaysDate As DateTime = DateTextBox.Text
        Dim title As String = TitleTextBox.Text
        Dim author As String = AuthorTextBox.Text
        Dim time As Integer = TimeDropDownList.SelectedValue
        Dim pages As Integer = PagesTextBox.Text
        Dim comments As String = CommentsTextBox.Text

        connect.Open()

        'Executing the SqlCommand'
        Dim command As New SqlCommand("UPDATE [Log] SET [Date] = '" & todaysDate & "', Title = '" & title & "', Author = '" & author & "', [Time] = '" & time & "', Pages = '" & pages & "', Comments = '" & comments & "', ReaderID = '" & readerId & "' WHERE LogId = '" & logId & "'", connect)
        command.ExecuteNonQuery()

        MsgBox("Record updated.", MsgBoxStyle.Information, "Message")

        connect.Close()

        'Method prints updated reading log on button click'
        ListReadingLog()
    End Sub
End Class