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
	titulo = "ANTIBIOTICS"
	tilde1 = "<strong>Reduces</strong> disease incidence"
	tilde2 = "<strong>Improves</strong> feed conversion"
	tilde3 = "<strong>Evens</strong> out flock´s uniformity"
	tilde4 = "<strong>Tempers</strong> post-vaccination reactions"
	infoProd = "<p>Given the widely known benefits of <strong>FOSBAC&trade;</strong> and the innovative nature of this complex, <strong>BEDSON</strong> continues its research in order to provide solutions to the producer. Subclinical bacterial and viral diseases not easily diagnosed might be the leading cause of significant economic loss due to high rates of mortality and poor feed conversion. Many studies have proved that Mycoplasma is the organism most commonly found in intensive animal production. Good management practices and implemented biosafety measures are not always unsurmountable barriers.</p>"&_
	"<p>The addition of tylosin, an effective macrolid against bacteria with no cell wall, is <strong>FOSBAC&trade;</strong>´s right hand bower when it comes to the potential and occasional presence of Mycoplasma. <strong>FOSBAC&trade;</strong> combined with tylosin improves the therapeutic action of both agents and covers the spectrum of the most commonly occurring diseases in intensive animal production, caused by either Gram+ or Gram- bacteria.</p>"&_
	"<p>Fructose 1.6 diphosphate contributes with energy to this combination. This joint action ameliorates the immunosuppressive effect caused by virus-related diseases and consequently the body is able to respond to treatment.</p>"
Else
	idioma = "es"
	titulo = "ANTIBI&Oacute;TICOS"
	tilde1 = "<strong>Reduce</strong> la incidencia de enfermedades"
	tilde2 = "<strong>Mejora</strong> la conversi&oacute;n alimenticia"
	tilde3 = "<strong>Proporciona</strong> uniformidad al plantel"
	tilde4 = "<strong>Aten&uacute;a</strong> las reacciones luego de post-vacunaci&oacute;n"
	infoProd = "<p>Siendo conocidos los beneficios de <strong>FOSBAC&trade;</strong> a nivel mundial, dado el grado de innovaci&oacute;n que aporta este complejo, <strong>BEDSON</strong> continua su investigaci&oacute;n con el &uacute;nico objetivo de proporcionar soluciones al productor.</p>"&_
	"<p>Las enfermedades subcl&iacute;nicas bacterianas y virales, no f&aacute;ciles de identificar, suelen ser la causa principal de grandes p&eacute;rdidas econ&oacute;micas mayormente por los altos niveles de mortandad y un desfavorable &iacute;ndice de conversi&oacute;n alimenticia.</p>"&_
	"<p>Estudios realizados han demostrado y siguen demostrando que el Mycoplasma sp son los de mas frecuente aparici&oacute;n en producci&oacute;n animal intensiva. Las buenas pr&aacute;cticas de manejo y las medidas de bioseguridad implementadas en cada establecimiento son barreras que no siempre son infranqueables.</p>"&_
	"<p>El agregado de Tilosina (macr&oacute;lido eficaz contra bacterias que no poseen pared celular)  a la formulaci&oacute;n de <strong>FOSBAC&trade;</strong>, constituye un aliado esencial frente a la posible y poco notoria presencia  de mycoplasma.  La combinaci&oacute;n de <strong>FOSBAC&trade;</strong> mas Tilosina  mejora el efecto terap&eacute;utico de ambas drogas y cubre el espectro de las enfermedades de mayor frecuencia en la producci&oacute;n animal intensiva, causadas por bacterias Gram + y Gram -.</p>"&_
	"<p>A esta combinaci&oacute;n se suma el efecto energizante de la Fructosa 1.6 difosfato logrando as&iacute; una acci&oacute;n conjunta que hace que el efecto inmunosupresor provocado por enfermedades de origen viral esta atenuado y de esta manera el organismo pueda responder al tratamiento.</p>"
End If %>
</head>
<body>
  <div class="col_izq" id="col_izq">
   <div id="titulo" align="left">
    <div class="titNota"><% =titulo %></div>
    <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
   </div>
   <img src="img/prod_fosbacpt_tit.png" width="347" height="72" align="middle" alt="Fosbac&trade; Plus T" title="Fosbac&trade; Plus T" />
   <div class="divTildes">
  <div><img src="img/tilde_rojo.png" width="14" height="11" alt="" title="" />&nbsp;<% =tilde1 %></div>
  <div><img src="img/tilde_rojo.png" width="14" height="11" alt="" title="" />&nbsp;<% =tilde2 %></div>
  <div><img src="img/tilde_rojo.png" width="14" height="11" alt="" title="" />&nbsp;<% =tilde3 %></div>
  <div><img src="img/tilde_rojo.png" width="14" height="11" alt="" title="" />&nbsp;<% =tilde4 %></div>
   </div>
  </div>
<div class="col_der">
 <div class="infoProd"><% =infoProd %></div>
</div>
</body>
</html>
