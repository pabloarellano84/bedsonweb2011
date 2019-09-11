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
	titSeccion = "OUR ACHIEVEMENTS"
	subTit = "Things we were first to do …"
	textoSeccion = "<p>BEDSON pioneered many microbiological discoveries in Latin America and was the first to innovate and develop new products through scientific research:</p>"&_
	"<p>Discoveries achieved by Dr. Arnaldo Colusi and Dr. Omar Romano</p>"&_
	"<p>&ndash;&nbsp;First to isolate and identify Mycoplasma (PPLO) </p>"&_
	"<p>&ndash;&nbsp;First to isolate and identify the virus that causes Newcastle disease </p>"&_
	"<p>&ndash;&nbsp;First to isolate and identify the virus that causes infectious bronchitis </p>"&_
	"<p>&ndash;&nbsp;First to isolate and identify the agent that causes Necrotic Enteritis </p>"&_
	"<p>&ndash;&nbsp;First to isolate and re-identify the 9R strain and to manufacture the vaccine for Fowl Typhosis </p>"&_
	"<p><strong>Innovations</strong></p>"&_
	"<p>&ndash;&nbsp;First to incorporate oily mediums in non activated vaccines </p>"&_
	"<p>&ndash;&nbsp;First to develop a vaccine for Fowl Reovirus </p>"&_
	"<p>&ndash;&nbsp;First to develop and adapt Fosfomycin as an antibiotic for use in veterinarian application worldwide</p>"&_
	"<p>&ndash;&nbsp;Pioneer in the use and production of High Energy Carbohydrates as vitalizing therapy for veterinary use worldwide</p>"&_
	"<p>&ndash;&nbsp;Pioneer in the incorporation of natural medicinal herbs as feed additives in substitution for chemical additives or antibiotics</p>"
Else
	idioma = "es"
	titSeccion = "NUESTROS LOGROS"
	subTit = "Fuimos los primeros"
	textoSeccion = "<p>BEDSON fue pionero en realizar un n&uacute;mero de descubrimientos microbiol&oacute;gicos en Latinoam&eacute;rica y fue primero en innovar y desarrollar nuevos productos a trav&eacute;s de la investigaci&oacute;n cient&iacute;fica. </p>"&_
	"<p>Descubrimientos desarrollados por los Dres. Arnaldo Colusi y Omar Romano</p>"&_
	"<p>&ndash;&nbsp;Primero en aislar e identificar Mycoplasmas aviares (PPLO)</p>"&_
	"<p>&ndash;&nbsp;Primero en aislar e identificar el virus causal de la enfermedad de Newcastle</p>"&_
	"<p>&ndash;&nbsp;Primero en aislar e identificar el virus causal de la Bronquitis infecciosa</p>"&_
	"<p>&ndash;&nbsp;Primero en aislar e identificar el agente causal de la Enteritis necr&oacute;tica</p>"&_
	"<p>&ndash;&nbsp;Primero en aislar y re-identificar la cepa 9R y fabricar la vacuna contra la Tifosis aviar </p>"&_
	"<p><strong>Innovaciones</strong></p>"&_
	"<p>&ndash;&nbsp;Primero en incorporar veh&iacute;culos oleosos en vacunas inactivadas</p>"&_
	"<p>&ndash;&nbsp;Primero en desarrollar una vacuna contra el reovirus aviar</p>"&_
	"<p>&ndash;&nbsp;Primero en desarrollar y adaptar la Fosfomicina como antibi&oacute;tico para uso veterinario a nivel mundial</p>"&_
	"<p>&ndash;&nbsp;Pionero en la incorporaci&oacute;n de hierbas medicinales naturales como aditivos alimenticios en sustituci&oacute;n de  aditivos qu&iacute;micos o antibi&oacute;ticos.</p>"
End If %>
</head>
<body>
 <div class="izqFino"><img src="img/imgLogros.jpg" width="360" height="330" alt="<% =titSeccion %>" /></div>
 <div class="derAncho">
  <div class="titNota"><% =subTit %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="cuerpoSeccion"><% =textoSeccion %></div>
 </div>
</body>
</html>
