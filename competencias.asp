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
	titSeccion = "OUR CORE COMPETENCES"
	subTit = "Things we do best …"
	textoSeccion = "<p><strong>Innovative Products</strong></p>"&_
	"<p>Our main core competency and competitive advantage lie in our ability to research and develop new products that are unique and innovative in their formulation and application.</p>"&_
	"<p>This ability stems from the knowledge base and experience that we have built successfully over the years, both at laboratory and field levels. </p>"&_
	"<p>What consolidates this ability is the fact that one of the founders, Dr. Arnaldo Colusi, who was at the helm of our scientific technical department  for many years, was one of the most important scientists and an internationally recognized authority in the field of avian pathology and microbiology. The legacy of his work is still an invaluable source of information for our current Research and Development department.    </p>"&_
	"<p><strong>Strategic Application Programs</strong></p>"&_
	"<p>Our deep understanding and knowledge of the key problem areas in today’s intensive livestock production systems has led us to develop specific concepts that describe with  great precision the health condition of the animals at given periods of time during their production life cycle.</p>"&_
	"<p>These concepts that describe the underlying causes of the apparent problems affecting productivity, have been used to develop solutions to many of today´s production problems  . </p>"&_
	"<p>Concretely, these solutions are tailor-made strategic application programs that make use of one or many of our products simultaneously at specific periods of time and with specific dose rates, all based on the particular situation of the farm or flock that is to be defined via thorough diagnosis.</p>"&_
	"<p>This unique approach has allowed us to come very close to farmers and producers and to build strong partnerships together based on understanding and mutual interest.  This is another core competency that gives us an edge over competition.  </p>"&_
	"<p><strong>Technical Support</strong></p>"&_
	"<p>Our third most important core competency is the Technical-Commercial support we provide our customers with. In today’s intensive production systems, no one problem comes alone and in the majority of cases, any problem is but part of a multifactorial situation.</p>"&_
	"<p>Understanding this concept and being able to reveal the underlying causalities of a multifactorial problem is crucial to  understanding what the real problem is and what the best solution to that problem is.</p>"&_
	"<p>The experience our technical staff has acquired over the years in the four corners of the world, working in the field to solve concrete problems under different conditions and systems, is an excellent tool that we use to help our customers resolve their own problems.</p>"
Else
	idioma = "es"
	titSeccion = "NUESTRAS COMPETENCIAS CLAVE"
	subTit = "Lo que mejor hacemos"
	textoSeccion = "<p><strong>Productos Innovadores</strong></p>"&_
	"<p>Nuestra fortaleza principal y ventaja competitiva se encuentra en la habilidad de investigar y desarrollar nuevos productos, &uacute;nicos e innovadores en su formulaci&oacute;n y aplicaci&oacute;n. </p>"&_
	"<p>Esta habilidad surge de la base de conocimiento y experiencia que hemos construido y adquirido a trav&eacute;s de los a&ntilde;os, tanto en el laboratorio, como a campo. </p>"&_
	"<p>Lo que consolida esta habilidad es el hecho que uno de los fundadores, el Dr. Arnaldo Colusi, quien estuvo al frente de nuestro departamento t&eacute;cnico y cient&iacute;fico, fue uno de los cient&iacute;ficos m&aacute;s importantes y una autoridad con reconocimiento internacional  en el campo de la patolog&iacute;a y microbiolog&iacute;a aviar. El legado  de su trabajo es todav&iacute;a una fuente valiosa de informaci&oacute;n para nuestro departamento de Investigaci&oacute;n y Desarrollo. </p>"&_
	"<p><strong>Programas de Aplicaci&oacute;n Estrat&eacute;gicos</strong></p>"&_
	"<p>Nuestro conocimiento y comprensi&oacute;n integral de la problem&aacute;tica de los actuales sistemas de producci&oacute;n intensivos nos han llevado a desarrollar con gran precisi&oacute;n conceptos espec&iacute;ficos que describen las condiciones de salud animal en los per&iacute;odos claves del ciclo de producci&oacute;n. </p>"&_
	"<p>Estos conceptos, que describen las causas fundamentales de problemas aparentes afectando la productividad, han sido utilizados para desarrollar programas que ofrecen soluciones a un gran n&uacute;mero de problemas de producci&oacute;n de la actualidad.</p>"&_
	"<p>Concretamente, estas soluciones son programas de aplicaci&oacute;n estrat&eacute;gicos customizados, que dan uso a uno o varios de nuestros productos simult&aacute;neamente, en per&iacute;odos de tiempo espec&iacute;ficos, con dosificaciones definidas. Cada programa es definido en base a un diagn&oacute;stico cabal de la situaci&oacute;n particular de cada granja o grupo de animales en particular.</p>"&_
	"<p>Este enfoque original nos ha permitido aproximarnos a granjeros y productores y construir relaciones s&oacute;lidas basadas en la comprensi&oacute;n e inter&eacute;s mutuo. Esta es otra de nuestras competencias claves y  una gran ventaja competitiva. </p>"&_
	"<p><strong>Soporte T&eacute;cnico</strong></p>"&_
	"<p>Nuestra tercera fortaleza  mas destacable es el apoyo T&eacute;cnico-Comercial que brindamos a nuestros clientes. En los sistemas productivos intensivos de hoy en d&iacute;a, ning&uacute;n problema surge en forma aislada, y en la mayor&iacute;a de los casos, cada problema es solo una parte de una problem&aacute;tica multifactorial. </p>"&_
	"<p>Comprender este concepto y descubrir los factores causales de un problema multifactorial es crucial para poder definir el problema real y ofrecer la mejor soluci&oacute;n.</p>"&_
	"<p>La experiencia que nuestro staff t&eacute;cnico ha adquirido a trav&eacute;s de los a&ntilde;os en las cuatro esquinas del mundo, trabajando en el campo para resolver problemas concretos bajo condiciones y sistemas diversas es una herramienta de excelencia que utilizamos para asistir a nuestros clientes en encontrar soluciones a sus dificultades de produccion.</p>"
End If %>
</head>
<body>
 <div class="izqFino"><img src="img/imgCompetencias.jpg" width="360" height="330" alt="<% =titSeccion %>" /></div>
 <div class="derAncho">
  <div class="titNota"><% =subTit %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="cuerpoSeccion"><% =textoSeccion %></div>
 </div>
</body>
</html>
