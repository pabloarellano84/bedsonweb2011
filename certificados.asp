<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/empresa.css" rel="stylesheet" type="text/css" />
<% Response.Expires = 0 %>
<%
If request("i") = "en" Then
	idioma ="en"
	titSeccion = "OUR CERTIFICATES"
	subTit = "Things we have earned"
	textoSeccion = "<p>A spirit of innovation, top quality standards and years of market experience back the finest product lines of FOSBAC and BEDGEN, AVETOTAL, CLOXITAM, among others.</p>"&_ 
	"<p>BEDSON has always been strongly committed to quality management, demonstrated by various certifications obtained over recent years:</p>"&_
	"<p>In the year 2002 BEDSON became the first Argentine company in the industry to obtain the Good Manufacturing Practice <strong>(GMP) certification</strong>, issued by IRAM (Instituto Argentino de Normalizaci&oacute;n y Control)</p>"&_
	"<p>In 2004, it certified for the environmental management certification <strong>ISO 14001</strong> and the occupational health and safety management system <strong>OHSAS 18001</strong> in 2007.</p>"&_
	"<p>This further demonstrates BEDSON’s commitment towards the quality of its products, its people, the community, and the environment.</p>"
Else
	idioma = "es"
	titSeccion = "NUESTROS CERTIFICADOS"
	subTit = "Lo que hemos adquirido"
	textoSeccion = "<p>Un respaldo de la m&aacute;s alta calidad y experiencia comprobada en el mercado avala la gama de productos en sus l&iacute;neas FOSBAC y BEDGEN, como tambi&eacute;n en AVETOTAL y  CLOXITAM, entre otros.</p>"&_
	"<p>BEDSON siempre ha estado comprometido con la innovaci&oacute;n y gesti&oacute;n de Calidad, un hecho demostrado por las certificaciones obtenidas a trav&eacute;s de los a&ntilde;os.</p>"&_
	"<p>&ndash;&nbsp;En 2002, la planta de Pilar recibe la certificaci&oacute;n de la <strong>norma GMP</strong>, siendo la primera empresa Argentina en su rubro.</p>"&_
	"<p>&ndash;&nbsp;En 2004, BEDSON consigue la Certificaci&oacute;n de Gesti&oacute;n Ambiental <strong>ISO 14001</strong>.</p>"&_
	"<p>&ndash;&nbsp;En el 2007, la Certificaci&oacute;n de Seguridad y Salud Ocupacional <strong>OHSAS 18001</strong>.</p>"&_
	"<p>As&iacute;, demostrando una vez m&aacute;s el compromiso con la calidad de sus productos, con su gente, la comunidad y el medio ambiente.</p>"
End If %>
<style type="text/css">
<!--
.mainInfo .izqFino {
	background-image: url(img/imgCertificados.jpg);
}
-->
</style>
</head>
<body>
<!--#include file="top.asp"-->
<div class="mainInfo">
 <div class="izqFino">
  <div class="titNota"><% =titSeccion %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
 </div>
 <div class="derAncho">
  <div class="titNota"><% =subTit %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="cuerpoSeccion"><% =textoSeccion %></div>
 </div>
</div>
</body>
</html>
