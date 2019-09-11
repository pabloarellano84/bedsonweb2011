<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/enelmundo.css" rel="stylesheet" type="text/css" /><%
If request("i") = "en" Then
	idioma ="en"
	titSeccion = "GLOBAL PRESENCE"
	titPais03 = "DOMINICAN REPUBLIC"
	titPais04 = "UNITED STATES"
	titPais05 = "SPAIN"
	titPais06 = "LEBANON"
	titPais07 = "MALAYSIA"
Else
	idioma = "es"
	titSeccion = "EN EL MUNDO"
	titPais03 = "REP&Uacute;BLICA DOMINICANA"
	titPais04 = "ESTADOS UNIDOS"
	titPais05 = "ESPA&Ntilde;A"
	titPais06 = "L&Iacute;BANO"
	titPais07 = "MALASIA"
End If %>
<style type="text/css">
<!--
body {
	margin: 0px;
	padding: 0px;
}
img {
	margin: 0px;
	padding: 0px;
}
-->
</style>
</head>
<body>
<div class="globalBig"><img src="img/globalBig.jpg" alt="" width="811" height="330" border="0" usemap="#Map" title="" />
  <map name="Map" id="Map">
    <area shape="circle" coords="646,240,7" href="#" onclick="javascript: mostrarInfo('malasia');" alt="<% =titPais07 %>" />
    <area shape="circle" coords="466,152,7" href="#" onclick="javascript: mostrarInfo('libano');" alt="<% =titPais06 %>" />
    <area shape="circle" coords="369,140,7" href="#" onclick="javascript: mostrarInfo('espana');" alt="<% =titPais05 %>" />
    <area shape="circle" coords="241,298,7" href="#" onclick="javascript: mostrarInfo('argentina');" alt="Argentina" />
    <area shape="circle" coords="259,285,7" href="#" onclick="javascript: mostrarInfo('argentina');" alt="Uruguay" />
    <area shape="circle" coords="227,184,7" href="#" onclick="javascript: mostrarInfo('dominicana');" alt="<% =titPais03 %>" />
    <area shape="circle" coords="175,193,7" href="#" onclick="javascript: mostrarInfo('guatemala');" alt="Guatemala" />
    <area shape="circle" coords="197,170,7" href="#" onclick="javascript: mostrarInfo('estadosUnidos');" alt="<% =titPais04 %>" />
  </map>
</div>
<div class="infoPais" id="infoPais">
 <div id="argentina">
  <div class="titPais">ARGENTINA</div>
  <div class="titDist">BEDSON S.A.</div>
  <div class="divT"><b>T:</b> 54 (2322) 470249</div>
  <div class="titF"><b>F:</b> 54 (2322) 470453</div>
 </div>
 <div id="guatemala">
  <div class="titPais">GUATEMALA</div>
  <div class="titDist">BEDSON DE CENTROAMERICA S.A.</div>
  <div class="divT"><b>T:</b> 502 2480 1049</div>
  <div class="titF"><b>F:</b> 502 2480 1052</div>
 </div>
 <div id="dominicana">
  <div class="titPais"><% =titPais03 %></div>
  <div class="titDist">BEDSON DEL CARIBE  S.R.L.</div>
  <div class="divT"><b>T:</b> 1 (809) 5829213</div>
 </div>
 <div id="estadosUnidos">
  <div class="titPais"><% =titPais04 %></div>
  <div class="titDist">BEDSON CORP.</div>
  <div class="divT">info@bedson.com..ar</div>
 </div>
 <div id="espana">
  <div class="titPais"><% =titPais05 %></div>
  <div class="titDist">BEDSON ESPA&Ntilde;A S.L</div>
  <div class="divT"><b>T:</b> 34 (91) 416 4515</div>
  <div class="titF"><b>F:</b> 34 (91) 510 4966</div>
 </div>
 <div id="libano">
  <div class="titPais"><% =titPais06 %></div>
  <div class="titDist">BEDSON MIDDLE EAST SARL</div>
  <div class="divT"><b>T:</b> 961 (4) 521607 x 105</div>
  <div class="titF"><b>F:</b> 961 (4) 521609 x 106</div>
 </div>
 <div id="malasia">
  <div class="titPais"><% =titPais07 %></div>
  <div class="titDist">BEDSON FAR EAST SDN BHD</div>
  <div class="divT"><b>T:</b> 60 (3) 51249454</div>
  <div class="titF"><b>F:</b> 60 (3) 51249454</div>
 </div>
</div>
<script type="text/javascript">
var arrayPais = ['argentina','guatemala','dominicana','estadosUnidos','espana','libano','malasia'];
 function mostrarInfo(idpais){
 	ocultarInfo();
	var infoPais = document.getElementById('infoPais');
	infoPais.style.display = 'block';
	var showPais = document.getElementById(idpais);
	showPais.style.display = 'block';
 }
 function ocultarInfo(){
	var infoPais = document.getElementById('infoPais');
	infoPais.style.display = 'none';
	for(var i =0;i<arrayPais.length;i++){
		var miPais = document.getElementById(arrayPais[i]);
		miPais.style.display = 'none';
	}
 }
 window.onload = ocultarInfo;
</script>
</body>
</html>
