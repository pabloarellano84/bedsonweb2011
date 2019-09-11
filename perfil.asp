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
	titSeccion = "PROFILE"
	subTit = "Success Story"
	textoSeccion = "<p><strong>BEDSON</strong> is an innovative pharmaceutical company that develops, manufactures and markets proprietary pharmaceutical specialties for the animal health industry. In more than 25 years of research on alternative therapies, <strong>BEDSON</strong> has developed original product lines that include proprietary antibiotic compounds, liver protectors, immune system stimulants, anti-thermal aids and polyvitamin energizers.</p>"&_
	"<p>Back in 1979 <strong>BEDSON</strong>  pioneered the research, development and worldwide use of Fosfomycin as a veterinary antibiotic, becoming an internationally respected reference for scientific innovation.</p>"&_
	"<p>With a client-driven approach, <strong>BEDSON</strong> has developed for its product lines strategic application programs in order  improve productive performance of its clients and optimize return on investment.</p>"&_
	"<p><strong>BEDSON</strong> boasts a highly qualified technical and commercial support team of experts that works alongside livestock producers to offer world class pre- and post-sale consulting services.</p>"&_
	"Innovation and Quality, supported by an ongoing commitment to process improvement, are values that <strong>BEDSON</strong> assumes with responsibility. <strong>BEDSON</strong>’s industrial plant in Pilar, Province of Buenos Aires (Argentina) meets the strictest international quality standards.</p>"&_
	"<p>In 2002, the production plant became GMP certified; being the first Argentine company in the industry to be awarded this standard of good manufacturing practice.<br/>"&_
	"In 2005 the ISO 14001 certificate was obtained, a symbol of <strong>BEDSON</strong>’s concern and contribution to the environment.<br/>"&_
	"In 2006 <strong>BEDSON</strong> implemented the sophisticated management system SAP in response to the company’s impressive growth record.<br/>"&_
	"In 2007 the occupational health and safety management certificate OHSAS 18001 was awarded.</p>"&_
	"<p>These certifications uphold the company’s commitment to continual improvement of product and service quality and reflect the company’s pursuit to improve the quality of life for all its stakeholders, the local community and society at large.<br/>"&_
	"A corporate policy based on shared principles, cares for both internal and external organizations, encourages its staff to pursue permanent professional growth and instills a work culture that has become the pride of every individual that works at <strong>BEDSON</strong> to offer animal health solutions throughout the globe.<br/>"&_
	"In less than three decades, <strong>BEDSON</strong> has grown from being a small local laboratory to becoming a global company that exports over 90% of its total output to over 50 countries on 5 continents,  whether directly through its regional offices, or indirectly via an extended distribution network.</p>"&_
	"<p><strong>BEDSON</strong>’S direct support structure includes exclusive agent offices and production facilities in Argentina, the USA, Mexico, Spain, the Dominican Republic, Guatemala, Honduras, El Salvador, Uruguay, Lebanon and Malaysia from where business activities in North, Central and South  America, Europe, the Middle East, Asia and Africa are coordinated.</p>"
Else
	idioma = "es"
	titSeccion = "PERFIL"
	subTit = "Historia de &Eacute;xito"
	textoSeccion = "<p><strong>BEDSON</strong> es una empresa global innovadora que desarrolla, fabrica y comercializa especialidades farmac&eacute;uticas destinadas para la industria de salud animal. En m&aacute;s de 25 a&ntildeos de investigaci&oacute;n sobre terapias alternativas, <strong>BEDSON</strong> ha desarrollado l&iacute;neas de productos originales que incluyen compuestos antibi&oacute;ticos, moduladores hep&aacute;ticos, estimulantes del sistema inmune, antit&eacute;rmicos y energizantes polivitam&iacute;nicos.</p>"&_
	"<p>A partir de 1979 <strong>BEDSON</strong> fue pionero en la investigaci&oacute;n, desarrollo y la utilizaci&oacute;n a nivel mundial de la fosfomicina como antibi&oacute;tico veterinario, convirti&eacute;ndose en un referente mundial en la innovaci&oacute;n cient&iacute;fica.</p>"&_
 	"<p>Con el enfoque cimentado en la satisfacci&oacute;n del cliente, <strong>BEDSON</strong> ha desarrollado para su l&iacute;nea de productos Programas de Aplicaci&oacute;n Estrat&eacute;gicos de avanzada para proveer las herramientas &oacute;ptimas que asistan a mejorar los par&aacute;metros productivos de sus clientes y optimizar el retorno de su inversi&oacute;n.</p>"&_
	"<strong>BEDSON</strong> se enorgullece de su equipo de expertos t&eacute;cnicos que trabajan en estrecha colaboraci&oacute;n con los productores para brindar un servicio de excelencia de consultor&iacute;a  pre- y post- venta. Innovaci&oacute;n y Calidad, apoyado por un compromiso permanente de mejora de procesos, son valores que <strong>BEDSON</strong> y su staff asumen con responsabilidad. Su planta industrial en Pilar, Provincia de Buenos Aires, Argentina cumple los est&aacute;ndares internacionales de calidad m&aacute;s estrictos.</p>"&_
	"<p>En el a&ntildeo 2002, <strong>BEDSON</strong> fue la primera empresa Argentina de la industria en recibir  la certificaci&oacute;n de la norma GMP para su planta de producci&oacute;n. En 2005 obtuvo el certificado ISO 14001, un s&iacute;mbolo de preocupaci&oacute;n y contribuci&oacute;n al medio ambiente.<br/>"&_
	"En 2006, en respuesta a un crecimiento extraordinario, <strong>BEDSON</strong> implement&oacute; el sofisticado  sistema de gesti&oacute;n SAP.<br/>"&_
	"En 2007 se logr&oacute; el certificado de gesti&oacute;n de seguridad y salud OHSAS 18001.</p>"&_
	"<p>Estas certificaciones sostienen el compromiso <strong>BEDSON</strong> de mejora continua y reflejan  la aspiraci&oacute;n a mejorar la calidad de vida para todos sus stakeholders, de la comunidad local y la sociedad en general.</p>"&_
	"<p>Una pol&iacute;tica corporativa, basada en principios compartidos, vela por las organizaciones internas y externas, motiva el staff de <strong>BEDSON</strong> hacia un crecimiento profesional permanente e instala una cultura de trabajo que se ha vuelto el orgullo de cada individuo que trabaja en <strong>BEDSON</strong> para ofrecer soluciones de salud animal alrededor del mundo.</p>"&_
	"En menos de tres d&eacute;cadas <strong>BEDSON</strong>, de ser un laboratorio local, se ha convertido en una empresa global que exporta m&aacute;s del 90% de su producci&oacute;n a 50 pa&iacute;ses del mundo en los cinco continentes, directamente por sus oficinas regionales o a trav&eacute;s de su red extensa de distribuci&oacute;n.</p>"&_
	"<p>La estructura de soporte directa de <strong>BEDSON</strong> incluye oficinas y producci&oacute;n en Argentina, Estados Unidos, Mexico,  Espa&ntildea, la Rep&uacute;blica Dominicana, Guatemala, Honduras, El Salvador, Uruguay, el L&iacute;bano y Malasia-  desde donde se coordina la actividad comercial en Norte, Centro y Sudam&eacute;rica, Europa, Medio Oriente, Asia y Africa.</p>"
End If %>

</head>
<body>
 <div class="izqFino"><img src="img/imgPerfil.jpg" width="360" height="330" alt="Perfil" /></div>
 <div class="derAncho">
  <div class="titNota"><% =subTit %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="cuerpoSeccion"><% =textoSeccion %></div>
 </div>
</body>
</html>
