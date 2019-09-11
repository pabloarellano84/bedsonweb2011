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
	tilde1 = "<strong>Stabilizes</strong> hepatocytes"
	tilde2 = "<strong>Reduces</strong> toxin accumulation"
	tilde3 = "<strong>Stimulates</strong> metabolic processes"
	tilde4 = "<strong>Improves</strong> the inmune response"
	infoProd = "<p>BEDGEN 40 ST is a new tool to maximize animal productivity because, in addition to its benefits as a hepato-modulator, it is also an effective Anti Mycotoxin Additive thanks to the inclusion of sepiolite an alumino-silica) in its formula.  Sepiolite has been registered in the EU (N° E-562) since 1989.</p>"&_
"<p>Modern and intensive animal production performance improves on a daily basis, thanks to a combination of better genetics as well as better feeding and animal management.  Increased productivity, however, has brought about new challenges, one of which is the hidden but inevitable threat of mycotoxins.<br/>Amongst the major problems related to mycotoxins - and the cause of significant economic impact, are: loss of daily weight gain, decreased egg production, and the onset of immuno-depression.</p>"&_
"<p>The use of Anti Mycotoxin Additives, also known as toxin binders, has become widespread; moreover, and for several reasons, high quality grain is affected: e.g. geographical production area, good agricultural practices, harvest season and  time and storage conditions.</p>"&_
"<p>The addition of Sepiolite in animal feed is highly beneficial:</p>"&_
"<p>-&nbsp;It regulates intestinal transit and improves nutrient digestion<br/>"&_
"-&nbsp;It improves digestibility and flows unchanged throughout the digestive system (90% is recovered in feces)<br/>"&_
"-&nbsp;It reduces fungi contamination<br/>"&_
"-&nbsp;It retains humidity and chemical inertia, thus providing a binding effect, and minimizing interaction with other premix components</p>"&_
"<p><strong>BEDGEN 40&trade; ST</strong>, Providing an innovative response to the impact of mycotoxins.</p>"
Else
	idioma = "es"
	titulo = "ADITIVOS"
	tilde1 = "<strong>Elimina</strong> las micotoxinas y otros t&oacute;xicos del organismo"
	tilde2 = "<strong>Incrementa</strong> la producci&oacute;n y liberaci&oacute;n de bilis"
	tilde3 = "<strong>Protege</strong> el h&iacute;gado y ayuda a su recuperaci&oacute;n"
	tilde4 = "<strong>Mejora</strong> la respuesta inmune y redure la mortalidad"
	infoProd = "<p><strong>BEDGEN 40&trade; ST</strong> es una nueva alternativa que maximiza el rendimiento econ&oacute;mico de los animales ya que adem&aacute;s reconocidas propiedades hepatomoduladoras se complementa con un AAM (Aditivo Anti Micotoxinas) gracias a la inclusi&oacute;n de sepiolita, un aluminosilicato con alto poder de registrado en Uni&oacute;n Europea (N&deg; E-562) desde 1989.</p>"&_
"<p>Los niveles de desempe&ntilde;o de los animales destinados a producci&oacute;n intensiva mejoran constantemente gracias a la combinaci&oacute;n de una mejor gen&eacute;tica, de una mejor nutrici&oacute;n y mejor manejo.</p>"&_
"<p>Sin embargo, el aumento de la productividad inevitablemente trae nuevos desaf&iacute;os siendo las micotoxinas una amenaza oculta e inevitable.</p>"&_
"<p>Dentro de los principales problemas provocados por las micotoxinas, que impactan significativamente en el rendimiento econ&oacute;mico de los animales,  podemos mencionar la disminuci&oacute;n de la ganancia diaria de peso, aparici&oacute;n de inmunodepresi&oacute;n entre otras.</p>"&_
"<p>El uso de AAM (Aditivo Anti Micotoxinas) tambi&eacute;n conocidos como secuentrantes de micotoxinas, se ha expandido notablemente como consecuencia de la calidad de los granos que se ve afectada por diversas razones, entre ellas la zona de cultivo, buenas pr&aacute;cticas agrarias, &eacute;poca de cosecha, &eacute;poca y condiciones de almacenaje.</p>"&_
"<p>La inclusi&oacute;n de Sepiolita en la dieta de los animales posee excelentes beneficios:</p>"&_
"<p>-Regula el  tr&aacute;nsito intestinal y mejora de la utilizaci&oacute;n digestiva de los nutrientes.<br/>"&_
"-Mejora de la digestibilidad y permanece inalterada a lo largo del sistema digestivo (90% se recupera en las heces).<br/>"&_
"-Reduce la contaminaci&oacute;n por hongos.<br/>"&_
"-Posee una alta capacidad de retenci&oacute;n de humedad e inercia qu&iacute;mica, lo que brinda un efecto ligante/antiaglomerante y minimiza las interacciones con el resto de componentes de la premezcla.</p>"
End If %>
</head>
<body>
  <div class="col_izq" id="col_izq">
   <div id="titulo" align="left">    <div class="titNota"><% =titulo %></div>
    <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
	</div>
   <img src="img/titProd_b40ST_<% =idioma %>.png" alt="BEDGEN 40&trade; ST" width="347" height="72" align="middle" />
   <div id="divTildes" class="divTildes">
    <div><img src="img/tilde_verde.png" width="14" height="11" alt="" title="" />&nbsp;<% =tilde1 %></div>
    <div><img src="img/tilde_verde.png" width="14" height="11" alt="" title="" />&nbsp;<% =tilde2 %></div>
    <div><img src="img/tilde_verde.png" width="14" height="11" alt="" title="" />&nbsp;<% =tilde3 %></div>
    <div><img src="img/tilde_verde.png" width="14" height="11" alt="" title="" />&nbsp;<% =tilde4 %></div>
   </div>
  </div>
  <div class="col_der" id="col_der"><div class="infoProd"><% =infoProd %></div></div>
</body>
</html>
