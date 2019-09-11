<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/politica.css" rel="stylesheet" type="text/css" />
<% Response.Expires = 0 %>
<%
idNota = Request("id")
If request("i") = "en" Then
	idioma ="en"
	titNota = "Management System Policy - Bedson S.A."
	cuerpoNota = "<p>BEDSON S.A. is a company specialized in the Design, Development, Manufacture, Marketing and Distribution of pharmaceutical products for use in the veterinary industry. Quality is one of the foundational principles of Bedson. We understand that quality must be an attitude and as such it must be reflected in each of our actions. Not only in our products but also in our day-to-day work. In tune with the Principles governing the business, the company has developed a Management System (SGB, Sistema de Gestión Bedson S.A. as per the Spanish acronym) which includes all aspects related to Quality, Good Manufacturing Practices, Social Responsibility, Environment, Safety and Occupational Health, and is committed to meet all the requirements thereof:</p>"&_
	"<ul><li><b>CONTINUOUS IMPROVEMENT:</b> Bedson S.A. works to continuously improve the efficiency of its Management System, by assessing its performance, implementing the necessary corrections so as to achieve the goals proposed and by setting goals for improvement.</li>"&_
	"<li><b>LEGAL REQUIREMENTS:</b> Bedson S.A. complies with the legislation that is applicable to its business, industrial operation, environmental aspects and hazards to occupational safety and health.</li>"&_
	"<li><b>VALUES:</b> Bedson SA, undertakes to promote and disseminate the values of corporate social responsibility among its associate members, as well as all stakeholders that the organization reaches, constantly looking for tools so that they adhere to their culture of CSR therefore thus joined the Global Compact Programme of the United Nations by aligning the business to them.</li>"&_
	"<li><b>PREVENTION:</b> Bedson S.A. is committed to prevent cross-contamination, environmental pollution, injuries and disease during all its activities. For this reason, processes are analyzed and a HACCP system is implemented for Feed Additives manufacturing, the corresponding measures are implemented, and a previous evaluation is made on the potential impacts of all its activities that might have an impact on product quality, the environment, on product safety and on people’s safety and health, in such a manner as to ensure that the necessary preventive measures are adopted.</li>"&_
	"<li><b>CUSTOMER SATISFACTION:</b> Customer Satisfaction is our priority. Bedson strives to understand the current and future needs of its customers, to satisfy their demands and to exceed their expectations. In the event of a customer’s complaint, two measures are taken:</li>"&_
	"<ol><li>Immediate assistance and</li>"&_
	"<li>Efficient implementation of corrective measures so as to avoid making the same error again.</li></ol>"&_
	"<li><b>STAFF:</b> Bedson S.A. applies the requirements of the Management System to all company employees and activities while promoting a corporate culture which enables all staff to share this commitment.</li>"&_
	"<li><b>COMMUNICATION:</b> Bedson S.A. imparts this policy to its staff, suppliers, customers, contractors and community with a view to encouraging similar behaviors.</li></ul>"&_
	"<p><em>The BEDSON S.A Board is committed to assign the physical and human resources that are needed to implement and ensure an effective Management System.</em></p>"&_
	"<div style='text-align:right;'><p><b>Alicia Romero de Colusi<br/>Vice-president</b></p></div>"
Else
	idioma = "es"
	titNota = "Pol&iacute;tica del Sistema de Gesti&oacute;n de Bedson S.A."
	cuerpoNota = "<p>BEDSON S.A. es una empresa dedicada al Dise&ntilde;o, Desarrollo, Producci&oacute;n, Comercializaci&oacute;n y Distribuci&oacute;n de productos Farmac&eacute;uticos y Aditivos Alimentarios para uso Veterinario. La calidad es uno de los principios fundacionales de Bedson. Entendemos que la calidad debe ser una actitud y como tal debe reflejarse en cada una de  nuestras acciones. No s&oacute;lo en nuestros productos sino tambi&eacute;n en nuestro trabajo cotidiano. En sinton&iacute;a con los Principios que rigen el negocio, la empresa ha desarrollado un Sistema de Gesti&oacute;n (SGB S.A.) que incluye todos los aspectos relacionados con la Calidad, las Buenas Pr&aacute;cticas de Fabricaci&oacute;n, Responsabilidad Social, el Medio Ambiente, Seguridad y Salud Ocupacional, y se compromete a cumplir con todos los requisitos del mismo:</p>"&_
	"<ul><li><b>MEJORA CONTINUA:</b> Bedson S.A. trabaja en la mejora continua de la eficacia de su Sistema de Gesti&oacute;n, evaluando su desempe&ntilde;o, implementando las correcciones necesarias para alcanzar los logros propuestos y estableciendo objetivos de mejora.</li>"&_
	"<li><b>REQUISITOS LEGALES:</b> Bedson S.A. cumple con la legislaci&oacute;n aplicable a su negocio, operaci&oacute;n industrial, en cuanto a fabricaci&oacute;n de F&aacute;rmacos y Aditivos Alimentarios y aspectos ambientales y peligros para la seguridad y salud ocupacional. </li>"&_
	"<li><b>VALORES;</b> Bedson S.A, se compromete a Promover y difundir los valores de la Responsabilidad Social Empresarial entre sus miembros asociados, as&iacute; como en todos los grupos de inter&eacute;s que alcanza la organizaci&oacute;n, buscando constantemente herramientas para que estos adhieran a su cultura de RSE, consecuentemente con ello, adhiri&oacute; al Programa del Pacto Global de las Naciones Unidas, alineando el  negocio a los mismos.<b></b></li>"&_
	"<li><b>PREVENCI&Oacute;N:</b> Bedson S.A. se compromete a prevenir la contaminación cruzada, ambiental, las lesiones y enfermedades en todas sus actividades. Por este motivo, se analizan los procesos, se implementa un sistema HACCP para Aditivos Alimentarios, se implementan las mejoras correspondientes y se evalúan por anticipado las repercusiones potenciales de todas las actividades y procesos relativos a la Calidad de los productos Farmacéuticos y Aditivos  Alimentarios, el Medio Ambiente, la Seguridad de los productos y la Salud y seguridad de las personas, de forma tal de adoptar las medidas preventivas requeridas.</li>"&_
	"<li><b>SATISFACCI&Oacute;N DEL CLIENTE:</b> La Satisfacci&oacute;n del Cliente es nuestra prioridad. Bedson se esfuerza por comprender las necesidades actuales y futuras de sus clientes, conocer y satisfacer sus requisitos y exceder sus expectativas. Frente a un reclamo de un cliente se desencadenan dos l&iacute;neas de acci&oacute;n:</li>"&_
	"<ol><li>Una inmediata asistencia y </li>"&_
	"<li>Una eficaz implementaci&oacute;n de acciones correctivas que eviten incurrir nuevamente en la misma falta.</li></ol>"&_
	"<li><b>PERSONAL:</b> Bedson S.A. aplica los requerimientos del Sistema de Gesti&oacute;n a todos los empleados y actividades de la compa&ntilde;&iacute;a y promueve una cultura empresaria en la cual todo el personal comparta este compromiso.</li>"&_
	"<li><b>COMUNICACI&Oacute;N:</b> Bedson S.A. difunde esta pol&iacute;tica a su personal, a proveedores, clientes, contratistas y comunidad, con el objetivo de inducir comportamientos similares.</li>"&_
	"</ul>"&_
	"<p><em>La Direcci&oacute;n de BEDSON S.A. se compromete a asignar los recursos f&iacute;sicos y humanos necesarios para implementar y asegurar la efectividad del Sistema de Gesti&oacute;n.</em></p>"&_
	"<div style='text-align:right;'><p><b>Alicia Romero de Colusi<br/>Vicepresidente</b></p></div>"
End If %>
</head>
<body>
 <div style="padding-top:10px; padding-bottom:10px;">
  <div class="titNota"><% =titNota %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
 </div>
 <div class="cuerpo"><% =cuerpoNota %></div>
</body>
</html>
