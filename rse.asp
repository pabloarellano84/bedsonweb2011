<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/rse.css" rel="stylesheet" type="text/css" />
<% Response.Expires = 0 %>
<%
If request("i") = "en" Then
	idioma ="en"
	titSeccion = "CORPORATE SOCIAL RESPONSIBILITY"
	titTxt01 = "Bedson´s  Commitment"
	titTxt02 = "Corporate Social Responsibility: A new trend, with a history in Bedson"
	txt01_colizq = "<p>Bedson S.A marks a difference in the pharmaceutical industry for veterinary use around the world.  Bedson’s products provide established solutions. However, the company not only bears the imprint of effectiveness but also of success of its brand.</p><p>Since its inception, Bedson has grown thanks to its community and its complete support. Respect, assistance and prevention include acts and words that the company has put in practice since 1979.</p><p>Bedson’s founding fathers, Dr. Omar Romano and Dr Arnaldo Colusi, laid the company’s groundwork convinced that values such as solidarity, working culture, environmental care and social progress are the basis for the company’s growth.</p>"
	txt01_colder = "<p>Growing at any cost is a premise which was never included in the company’s objectives. Bedson chooses at all times to make progress thinking about the commitment made with each community in the 5 continents where the company is present.</p><p>The concept of sustainability is a reality for the company. The company has not only taken action when events occurred, but it also has distinguished itself for implementing a prevention culture in matters such as environment, education, and staff care. Each of these concepts combines into a corporate policy that consequently puts human values into practice. Bedson believes that it can and it should contribute to the happiness of its community and its environment.</p><p>Getting involved is the task. Bedson has committed, and as years went by it consolidated as a good citizen and one that is responsible for sustainable growth of each community where it operates.</p>"
	txt02_colizq = "<p>The company is today gradually incorporating activities and initiatives worldwide with a view to undertaking responsibility as a company and its relation to society or the community.</p><p>Bedson´s history began back in 1979 as a pioneer in the veterinary pharmaceutical industry anticipating a trend which today has expanded worldwide.</p><p>Since 1979, Bedson has established an added value in the industry.</p>"
	txt02_colder = "<p>In each of the five continents where the company is established, the following objectives were strategically and systematically scheduled, designed and executed:</p><p>&deg;&nbsp;Creating Social-Corporate Value<br/>&deg;&nbsp;Creating Environmental Value.<br/>&deg;&nbsp;Creating Value through Private Social Investment</p>"
	txt03_colizq = "<p>&deg;&nbsp;Bedson undertakes the commitment as an integral part of its strategy and its operation, it fulfils the ten principles regarding conduct and action on human rights, work, environment and the fight against corruption.</p><p>&deg;&nbsp;An active member as regards social cooperation and participation in activities related to public welfare.</p>"
	txt03_colder = "<p>&deg;&nbsp;A private complement for common actions in public agencies.</p><p>&deg;&nbsp;Outstanding member in social responsibility organizations.</p><p>&deg;&nbsp;Innovation and commitment regarding social welfare in the community.</p>"
	txt04_colizq = "<p>&deg;&nbsp;Implementation of a preventive approach in the environmental challenges.</p><p>&deg;&nbsp;A responsible and ethical management as regards waste recycling and treatment in terms of health, safety and environment.</p><p>&deg;&nbsp;Optimization in waste treatment, by fulfilling all standards set by state agencies corresponding to each province or country.</p><p>&deg;&nbsp;Permanent investment in the area.</p>"
	txt04_colder = "<p>&deg;&nbsp;Certification in the main regulations of the sector: OHSAS 18001, GMP and ISO 14.001.</p><p>&deg;&nbsp;Ecological Awareness: Protection and motivation for awareness in the community on the importance of preservation and optimization of natural resources in the sites where the company is established.</p>"
	txt05_colizq = "<p>&deg;&nbsp;Foundation, development and financing of “Asociación Civil por una Sonrisa” (soup kitchen).</p><p>&deg;&nbsp;Contribution, assembly and consolidation of the “Con Ciencia Escolar” Laboratory in School N° 16 of La Lonja, District of Pilar, Argentina</p><p>&deg;&nbsp;Cooperation with regional community service entities.</p><p>&deg;&nbsp;Private contribution to improve infrastructure within the framework of our industrial plant.</p>"
	txt05_colder = "<p>&deg;&nbsp;Donations to key community centers: Fire Department, Police Department and municipal offices.</p><p>&deg;&nbsp;Volunteer Program: The One Bedson staff is active working selflessly and for free for “Asociación Civil por una Sonrisa“ and other institutions in the following areas: education, health, recreation and food.</p><p>&deg;&nbsp;Cooperation and participation in several campaigns organized by public hospitals.</p>"
Else
	idioma = "es"
	titSeccion = "RESPONSABILIDAD SOCIAL EMPRESARIA"
	titTxt01 = "COMPROMISO BEDSON"
	titTxt02 = "RESPONSABILIDAD SOCIAL EMPRESARIA, UNA NUEVA TENDENCIA QUE YA TIENE HISTORIA EN BEDSON S.A."
	txt01_colizq = "<p>Bedson hace la diferencia en la industria farmacéutica veterinaria a nivel mundial. Sus productos brindan soluciones comprobadas. Pero, la compañía no sólo está signada a la efectividad y el éxito de su marca.</p><p>Desde su creación, su desarrollo y crecimiento se cimentan en su gente y el respaldo absoluto de su comunidad. Respetar, ayudar y prevenir son actos y palabras que la compañía pone en práctica desde el año 1979.</p><p>Sus fundadores, el Dr. Omar Romano y el Dr Arnaldo Colusi, fundaron Bedson convencidos que valores como la solidaridad, la cultura del trabajo, el cuidado del medio ambiente y el progreso social son la base para el crecimiento de la compañía.</p>"
	txt01_colder = "<p>Crecer a cualquier costo, es una premisa que jamás fue parte de los objetivos. Bedson elije progresar siempre pensando en el compromiso con cada una de las comunidades en los 5 continentes en donde tiene presencia.</p><p>El concepto de sustentabilidad para la compañía es una realidad; no solo se actua cuando los hechos han acontecido, sino que se distingue por aplicar una cultura de prevención en cuestiones tales como el medio ambiente, educación y  cuidado de su personal. Cada uno de estos conceptos se fusionan en una política empresarial que consecuentemente pone en práctica valores humanos. Bedson cree que puede y debe contribuir al incremento de la felicidad de su gente y su entorno.</p><p>Involucrarse es la tarea y Bedson se comprometió; con el paso de los años se consolidó, como un buen ciudadano y corresponsable del desarrollo sustentable de cada una de las comunidades donde le toca operar.</p>"
	txt02_colizq = "<p>En la actualidad  la compañía a nivel internacional se encuentra incorporando paulatinamente  actividades e iniciativas tendientes a asumir la responsabilidad como empresa y su relación con la sociedad o la comunidad que los circunda.</p><p>En 1979, Bedson S.A comienza su biografía en la industria farmacéutica veterinaria adelantándose a una tendencia, que hoy en día se ha expandido a nivel mundial; estableció un valor agregado a la industria.</p>"
	txt02_colder = "<p>En cada uno de los cinco continentes en los que la compañía tiene presencia, se diseñaron y ejecutaron en forma programada,  estratégica y sistemática,  los siguientes Objetivos:</p><p>&deg;&nbsp;Generación de valor en Socio-Corporativos.<br />&deg;&nbsp;Generación de valor Ambiental.<br />&deg;&nbsp;Generación de Valor a través de la Inversión Social Privada</p>"
	txt03_colizq = "<p>&deg;&nbsp;Tomo el compromiso como parte integral de su estrategia y de sus operaciones, cumplir con los diez principios de conducta y acción en materia de derechos humanos, trabajo, medio ambiente y lucha contra la corrupción.</p><p>&deg;&nbsp;Miembro activo en materia de colaboración y participación social en actividades direccionadas al bien común.</p>"
	txt03_colder = "<p>&deg;&nbsp;Complemento privado para acciones en común de organismos público.</p><p>&deg;&nbsp;Miembro relevante en organismos de responsabilidad social.</p><p>&deg;&nbsp;Innovación y compromiso en materia de acciones sociales en la comunidad.</p>"
	txt04_colizq = "<p>&deg;&nbsp;Implementación de un enfoque preventivo en los retos medio ambientales</p><p>&deg;&nbsp;Gestión responsable y ética en el reciclaje y tratamiento de residuos desde el punto de vista de la salud, la seguridad y el medioambiente.</p><p>&deg;&nbsp;Optimización en el tratamiento de residuos, cumplimentado todas las normativas de los organismos estatales correspondientes a cada provincia o país.</p>"
	txt04_colder = "<p>&deg;&nbsp;Inversión permanentemente en el área.</p><p>&deg;&nbsp;Certificaciones en las normativas fundamentales para el sector: OHSAS 18001, GMP e ISO 14.001.</p><p>&deg;&nbsp;Conciencia ecológica: Protección y estímulo a la toma de conciencia en la comunidad sobre la importancia de la preservación y optimización de los recursos naturales en los sitios en los que la compañía se emplaza.</p>"
	txt05_colizq = "<p>&deg;&nbsp;Fundación, desarrollo y financiamiento de “Asociación Civil Por una Sonrisa”, comedor comunitario.</p><p>&deg;&nbsp;Aporte, Armado y consolidación del Laboratorio “Con Ciencia Escolar” en la Escuela N° 16 de La Lonja, Partido de Pilar.</p><p>&deg;&nbsp;Colaboración con entidades de bien público a nivel regional.</p><p>&deg;&nbsp;Aporte Privado para mejora de infraestructura en el entorno de nuestra planta industrial.</p>"
	txt05_colder = "<p>&deg;&nbsp;Donaciones a centros claves de la comunidad: Destacamento de Bomberos, Departamento de Policía y Delegaciones Municipales.</p><p>&deg;&nbsp;Voluntariado: El personal del One Bedson trabaja activamente de forma absolutamente desinteresada y gratuita en la “Asociación Civil Por una Sonrisa“ y otras instituciones en las áreas de educación, salud, recreación y alimentación.</p><p>&deg;&nbsp;Colaboraciones y adhesiones a diversas campañas encabezadas por hospitales públicos.</p>"
End If %>
<style type="text/css">
<!--
.izqFino {
	background-image: url(img/imgRse_01.jpg);
	background-position: center top;
	background-repeat:no-repeat;
}
-->
</style>
</head>
<body>
 <div class="izqFino" id="imgSeccion">
  <div class="titNota"><% =titSeccion %></div>
  <div><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" title="" /></div>
 </div>
 <div class="derAncho">
  <div><a href="#" onclick="mostrarTxt('1');"><img src="img/titRse_01_on_<% =idioma %>.jpg" id="tit01" width="450" height="18" alt="" title="" /></a></div>
  <div id="txt01" class="txt">
   <div class="titTxt"><% =UCase(titTxt01) %></div>
   <div class="colIzq"><% =txt01_colizq %></div>
   <div class="colDer"><% =txt01_colder %></div>
  </div>
  <div><a href="#" onclick="mostrarTxt('2');"><img src="img/titRse_02_off_<% =idioma %>.jpg" id="tit02" width="450" height="18" alt="" title="" /></a></div>
  <div id="txt02" class="txt" style="display:none;">
   <div class="titTxt"><% =UCase(titTxt02) %></div>
   <div class="colIzq"><% =txt02_colizq %></div>
   <div class="colDer"><% =txt02_colder %></div>
  </div>
  <div><a href="#" onclick="mostrarTxt('3');"><img src="img/titRse_03_off_<% =idioma %>.jpg" id="tit03" width="450" height="18" alt="" title="" /></a></div>
  <div id="txt03" class="txt" style="display:none;">
   <div class="colIzq"><% =txt03_colizq %></div>
   <div class="colDer"><% =txt03_colder %></div>
  </div>
  <div><a href="#" onclick="mostrarTxt('4');"><img src="img/titRse_04_off_<% =idioma %>.jpg" id="tit04" width="450" height="18" alt="" title="" /></a></div>
  <div id="txt04" class="txt" style="display:none;">
   <div class="colIzq"><% =txt04_colizq %></div>
   <div class="colDer"><% =txt04_colder %></div>
  </div>
  <div><a href="#" onclick="mostrarTxt('5');"><img src="img/titRse_05_off_<% =idioma %>.jpg" id="tit05" width="450" height="18" alt="" title="" /></a></div>
  <div id="txt05" class="txt" style="display:none;">
   <div class="colIzq"><% =txt05_colizq %></div>
   <div class="colDer"><% =txt05_colder %></div>
  </div>
 </div>
<script type="text/javascript">
function ocultarTodos(){
	for(var i=1;i<6;i++){
		var gebi = document.getElementById('txt0'+i);
		gebi.style.display = 'none';
		var imggebi = document.getElementById('tit0'+i);
		imggebi.src = 'img/titRse_0'+ i +'_off_<% =idioma %>.jpg';
	}
}
function mostrarTxt(idTxt){
	ocultarTodos();
	var idClick = document.getElementById('txt0'+idTxt);
	idClick.style.display = 'block';
	var imgClick = document.getElementById('tit0'+idTxt);
	imgClick.src = 'img/titRse_0'+ idTxt +'_on_<% =idioma %>.jpg';
	var imgSeccion = document.getElementById('imgSeccion');
	imgSeccion.style.backgroundImage = 'url(img/imgRse_0'+ idTxt +'.jpg)';
}
</script>
</body>
</html>
