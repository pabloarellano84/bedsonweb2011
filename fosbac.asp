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
	infoProd = "<p><strong>BEDSON</strong> pioneered in the research, development and use of fosfomycin in the veterinary industry. Thus it has become a leader in scientific innovation. <strong>BEDSON</strong> was the first company to include fosfomycin in an antibiotic complex as the treatment of choice which later led to development of <strong>FOSBAC&trade;</strong>.</p>"&_
"<p><strong>FOSBAC&trade;</strong> is a wide-spectrum antibiotic complex with bacteriostatic action also supplying energy thanks to the addition of Fructose 1.6 diphosphate. This agent provides metabolizable energy allowing the body to fight off highly aggressive diseases and improving the antibiotic mechanism of action.</p>"&_
"<p><strong>FOSBAC&trade;</strong> embodies key aspects to be considered when choosing an antibiotic: excellent absorption, rapid bioavailability, very good diffusibility, non-binding plasma protein,  no liver metabolism, low resistance induction potential, among other unique features.</p>"&_
"<p>The dual administration route, that is in drinking water and in feed, makes <strong>FOSBAC&trade;</strong> a tailored product for each producer and ongoing situation in particular. In cases of conditions calling for quick action, such as E. coli and Salmonella outbreaks, diseases occurring during the first week of life, Pseudomona sp contamination in the vaccination equipment, administration in drinking water is the route.</p>"&_
"<p>Mixed in feed, the use of <strong>FOSBAC&trade;</strong> is recommended in disease prevention and in keeping good health status, when physiological stress is likely to affect economic performance.</p>"
Else
	idioma = "es"
	titulo = "ANTIBI&Oacute;TICOS"
	tilde1 = "<strong>Reduce</strong> la incidencia de enfermedades"
	tilde2 = "<strong>Mejora</strong> la conversi&oacute;n alimenticia"
	tilde3 = "<strong>Proporciona</strong> uniformidad al plantel"
	tilde4 = "<strong>Aten&uacute;a</strong> las reacciones luego de post-vacunaci&oacute;n"
	infoProd = "<p><strong>BEDSON</strong> fue pionero en la investigaci&oacute;n, desarrollo y la utilizaci&oacute;n a nivel mundial de la fosfomicina como antibi&oacute;tico veterinario, convirti&eacute;ndose en un referente en la innovaci&oacute;n cient&iacute;fica. <strong>BEDSON</strong> es la empresa que incorpora la fosfomicina a un compuesto antibacteriano, como la alternativa de elecci&oacute;n en la industria veterinaria dando origen a <strong>FOSBAC&trade;</strong>.</p>"&_
"<p><strong>FOSBAC&trade;</strong>  constituye un complejo antibi&oacute;tico de amplio espectro a cuya acci&oacute;n bacteriost&aacute;tica se suma el aporte de energ&iacute;a, mediante la inclusi&oacute;n de Fructosa 1.6 difosfato. Este componente aporta energ&iacute;a metabolizable permitiendo al organismo hacer frente a enfermedades altamente agresivas y potenciando la acci&oacute;n del antibi&oacute;tico.</p>"&_
"<p><strong>FOSBAC&trade;</strong> cumple con los aspectos esenciales que deben considerarse a la hora de elegir un antibi&oacute;tico: excelente absorci&oacute;n, r&aacute;pida biodisponibilidad, muy buena difusibilidad, falta de uni&oacute;n a prote&iacute;nas plasm&aacute;ticas, no se metaboliza a nivel hep&aacute;tico, bajo potencial de inducci&oacute;n de resistencia entre otras caracter&iacute;sticas &uacute;nicas.</p>"&_
"<p>La forma de administraci&oacute;n dual, tanto en agua de bebida como en alimento, permiten adaptar al producto a la necesidad de cada establecimiento productor. Frente a patolog&iacute;as  que necesitan una r&aacute;pida acci&oacute;n, como ser brotes de E.coli, salmonelosis, patolog&iacute;as de la primer semana de vida, Pseudomona sp por contaminaci&oacute;n del equipo de vacunaci&oacute;n etc., la administraci&oacute;n en agua de bebida es el medio adecuado.</p>"&_
"<p>Mezclado en alimento, <strong>FOSBAC&trade;</strong> est&aacute; indicado como auxiliar en la prevenci&oacute;n de enfermedades y en el mantenimiento de un buen estado de salud cuando el estr&eacute;s fisiol&oacute;gico, puede afectar el rendimiento econ&oacute;mico del lote.</p>"
End If %>
</head>
<body>
<div class="col_izq">
 <div id="titulo" align="left">
  <div class="titNota"><% =titulo %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
 </div>
 <img src="img/prod_fosbac_tit.png" width="347" height="72" align="middle" alt="Fosbac&trade;" title="Fosbac&trade;" />
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
