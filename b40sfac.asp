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
	infoProd = "<p>Both food safety and the trend towards the use of natural therapies have become an issue in the last decade. More than 15 years ago, <strong>BEDSON</strong> was a visionary and developed <strong>BEDGEN 40&trade;</strong>. Focused on safety and searching for better production parameters <strong>BEDGEN 40&trade;</strong> was designed as a product with multiple benefits and easily-tailored to the characteristics and ongoing situations at each farm in particular.</p>"&_
		"<p><strong>BEDGEN 40&trade;</strong> in an hepatomodulator and natural growth promoter containing <em>Cynara Scolymus</em> and <em>Choline Chloride</em>. <em>Cynara Scolymus</em> embodies widely known benefits, namely it contributes to detoxification, increases bile production, supports the regeneration of hepatocytes, and improves the immune response. <em>Choline Chloride</em> contributes to fat mobilization, which is essential for optimal liver function.</p>"&_
		"<p><strong>BEDGEN 40&trade;</strong> is administered orally, either in drinking water or in feed, which makes  the product adaptable to the needs of each farm. The regular and concentrate presentations also make the inclusion of the product possible in either drinking water or feed according to  the characteristics of the premises.</p>"&_
		"<p>Appropriate to reduce stress levels during the different stages of the breeding cycle, <strong>BEDGEN 40&trade;</strong> may also be administered throughout the breeding cycle, and is recommended to prevent bad performance (in drinking water during the first week of life and mixed in feed afterwards). In the event of acute intoxication, the administration of <strong>BEDGEN 40&trade;</strong> in drinking water helps recover liver function, thus minimizing economic loss.  <strong>BEDGEN 40&trade;</strong> is also recommended in cases of bacteria-related diseases for a quick physiological recovery.</p>"
Else
	idioma = "es"
	titulo = "ADITIVOS"
	tilde1 = "<strong>Elimina</strong> las micotoxinas y otros t&oacute;xicos del organismo"
	tilde2 = "<strong>Incrementa</strong> la producci&oacute;n y liberaci&oacute;n de bilis"
	tilde3 = "<strong>Protege</strong> el h&iacute;gado y ayuda a su recuperaci&oacute;n"
	tilde4 = "<strong>Mejora</strong> la respuesta inmune y redure la mortalidad"
	infoProd = "<p>La seguridad alimenticia y la elecci&oacute;n de terapias naturales ha cobrado gran importancia en la &uacute;ltima d&eacute;cada. Hace m&aacute;s de 15 a&ntilde;os <strong>BEDSON</strong>, como si hubiera visualizado el futuro, desarroll&oacute; <strong>BEDGEN 40&trade;</strong>. Enfocados en la seguridad sin descuidar la incesante b&uacute;squeda de mejores  par&aacute;metros productivos <strong>BEDGEN 40&trade;</strong> nace como producto de m&uacute;ltiples beneficios y f&aacute;cilmente adaptable a las particularidades de cada establecimiento productor.</p>"&_
				"<p><strong>BEDGEN 40&trade;</strong> es un hepatomodulador y promotor natural de crecimiento que contiene <em>Cynara Scolymus</em> y <em>Cloruro de Colina</em>. La <em>Cynara Scolymus</em> posee beneficios ampliamente conocidos: contribuye a la detoxificaci&oacute;n del organismo, aumenta la producci&oacute;n de bilis, ayuda a la regeneraci&oacute;n de las membranas de los hepatocitos y mejora la respuesta inmune. La inclusi&oacute;n de <em>Cloruro de Colina</em> contribuye a la movilizaci&oacute;n de grasas, acci&oacute;n fundamental para un funcionamiento optimo del h&iacute;gado.</p>"&_
				"<p>La forma de administraci&oacute;n de <strong>BEDGEN 40&trade;</strong> es v&iacute;a oral, tanto en agua de bebida como en alimento, permitiendo as&iacute; adaptar el producto a la necesidad de cada establecimiento productor. Sus presentaciones regular y concentrado tambi&eacute;n facilitan la inclusi&oacute;n en agua o alimento de acuerdo a las instalaciones disponibles.</p>"&_
				"<p>Indicado para reducir los niveles de estr&eacute;s producidos por las diferentes etapas del ciclo de crianza, <strong>BEDGEN 40&trade;</strong> puede administrarse durante todo el ciclo de producci&oacute;n como prevenci&oacute;n (en agua de bebida durante la primer semana y mezclado en el alimento posteriormente). Para casos puntuales de intoxicaci&oacute;n aguda en cualquier momento del ciclo, la inclusi&oacute;n de <strong>BEDGEN 40&trade;</strong> en el agua de bebida es una herramienta &uacute;til que contribuir&aacute; a la r&aacute;pida recuperaci&oacute;n de la funci&oacute;n hep&aacute;tica, minimizando as&iacute; las p&eacute;rdidas econ&oacute;micas que conlleva este tipo de problema. Frente a enfermedades bacterianas, <strong>BEDGEN 40&trade;</strong> ayuda en la recuperaci&oacute;n fisiológica del animal y por ende reduce las p&eacute;rdidas económicas que pudieran derivar de un &iacute;ndice de conversi&oacute;n deficiente.</p>"
End If %>
</head>
<body>
  <div class="col_izq" id="col_izq">
   <div id="titulo" align="left">
    <div class="titNota"><% =titulo %></div>
    <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
   </div>
   <img src="img/titProd_b40SFAC.png" alt="Bedgen 40 SFA" width="347" height="72" align="middle" />
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
