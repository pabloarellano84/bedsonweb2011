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
	titSeccion = "OUR VALUES"
	subTit = "Shared values we live by…"
	textoSeccion = "<p><strong>Customer Satisfaction</strong><br/>The market is our driving force. Without it we would not exist. We permanently strive to satisfy our customers, by understanding their wants, and delivering what we have promised, flawlessly.</p>"&_
	"<p><strong>Excellence</strong><br/>As a learning organization, we put much effort in the search of excellence in every aspect of our business, be it on individual or collective level. Excellent product and service quality, delivered by a dedicated staff is a firm commitment by which we abide, uncompromisingly. </p>"&_
	"<p><strong>Efficiency</strong><br/>We put major focus on continual optimization of productivity at all levels through an ongoing commitment to process improvement and workflow, supported by a policy of better management and best quality practices.</p>"&_
	"<p><strong>Leadership</strong><br/>We have been leaders and pioneered many important discoveries and biotechnological innovations over the past 32 years, and we intend to continue leading as  innovators in the field of our specialty.</p>"&_ 
	"<p><strong>Team work</strong><br/>We believe in team work and we endeavor to encourage it at every level of our organization. We value our teams´ cultural and professional skills diversity, and work hard to foster a participatory work environment with no barrier to creativity and the free flow of ideas.</p>"&_ 
	"<p><strong>Empowerment</strong><br/>Empowerment is one of the main pillars of our business philosophy because we believe in the potential that lies within each individual and because we know that only trust can unleash the creative energy of people. We trust and empower our team of collaborators who are scattered all over 5 continents, spread over more then 12 hours time zones and working in very different cultural and geographical environments.</p>"&_
	"<p><strong>Integrity</strong><br/>We believe that our business should be conducted within the boundaries of corporate ethics and lawful practices. We have always honored our commitments and taken personal responsibility for the morality of our actions. This has always proven to be beneficial and we intend to maintain this behavior in every course of action we pursue.</p>"&_ 
	"<p><strong>Respect</strong><br/>For us, this value is the foundation and basis of all others. Without mutual respect, nothing can be done, no customer satisfaction, no excellence, no efficiency, no leadership, no team work, no empowerment and no integrity. That’s why, we at BEDSON, respect our stakeholders, staff and associates. We respect the communities we interact with, and  the environment we live in and we respect life and care for the well being and health of the animals that are, ultimately, the end users of our products.</p>"
Else
	idioma = "es"
	titSeccion = "NUESTROS VALORES"
	subTit = "Valores Compartidos que nos gu&iacute;an…"
	textoSeccion = "<p><strong>Satisfacci&oacute;n del Cliente</strong><br/>El mercado es la fuerza que nos gobierna. Sin el, no existimos. Es por eso que debemos esmerarnos a satisfacer nuestros clientes en forma permanente. Primero, comprendiendo sus deseos y necesidades para luego entregar lo que hemos prometido, en forma impecable.</p>"&_
	"<p><strong>Excelencia</strong><br/>Como una organizaci&oacute;n de aprendizaje, nos esforzamos continuamente en lograr niveles de excelencia en cada aspecto de nuestro negocio, tanto a nivel individual como a nivel colectivo. Una calidad de excelencia de productos y servicios, brindada por un staff dedicado, es el compromiso firme e ineludible que rubricamos.</p>"&_
	"<p><strong>Eficiencia</strong><br/>Asignamos suma importancia a la optimizaci&oacute;n continua de la productividad a todo nivel, a trav&eacute;s de un compromiso incesante a la mejora de procesos y flujos de trabajo, apoyados por una pol&iacute;tica de mejores pr&aacute;cticas de gesti&oacute;n.</p>"&_
	"<p><strong>Liderazgo</strong><br/>Durante los &uacute;ltimos 32 a&ntilde;os hemos sido l&iacute;deres y pioneros en descubrimientos importantes e innovaciones biotecnol&oacute;gicos. Ambicionamos continuar siendo l&iacute;deres e innovadores en el &aacute;rea de nuestra especialidad. </p>"&_
	"<p><strong>Trabajo en equipo</strong><br/>Creemos en el trabajo en equipo y ambicionamos promover el estilo a cada nivel de nuestra organizaci&oacute;n.  Valoramos la diversidad de habilidades profesionales y culturales de nuestros equipos y promovemos un ambiente de trabajo participativo, sin barreras a la creatividad y al libre flujo de ideas. </p>"&_
	"<p><strong>Empowerment</strong><br/>El empowerment es uno de los pilares centrales de nuestra filosof&iacute;a de negocios.  Creemos que el potencial se encuentra dentro de cada individuo y solo la confianza puede liberar la energ&iacute;a creativa de una persona.  Confiamos y delegamos en nuestro equipo de colaboradores, dispersos en los 5 continentes, extendidos sobre m&aacute;s de 12 husos horarios,  trabajando con culturas muy diversas y ambientes geogr&aacute;ficos diferentes. </p>"&_
	"<p><strong>Integridad</strong><br/>Creemos que todo negocio debe ser conducido dentro del marco de la &eacute;tica profesional. Siempre hemos honrado nuestros compromisos y asumido nuestras acciones con responsabilidad personal. Esta filosof&iacute;a siempre dio su fruto y ambicionamos continuar con integridad y con acciones que se encuentren dentro del marco legal y la &eacute;tica corporativa.</p>"&_
	"<p><strong>Respeto</strong><br/>Para nosotros el respeto es fundamental y la base de todos nuestros valores. Sin el respeto mutuo no se logra nada. No puede haber satisfacci&oacute;n del cliente, ni excelencia, ni eficiencia, ni liderazgo, ni trabajo en equipo, ni empoderamiento, ni integridad. Es por eso que en BEDSON respetamos nuestros stakeholders, respetamos nuestro staff y asociados, respetamos las comunidades en que vivimos y  con quien interactuamos, respetamos el medio ambiente y respetamos la vida y cuidamos por el bienestar y salud de los animales que son, despu&eacute;s de todo, los consumidores finales de nuestros productos.</p>"
End If %>
</head>
<body>
 <div class="izqFino"><img src="img/imgValores.jpg" width="360" height="330" alt="<% =titSeccion %>" /></div>
 <div class="derAncho">
  <div class="titNota"><% =subTit %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="cuerpoSeccion"><% =textoSeccion %></div>
 </div>
</body>
</html>
