<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/productos.css" rel="stylesheet" type="text/css" />
<link href="estilos/bedgen.css" rel="stylesheet" type="text/css" /><%
If request("i") = "en" Then
	idioma ="en"
	titulo = "ADDITIVES"
Else
	idioma = "es"
	titulo = "ADITIVOS"
End If %>
</head>
<body>
  <div class="col_izq" id="col_izq">
   <div id="titulo" align="left">
    <div class="titNota"><% =titulo %></div>
    <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
   </div>
   <img src="img/titProd_b40ASC_<% =idioma %>.png" alt="Bedgen 40 AS" width="347" height="72" align="middle" />
<div id="parrafo1" class="div1">BEDGEN 40&trade; AS CONCENTRADO es un compuesto modificador de la actividad hepática, que mejora su capacidad de detoxificación, de producción de bilis y metabolización de nutritientes, permitiendo expresar a los animales su verdadero potencial productivo.</div>
   <div id="divTildes" class="divTildes">
    <div><img src="img/tilde_verde.png" width="14" height="11" alt="" title="" /> <strong>elimina</strong> las micotoxinas y otros t&oacute;xicos del organismo</div>
    <div><img src="img/tilde_verde.png" width="14" height="11" alt="" title="" /> <strong>incrementa</strong> la producci&oacute;n y liberaci&oacute;n de bilis</div>
    <div><img src="img/tilde_verde.png" width="14" height="11" alt="" title="" /> <strong>protege</strong> el h&iacute;gado y ayuda a su recuperaci&oacute;n</div>
    <div><img src="img/tilde_verde.png" width="14" height="11" alt="" title="" /> <strong>mejora</strong> la respuesta inmune y redure la mortalidad</div>
   </div>
  </div>
  <div class="col_der" id="col_der" style="background-image:url(img/imgBG40AS.jpg);"></div>
</body>
</html>
