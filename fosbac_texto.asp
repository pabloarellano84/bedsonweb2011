<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/productos.css" rel="stylesheet" type="text/css" />
<link href="estilos/fosbac.css" rel="stylesheet" type="text/css" /><%
If request("i") = "en" Then
	idioma ="en"
Else
	idioma = "es"
End If %>
</head>
<body>
<!--#include file="top.asp"-->
<div class="contenido" id="contenido">
  <div class="col_izq" id="col_izq">
   <div id="titulo" align="left"><img src="img/btnTitAntibioticos_<% =idioma %>.png" width="154" height="37" align="middle" /><img src="img/prod_fosbac_tit.png" width="192" height="38" align="middle" alt="Fosbac&trade;" title="Fosbac&trade;" /></div>
   <div id="parrafo1" class="div1">FOSBAC&trade; es un antibi&oacute;tico energizante de amplio espectro, apropiado para tratamiento de patolog&iacute;as primarias y secundarias de origen bacteriano que alcanza altos niveles plasm&aacute;ticos en poco tiempo.</div>
   <div id="divTildes" class="divTildes">
    <div><img src="img/tilde_rojo.png" width="14" height="11" alt="" title="" /> <strong>reduce</strong> la incidencia de enfermedades</div>
    <div><img src="img/tilde_rojo.png" width="14" height="11" alt="" title="" /> <strong>mejora</strong> la conversi&oacute;n alimenticia</div>
    <div><img src="img/tilde_rojo.png" width="14" height="11" alt="" title="" /> <strong>proporciona</strong> uniformidad al plantel</div>
    <div><img src="img/tilde_rojo.png" width="14" height="11" alt="" title="" /> <strong>aten&uacute;a</strong> las reacciones luego de post-vacunaci&oacute;n</div>
   </div>
   <div id="imgBalde"><img src="img/balde_FOSBAC_es.jpg" width="347" height="144" alt="Fosbac&trade;" title="Fosbac&trade;" /></div>
  </div>
  <div class="col_der" id="col_der">
   <div class="div1">
    <div class="parrafo"><span class="letraCapital">E</span><span class="subtitulo">XTRACTO DE CYNARA</span> es un componente vegetal natural extraído de las hojas de la  planta Cynara scolymus (alcachofa). Entre sus muchos componentes, la cynarina es la más importante y principal sustancia química biológicamente activa. Otros químicos activos incluyen: Flavonoides, Polifenoides y ácidos Cafeolquínicos.
    </div>
   </div>
   <div class="div2">
    <div class="parrafo"><span class="letraCapital">C</span><span class="subtitulo">LORURO DE COLINA</span> es una provitamina que contribuye en la fórmula de BEDGEN 40™ AS  CONCENTRADO como donante del grupo amino para la detoxificación en la conjugación hepática (fase II), como donante del grupo metilo para la protección de la membrana citoplasmática del hígado y como protector hepático en la degeneración lipídica. También interactúa con la luteína en la movilización de grasas.
   </div>
  </div>
   <div class="div1">
    <div class="parrafo"><span class="letraCapital">E</span><span class="subtitulo">XTRACTO DE CYNARA</span> es un componente vegetal natural extraído de las hojas de la  planta Cynara scolymus (alcachofa). Entre sus muchos componentes, la cynarina es la más importante y principal sustancia química biológicamente activa. Otros químicos activos incluyen: Flavonoides, Polifenoides y ácidos Cafeolquínicos.
    </div>
   </div>
   <div class="div2">
    <div class="parrafo"><span class="letraCapital">C</span><span class="subtitulo">LORURO DE COLINA</span> es una provitamina que contribuye en la fórmula de BEDGEN 40™ AS  CONCENTRADO como donante del grupo amino para la detoxificación en la conjugación hepática (fase II), como donante del grupo metilo para la protección de la membrana citoplasmática del hígado y como protector hepático en la degeneración lipídica. También interactúa con la luteína en la movilización de grasas.
   </div>
  </div>  
  </div>
</div>
<script type="text/javascript">
 function medidas(){
	var col_izq = document.getElementById('col_izq');
	var col_der = document.getElementById('col_der');
	if(col_izq.offsetHeight > col_der.offsetHeight){
		col_der.style.height = col_izq.offsetHeight;
	}else{
		col_izq.style.height = col_der.offsetHeight;
		var imgBalde = document.getElementById('imgBalde');
		var titulo = document.getElementById('titulo').offsetHeight;
		var parrafo1 = document.getElementById('parrafo1').offsetHeight;
		var divTildes = document.getElementById('divTildes').offsetHeight;
		var alto = (titulo + parrafo1 + divTildes + imgBalde.offsetHeight);
		alto = parseInt(col_izq.style.height)- parseInt(alto)-5;
		imgBalde.style.marginTop = alto;
	}
 }
 window.onload = medidas;
 
</script>
</body>
</html>
