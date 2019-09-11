<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/nota.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="estilos/image-slideshow.css" type="text/css"/>
<script type="text/javascript" src="js/image-slideshow.js">
/***********************************************************************************************

Copyright (c) 2005 - Alf Magne Kalleland post@dhtmlgoodies.com

UPDATE LOG:

March, 10th, 2006 : Added support for a message while large image is loading

Get this and other scripts at www.dhtmlgoodies.com

You can use this script freely as long as this copyright message is kept intact.

***********************************************************************************************/ 
</script>
<script type="text/javascript">	window.onload = initSlideShow;</script>
<% Response.Expires = 0 %>
<%
idNota = Request("id")
If request("i") = "en" Then
	idioma ="en"
	strSql = "SELECT day(Fechadealta) AS Mes, month(Fechadealta) AS Dia, year(Fechadealta) AS Ano, "&_
			 "TituloIN AS Titulo, CopeteIN AS Copete, CuerpoIN AS Cuerpo "&_
			 "FROM Notas WHERE Id = "& idNota
	flecha_izq = "Prev"
	flecha_der = "Next"
Else
	idioma = "es"
	strSql = "SELECT day(Fechadealta) AS Dia, month(Fechadealta) AS Mes, year(Fechadealta) AS Ano, "&_
			 "TituloES AS Titulo, CopeteES AS Copete, CuerpoES AS Cuerpo "&_
			 "FROM Notas WHERE Id = "& idNota
	flecha_izq = "Anterior"
	flecha_der = "Siguiente"
End If %>
</head>
<body>
<!--#include file="fnc/cnx.asp"--><%
 OpenDB
 Set rsnotas = Server.CreateObject("ADODB.Recordset")
 rsnotas.open strSql, cn, adOpenKeyset
 If Not rsnotas.EOF Then
  If idioma = "en" Then
   fecNota = rsnotas("Mes") &"/"& rsnotas("Dia") &"/"& rsnotas("Ano")
  Else
   fecNota = rsnotas("Dia") &"/"& rsnotas("Mes") &"/"& rsnotas("Ano")
  End If
  titNota = rsnotas("Titulo")
  copete = rsnotas("Copete")
  cuerpoNota = rsnotas("Cuerpo") %>
 <div style="padding-top:10px;">
  <div class="titNota"><% =titNota %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
 </div>
 <div class="fecNota"><% =fecNota %></div>
 <div class="cuerpo"><% =cuerpoNota %></div>
 <div class="imgNota">
  <div id="dhtmlgoodies_slideshow">
   <div id="galleryContainer">
    <div id="arrow_left"><img src="img/arrow_left.jpg" width="20" height="110" alt="<% =flecha_izq %>" title="<% =flecha_izq %>" /></div>
    <div id="arrow_right"><img src="img/arrow_right.jpg" width="20" height="110" alt="<% =flecha_der %>" title="<% =flecha_der %>" /></div>
    <div id="theImages">
	 <!-- Thumbnails --><%
	 adress = Server.MapPath (".")
	 adress = Split(adress,"\demo")
	 path = adress(0)
	 Set objFile = Server.CreateObject("SoftArtisans.FileManager")
	 cantImg = 1
	 x = 1
	 Do While cantImg = 1
	  imgPath = path &"\images\notas\" & idNota & "_"& x &".jpg"
'	  response.Write(path)
	  If objFile.FileExists(imgPath) = True Then 
	   imgNota = "<a href=""/images/notas/"& idNota &"_"& x &".jpg"" target=""_blank""><img src=""/images/notas/"& idNota &"_"& x &".jpg"" height=""105"" alt="""" title="""" /></a>"
	   '<a href="img/noticias/228_1.jpg" rel="lightbox[roadtrip]"><img src="img/noticias/228_1.jpg" width="142" height="105"></a>
	   cantImg = 1
	   x = x + 1
	  Else
	   imgNota = ""
	   cantImg = 0
	  End If 
	  Response.Write(imgNota)
	 Loop %>
	 <!-- End thumbnails -->
	 <div id="slideEnd"></div>
    </div>
   </div>
  </div>
 </div><%
 Else
  response.Redirect("empresa.asp?i="& idioma)
 End If
 rsnotas.Close %>
</body>
</html>
