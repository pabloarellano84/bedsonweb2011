<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001" LCID="1034"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/media.css" rel="stylesheet" type="text/css" />
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
<% Response.Expires = 0 %>
<%
If request("i") = "en" Then
	idioma ="en"
	topSql = "SELECT TOP 1 nombreIN As nombre, descripcionIN as descripcion, fecha, idVideo "&_
			 "FROM videos WHERE activo = 1 ORDER BY fecha DESC"
	strSql = "SELECT nombreIN As nombre, descripcionIN as descripcion, fecha, idVideo "&_
			 "FROM videos WHERE activo = 1 ORDER BY fecha DESC"
	otherLang = "es"
Else
	idioma = "es"
	topSql = "SELECT TOP 1 nombreES As nombre, descripcionES as descripcion, fecha, idVideo "&_
			 "FROM videos WHERE activo = 1 ORDER BY fecha DESC"
	strSql = "SELECT nombreES As nombre, descripcionES as descripcion, fecha, idVideo "&_
			 "FROM videos WHERE activo = 1 ORDER BY fecha DESC"
	otherLang = "en"
End If %>
</head>
<body>
<!--#include file="fnc/cnx.asp"--><%
 OpenDB
 Set oRst = Server.CreateObject("ADODB.Recordset")
 Set rsnotas = Server.CreateObject("ADODB.Recordset")
 oRst.open topSql, cn, adOpenKeyset
 id_video = oRst("idVideo")
 idActivo = id_video
 titulo = oRst("nombre")
 desc = oRst("descripcion")
 fecha = oRst("fecha")
 oRst.Close 
 imgFondo = "images/preview_"& id_video &"_es.jpg" %>
<div style="height:210px;">
 <div class="izqFino" id="izqFino" style="background:url('<% =imgFondo %>');" onclick="window.open('videos.asp?i=<% =idioma %>&id=<% =id_video %>')">
 <div id="mouseArriba" style="width:100%; height:100%"></div>
 </div>
 <div class="derAncho">
  <div class="titNota" id="topTitulo"><% =titulo %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="fecNota" id="topFecha"><% =fecha %></div>
  <div class="cuerpo"><p id="topCuerpo"><% =desc %></p></div>
 </div>
</div>
 <div class="thumbs" id="dhtmlgoodies_slideshow">
   <div id="galleryContainer">
    <div id="arrow_left"><img src="img/arrow_left.jpg" width="20" height="110" alt="<% =flecha_izq %>" title="<% =flecha_izq %>" /></div>
    <div id="arrow_right"><img src="img/arrow_right.jpg" width="20" height="110" alt="<% =flecha_der %>" title="<% =flecha_der %>" /></div>
    <div id="theImages"><%
	oRst.open strSql, cn, adOpenKeyset
	If Not oRst.EOF Then
	 cant = ""
	 Do Until oRst.EOF
	  id_video = oRst("idVideo")
	  titulo = oRst("nombre")
	  desc = oRst("descripcion")
	  fecha = oRst("fecha")
	  If IsNull(desc) Or desc = "" Then
	   descripcion = "Bedson Videos"
	  Else
	   descripcion = Left(desc,31)
	  End If 
	  imgFondo = "images/preview_"& id_video &"_es.jpg" %>
     <div class="thumbVideo">
      <div class="tituloThumb">
       <p><b><% =titulo %></b></p>
       <p>&middot;<% =descripcion %></p>
      </div>
      <div class="imgThumb"><a href="#"><img src="<% =imgFondo %>" width="142" height="105" id="div<% =id_video %>" alt="<% =titulo %>" title="<% =titulo %>" /></a></div>
     </div>
	 <div style="display:none;"><input type="hidden" value="<% =titulo %>" name="titulo<% =id_video %>" id="titulo<% =id_video %>" />
     <input type="hidden" value="<% =desc %>" name="descripcion<% =id_video %>" id="descripcion<% =id_video %>" />
     <input type="hidden" value="<% =fecha %>" name="fecha<% =id_video %>" id="fecha<% =id_video %>" />
       <input type="hidden" value="<% =id_video %>" name="iddiv<% =id_video %>" id="iddiv<% =id_video %>" /></div><%
	 imgFondo = ""
	 oRst.MoveNext
	 If cant = "" Then
	  cant = id_video
	 Else
	  cant = cant &","& id_video
	 End If
	 Loop
	End If
	oRst.Close %>
	 <!-- End thumbnails -->
	 <div id="slideEnd"></div>
    </div>
   </div>
  </div>
<script type="text/javascript">
 var videos = "<% =cant %>";
 var arrayvideos = videos.split(",");
 var idActivo = 0;
 function clickDiv(e){
	var evento = e || window.event;
	var itemClic = evento.srcElement || evento.target;
	var id_clic = itemClic.id;
	var idVideo = document.getElementById('id'+ id_clic).value;
	var titulo = document.getElementById('titulo'+ idVideo).value;
	var fecha = document.getElementById('fecha'+ idVideo).value;
	var desc = document.getElementById('descripcion'+ idVideo).value;
	var topTit = document.getElementById('topTitulo');
	topTit.innerHTML = titulo;
	var topFecha = document.getElementById('topFecha');
	topFecha.innerHTML = fecha;
	var topCuerpo = document.getElementById('topCuerpo');
	topCuerpo.innerHTML = desc;
	var divIzq = document.getElementById('izqFino');
	divIzq.style.backgroundImage = 'url(images/preview_'+ idVideo +'_es.jpg)';
	idActivo = idVideo;
 }
 function inicio(){
 	var divIzq = document.getElementById('izqFino');
 	divIzq.onmouseover = cambiarImg;
 	divIzq.onmouseout = sacarImg;
	for(var i=0;i<arrayvideos.length;i++){
		var divThumbs = document.getElementById('div'+ arrayvideos[i]);
		divThumbs.onclick = clickDiv;
	}
	idActivo = <% =idActivo %>;
 }
 function clicImg(){
	 window.location = "videos.asp?i=<% =idioma %>&id="+ idActivo;
 }
 function cambiarImg(){
	 var divActivo = document.getElementById('mouseArriba');
	 divActivo.style.cursor='pointer';
	 divActivo.style.backgroundImage = 'url(img/mouseOver_on.png)';
	 divActivo.style.backgroundPosition = 'center center';
	 divActivo.style.backgroundRepeat = 'no-repeat';
	 divActivo.onclick = clicImg;
	 var divIzqFino = document.getElementById('izqFino');
	 divIzqFino.onclick = '';
 }
 function sacarImg(){
	 var divActivo = document.getElementById('mouseArriba');
	 divActivo.style.backgroundImage = '';
	 divActivo.style.cursor='default';
 }
 inicio();
</script>
</body>
</html>