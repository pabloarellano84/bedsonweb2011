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
	titSeccion = "OUR MISSION"
	subTit = "Commitment to Research, Innovation and Quality"
	textoSeccion = "<p>Our mission is to provide livestock producers worldwide with innovative, technically advanced and unique proprietary lines of veterinary products that improve animal health while optimizing productive performance.</p>"&_
	"<p>We capitalize on our experience and highly qualified technical staff to provide our customers with world-class technical advice and assistance, helping them identify key problem areas at their production facilities.</p>"&_
	"<p>We commit ourselves to continual research, innovation and quality under a client-driven approach in total respect to environment and surrounding communities.</p>"&_
	"<p>We create for our staff a dynamic and motivating working environment that spurs team spirit and encourages team work among our highly professional collaborators whose commitment, hard work, and strategic thinking are duly appreciated through financial remuneration and job promotion.</p>"&_
	"<p>Throughout the exercise of our mission, we strive to maximize our shareholders profits while strictly abiding by business ethics and lawful practices. Integrity, quality and transparency are the core values upon which we build our business.</p>"
Else
	idioma = "es"
	titSeccion = "NUESTRA MISI&Oacute;N"
	subTit = "Compromiso con la Investigaci&oacute;n, Innovaci&oacute;n y Calidad"
	textoSeccion = "<p>Nos hemos fijado la misi&oacute;n de proveer a los productores pecuarios a nivel mundial l&iacute;neas de productos veterinarios &uacute;nicas,  innovadoras y  t&eacute;cnicamente avanzadas que, a la vez de mejorar la salud animal, optimicen los resultados productivos de nuestros clientes.</p>"&_
	"<p>Capitalizamos la experiencia de nuestro staff t&eacute;cnico altamente calificado para poder ofrecer a nuestros clientes un servicio de excelencia de consultor&iacute;a y asistencia, ayudando a identificar las &aacute;reas de problemas claves en sus instalaciones productivas.</p>"&_
	"<p>Nos comprometemos al desarrollo continuo de  investigaci&oacute;n, innovaci&oacute;n y calidad bajo un enfoque cimentado en la satisfacci&oacute;n del cliente, respetando el medio ambiente y  las comunidades que nos rodean.</p>"&_
	"<p>Creamos un ambiente de trabajo para nuestro staff que estimula el esp&iacute;ritu de equipo, e incita al trabajo colaborativo entre nuestros asociados altamente calificados, cuyo compromiso, trabajo, esfuerzo y pensamiento estrat&eacute;gico es apreciado a trav&eacute;s de la remuneraci&oacute;n financiera y ascensos profesionales.</p>"&_
	"<p>En la implementaci&oacute;n de nuestra misi&oacute;n nos empe&ntildeamos en maximizar los dividendos de nuestros accionistas, cumpliendo con las normas &eacute;ticas y las pr&aacute;cticas legales correctas. Integridad, calidad y transparencia son valores esenciales sobre los cuales construimos nuestro negocio.</p>"
End If %>
</head>
<body>
 <div class="izqFino"><img src="img/imgMision.jpg" width="360" height="330" alt="<% =titSeccion %>" /></div>
 <div class="derAncho">
  <div class="titNota"><% =subTit %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="cuerpoSeccion"><% =textoSeccion %></div>
 </div>
</body>
</html>
