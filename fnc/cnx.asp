<%
Dim ServerPath
Dim base
Dim cn

ServerPath = Server.MapPath (".")

Sub OpenDB
 If Not(IsObject(cn)) Then
  base = "Data Source=" & Server.Mappath("mdb/bedson.mdb") & ";Provider=Microsoft.Jet.OLEDB.4.0;"
  Set cn = Server.CreateObject("ADODB.Connection")
  cn.Open base
 End If
End Sub
%>