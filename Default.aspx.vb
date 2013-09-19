
Partial Class Autocompletar_Default
    Inherits System.Web.UI.Page
    Public listFilter As String = ""
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        listFilter = ""
        listFilter = GetPaises()
    End Sub
    Function GetPaises() As String
        Dim strPaises() As String = {"México", "España", "Brazil", "Italia", "Estados Unidos", "Canada", "Peru", "Argentina", "Alemania", "India", "Uruguay", "Chile"}
        Dim output As New StringBuilder()
        output.Append("[")
        For i = 0 To strPaises.Length - 1
            output.Append("""" + strPaises(i) + """")
            If i <> (strPaises.Length - 1) Then
                output.Append(",")
            End If
        Next
        output.Append("];")
        Return output.ToString()
    End Function
End Class
