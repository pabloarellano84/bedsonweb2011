<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/noticias.css" rel="stylesheet" type="text/css" />
<% Response.Expires = 0 %>
<%
If request("i") = "en" Then
	idioma ="en"
	titSeccion = "TOP NEWS"
	topSql = "SELECT Top 1 day(Fechadealta) AS Mes, month(Fechadealta) AS Dia, year(Fechadealta) AS Ano, "&_
			 "TituloIN AS Titulo, CopeteIN AS Copete, CuerpoIN AS Cuerpo, Id "&_
			 "FROM Notas WHERE TituloIN <> '' ORDER BY Fechadealta DESC"
	strSql = "SELECT day(Fechadealta) AS Mes, month(Fechadealta) AS Dia, year(Fechadealta) AS Ano, "&_
			 "TituloIN AS Titulo, CopeteIN AS Copete, CuerpoIN AS Cuerpo, Id "&_
			 "FROM Notas WHERE TituloIN <> '' ORDER BY Fechadealta DESC"
Else
	idioma = "es"
	titSeccion = "&Uacute;LTIMA NOTICIA"
	topSql = "SELECT TOP 1 day(Fechadealta) AS Dia, month(Fechadealta) AS Mes, year(Fechadealta) AS Ano, "&_
			 "TituloES AS Titulo, CopeteES AS Copete, CuerpoES AS Cuerpo, Id "&_
			 "FROM Notas WHERE TituloES <> '' ORDER BY Fechadealta DESC"
	strSql = "SELECT day(Fechadealta) AS Dia, month(Fechadealta) AS Mes, year(Fechadealta) AS Ano, "&_
			 "TituloES AS Titulo, CopeteES AS Copete, CuerpoES AS Cuerpo, Id "&_
			 "FROM Notas WHERE TituloES <> '' ORDER BY Fechadealta DESC"
End If %>
</head>
<body>
<!--#include file="fnc/cnx.asp"-->
<div class="izqFino" id="izqFino"><%
 OpenDB
 Set oRst = Server.CreateObject("ADODB.Recordset")
 Set rsnotas = Server.CreateObject("ADODB.Recordset")
 oRst.open topSql, cn, adOpenKeyset
 If Not oRst.EOF Then
  idNota = oRst("Id")
  fecNota = oRst("Dia") &"/"& oRst("Mes") &"/"& oRst("Ano")
  titNota = oRst("Titulo")
  copete = oRst("Copete")
  cuerpoNota = oRst("Cuerpo")
  If copete <> "" then 
   copete = copete
  Else
   copete = cuerpoNota
  End If
  copete = left(copete,250)&"..."
  adress = Server.MapPath (".")
  adress = Split(adress,"\demo")
  path = adress(0)
  Set objFile = Server.CreateObject("SoftArtisans.FileManager")
  path = path &"\images\notas\" & idNota & "_1.jpg"
' response.Write(path)
  If objFile.FileExists (path) = True Then 
   imgNota = "/images/notas/"& idNota &"_1.jpg"
  Else
   imgNota = ""
  End if %>
  <div class="imgPrincipalNota"><img src="<% =imgNota %>" width="345" alt="<% =titNota %>" title="<% =titNota %>" /></div>
  <div class="contenido">
   <div class="titNota"><% =titSeccion %></div>
   <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
    <div class="nota">
    <div class="copete">
     <div class="titCopete"><a href="nota.asp?id=<% =idNota %>&amp;i=<% =idioma %>"><% =UCase(titNota) %></a></div>
     <div class="textCopete"><% =copete %>
     <a href="nota.asp?id=<% =idNota %>&amp;i=<% =idioma %>"><img src="img/lupa.png" width="17" height="17" alt="+ Info" title="+ Info" /></a></div>
    </div>
   </div>
  </div><%
 End If
 oRst.Close %>
</div>
 <div class="derAncho">
  <div class="noticias">
   <div class="titPag">
	<div class="titImg"><img src="img/btnTitMasNoticias_<% =idioma %>.png" width="181" height="37" /></div><%
	Dim cant_paginas	  	'cantidad de páginas que recibimos
	Dim pagina_actual	  	'La página que mostramos
	Dim mostrados   'Contador utilizado para mostrar las páginas
	Dim I					'Variable Loop
	Dim cantNotas
	cantNotas = 3
	mostrados = 0
	page = Request.QueryString("page")
    If page = "" Then
	 pagina_actual = 1
	 cant = 1
    Else
	 pagina_actual = CInt(page)
	 cant = (cantNotas*(page))-(cantNotas-1)
    End If
    rsnotas.PageSize = cantNotas
    rsnotas.CacheSize = cantNotas
    rsnotas.open strSql, cn, 3,1
'	contamos las páginas que se formaron con la variable mostrar.
	cant_paginas = rsnotas.PageCount
'	Si el pedido de página cae afuera del rango, lo modificamos para que caiga adentro
	If pagina_actual > cant_paginas Then pagina_actual = cant_paginas
'	Si la cantidad de páginas da 0 es que no hay registros... por eso este IF
	If pagina_actual < 1 Then pagina_actual = 1
'	Nos movemos a la página elegida
	rsnotas.AbsolutePage = pagina_actual
	If (cant_paginas > 5) Then
	 If pagina_actual > 2 Then
	  desde = pagina_actual - 1
	 Else
	  desde = 1
	 End If
	 hasta = pagina_actual + 1
	 If hasta > cant_paginas Then
	  hasta = cant_paginas
	 End If
	Else
	 desde = 1
	 hasta = cant_paginas
	End If %>
    <div class="paginacion"><%
'	 Ahora mostramos los enlaces a las otras páginas con el resto de los registros...
	 If pagina_actual > 1 Then %>
	  <a href="noticias.asp?page=1&amp;i=<% =idioma %>"><img src="img/arrowFirstPage_on.jpg" width="35" height="15" alt="Primer p&aacute;gina" title="Primer p&aacute;gina" /></a><a href="noticias.asp?page=<%= pagina_actual - 1 %>&amp;i=<% =idioma %>"><img src="img/arrowPrevPage_on.jpg" width="35" height="15" alt="P&aacute;gina anterior" title="P&aacute;gina anterior" /></a><%
	 Else %>
	  <img src="img/arrowFirstPage_off.jpg" width="35" height="15" alt="Primer p&aacute;gina" title="Primer p&aacute;gina" /><img src="img/arrowPrevPage_off.jpg" width="35" height="15" alt="P&aacute;gina anterior" title="P&aacute;gina anterior" /><%
	 End If
'	 mostramos la paginacion por numeros de página
	 For I = desde To hasta
	  If I = pagina_actual Then
	   Response.Write("<div class=""pagActual"">"& I &"</div>")
	  Else
	   If I < pagina_actual Then Response.Write("<div class=""pagAnt"">")
	   If I > pagina_actual Then Response.Write("<div class=""pagSig"">")
	   Response.write("<a href='noticias.asp?page="& I &"&amp;i="& idioma &"'>"& I &"</a></div>")
	  End If
	 Next 'I
	 If pagina_actual < cant_paginas Then %>
	  <a href="noticias.asp?page=<%= pagina_actual + 1 %>&amp;i=<% =idioma %>"><img src="img/arrowNextPage_on.jpg" width="35" height="15" alt="P&aacute;gina siguiente" title="P&aacute;gina siguiente" /></a><a href="noticias.asp?page=<% =cant_paginas %>&amp;i=<% =idioma %>"><img src="img/arrowLastPage_on.jpg" width="35" height="15" alt="&Uacute;ltima p&aacute;gina" title="&Uacute;ltima p&aacute;gina" /></a><%
	 Else %>
	  <img src="img/arrowNextPage_off.jpg" width="35" height="15" alt="P&aacute;gina siguiente" title="P&aacute;gina siguiente" /><img src="img/arrowLastPage_off.jpg" width="35" height="15" alt="&Uacute;ltima p&aacute;gina" title="&Uacute;ltima p&aacute;gina" /><%
	 End If %>
    </div>
   </div><%
   Do While mostrados < cantNotas AND Not rsnotas.EOF
    mostrados = mostrados + 1
	idNota = rsnotas("Id")
	fecNota = rsnotas("Dia") &"/"& rsnotas("Mes") &"/"& rsnotas("Ano")
	titNota = rsnotas("Titulo")
	copete = rsnotas("Copete")
	cuerpoNota = rsnotas("Cuerpo")
	If copete <> "" Then
	 copete = copete
	Else
	 copete = cuerpoNota
	End if
	copete = left(copete,100)&"..."
	adress = Server.MapPath (".")
	adress = Split(adress,"\demo")
	path = adress(0)
	Set objFile = Server.CreateObject("SoftArtisans.FileManager")
	path = path &"\images\notas\" & idNota & "_1.jpg"
'	   response.Write(path)
	   If objFile.FileExists (path) = True Then 
	    imgNota = "/images/notas/"& idNota &"_1.jpg"
	   Else
	    imgNota = ""
	   End if %>
    <div class="nota">
	 <div class="copete">
	  <div class="fecha"><% =fecNota %></div>
	  <div class="titCopete"><a href="nota.asp?id=<% =idNota %>&amp;i=<% =idioma %>"><% =titNota %></a></div>
	  <div class="textCopete"><% =copete %>&nbsp;
	   <div align="center" style="text-align:center;">........................</div>
      </div>
     </div>
     <div class="imgNotaThumb">
      <div class="lupaNota"><a href="nota.asp?id=<% =idNota %>&amp;i=<% =idioma %>"><img src="img/lupa.png" width="17" height="17" alt="+ Info" title="+ Info" /></a></div>
	  <div class="thumbNota"><img src="<% =imgNota %>" height="68" alt="<% =titNota %>" title="<% =titNota %>" /></div>
      <div class="marcoNota"><a href="nota.asp?id=<% =idNota %>&amp;i=<% =idioma %>"><img src="img/bordeThumbs.png" alt="<% =titNota %>" width="80" height="68" title="<% =titNota %>" /></a></div>
     </div>
    </div><%
    rsnotas.MoveNext
   Loop %>
  </div>
</div><%
 rsnotas.Close %>
</body>
</html>
