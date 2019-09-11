<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/home.css" rel="stylesheet" type="text/css" />
<% Response.Expires = 0 %>
<%
'La siguiente variable es la cantidad de notas q se mostrarán en el recuadro de noticias.
cantNotas = 1
If request("i") = "en" Then
	idioma ="en"
	strSql = "SELECT Top "& cantNotas &" day(Fechadealta) AS Mes, month(Fechadealta) AS Dia, year(Fechadealta) AS Ano, "&_
			 "TituloIN AS Titulo, CopeteIN AS Copete, CuerpoIN AS Cuerpo, Id "&_
			 "FROM Notas WHERE TituloIN <> '' ORDER BY Fechadealta DESC"
	txtIdioma = "Change language"
	altImg_en = "English"
	altImg_es = "Spanish"
Else
	idioma = "es"
	strSql = "SELECT Top "& cantNotas &" day(Fechadealta) AS Dia, month(Fechadealta) AS Mes, year(Fechadealta) AS Ano, "&_
			 "TituloES AS Titulo, CopeteES AS Copete, CuerpoES AS Cuerpo, Id "&_
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
	For x = 0 To cantNotas-1
	 idNota = rsnotas("Id")
	 If idioma = "en" Then
	  fecNota = rsnotas("Mes") &"/"& rsnotas("Dia") &"/"& rsnotas("Ano")
	 Else
	  fecNota = rsnotas("Dia") &"/"& rsnotas("Mes") &"/"& rsnotas("Ano")
	 End If
	 titNota = rsnotas("Titulo")
	 copete = rsnotas("Copete")
	 cuerpoNota = rsnotas("Cuerpo")
	 If copete <> "" then 
	  copete = copete
	 Else
	  copete = cuerpoNota
	 End if
	 copete = left(copete,100)&"..." 'ORIGINAL
'	 copete = "" 'BANNER IZQ
	 adress = Server.MapPath (".")
	 adress = Split(adress,"\demo")
	 path = adress(0)
'	 Set objFile = Server.CreateObject("SoftArtisans.FileManager")
'	 path = path &"\images\notas\" & idNota & "_1.jpg"
'	 response.Write(path)
'	 If objFile.FileExists (path) = True Then 
'	  imgNota = "/images/notas/"& idNota &"_1.jpg"
'	 Else
	  imgNota = "/images/notas/"& idNota &"_1.jpg"
'	 End if %>
     <div class="nota">
	  <div class="copete">
       <div class="fecha"><% =fecNota %></div>
       <div class="titCopete"><a href="nota.asp?id=<% =idNota %>&i=<% =idioma %>"><% =titNota %></a></div>
       <div class="textCopete">
	    <% =copete %>&nbsp;<a href="nota.asp?id=<% =idNota %>&i=<% =idioma %>"><img src="img/lupa.png" height="17" width="17" alt="+ info" title="+ info" /></a><br/>
        ........................................
       </div>
      </div>
     </div><%
     rsnotas.MoveNext
    Next
   End If
   rsnotas.Close %>
  </div>
  <div class="contacto"><a href="http://www.avicola.com.ar/es/visitantes/acreditaciones" target="_blank"><img src="img/avicola_001.jpg" alt="Avícola Porcinos 2014" width="340" height="200" /></a></div>
 </div>
 <div class="derAncho">
  <div class="productos"><%
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
