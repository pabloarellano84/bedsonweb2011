<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/home_test.css" rel="stylesheet" type="text/css" />
<% Response.Expires = 0 %>
<%
If request("i") = "en" Then
	idioma ="en"
	strSql = "SELECT Top 1 day(Fechadealta) AS Mes, month(Fechadealta) AS Dia, year(Fechadealta) AS Ano, "&_
			 "TituloIN AS Titulo, Id "&_
			 "FROM Notas WHERE TituloIN <> '' ORDER BY Fechadealta DESC"
	txtIdioma = "Change language"
	altImg_en = "English"
	altImg_es = "Spanish"
Else
	idioma = "es"
	strSql = "SELECT Top 1 day(Fechadealta) AS Dia, month(Fechadealta) AS Mes, year(Fechadealta) AS Ano, "&_
			 "TituloES AS Titulo, Id "&_
			 "FROM Notas WHERE TituloES <> '' ORDER BY Fechadealta DESC"
	txtIdioma = "Seleccionar idioma"
	altImg_en = "Ingl&eacute;s"
	altImg_es = "Espa&ntilde;ol"
End If %>
</head>
<body>
<!--#include FILE="fnc/cnx.asp"-->
 <div class="izqFino">
  <div class="noticias">
   <img src="img/btnTitNoticias_<% =idioma %>.png" width="139" height="37" /><%
   OpenDB
   Set rsnotas = Server.CreateObject("ADODB.Recordset")
   rsnotas.open strSql, cn, adOpenKeyset
   If Not rsnotas.EOF Then
	 idNota = rsnotas("Id")
	 If idioma = "en" Then
	  fecNota = rsnotas("Mes") &"/"& rsnotas("Dia") &"/"& rsnotas("Ano")
	 Else
	  fecNota = rsnotas("Dia") &"/"& rsnotas("Mes") &"/"& rsnotas("Ano")
	 End If
	 titNota = rsnotas("Titulo")
	 adress = Server.MapPath (".")
	 adress = Split(adress,"\demo")
	 path = adress(0) %>
     <div class="nota">
	  <div class="copete">
       <div class="fecha"><% =fecNota %></div>
       <div class="titCopete"><a href="nota.asp?id=<% =idNota %>&i=<% =idioma %>"><% =titNota %></a>&nbsp;<a href="nota.asp?id=<% =idNota %>&i=<% =idioma %>"><img src="img/lupa.png" width="17" height="17" alt="+ Info" /></a></div>
      </div>
     </div><%
   End If
   rsnotas.Close %>
  </div>
  <div class="contacto"><a href="http://www.feriazaragoza.es/fima_ganadera.aspx" target="_blank"><img src="img/img_figan2013_<% =idioma %>2.jpg" alt="figan 2013" width="340" height="200" title="figan 2013"  /></a></div>
 </div>
 <div class="derAncho">
  <div class="productos">
    <%
  If idioma = "es" Then %>
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="440" height="205">
      <param name="movie" value="fla/certificaciones_es.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <embed src="fla/certificaciones_es.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="440" height="205"></embed>
    </object><%
	Else%>
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="440" height="205">
      <param name="movie" value="fla/certificaciones_en.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <embed src="fla/certificaciones_en.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="440" height="205"></embed>
    </object><%
	
	End If %>
  </div>
  <div class="paises"><a href="enelmundo.asp?i=<% =idioma %>" target="mainInfo"><img src="img/paises_<% =idioma %>.jpg" width="445" height="130" /></a></div>
</div>
</body>
</html>
