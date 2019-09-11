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
	titSeccion = "OUR AWARDS"
	subTit = "Things we have won"
	textoSeccion = "<p>2013, <strong>Goodwill Ambassador from Pilar to the World, Dr. Omar Romano Sforza</strong>, granted by Pilar Cityhall for driving Pilar internacional recognition.</p>"&_
	"<p>2012, <strong>Argentine Exports Award</strong>, granted by <strong>Prensa Econ&oacute;mica</strong> (prestigious magazine on economy and business) and sponsored by the Ministry of  Foreign Affairs and the Ministry of Industry, in recognition to Bedson´s 34 years of international operations. </p>"&_
	"<p>2012, <strong>Innovating Business Women, Sra.  Alicia Romero de Colusi</strong>, granted by The Senate of the Province of Buenos Aires in the category &ldquo;Economy and Business Creativity&rdquo;, for her commitment toward an equal, inclusive and  caring  community.</p>"&_
	"<p>2012, <strong>Leading Company in Pilar</strong>, granted by Pilar Cityhall, within the framework of the Program <strong>&ldquo;Pilar Exporta&rdquo;</strong> and <strong>&ldquo;Gesti&oacute;n Estrat&eacute;gica Pilar 2020&rdquo;</strong>, for the contribution to sustainable development and active social commitment.</p>"&_
	"<p>2012, <strong>Model Company 2012</strong> and <strong>WORLD BUSINESS LEADER 2012</strong> granted by <strong>The World Confederation of Businesses.</strong></p>"&_
	"<p>2003, &quot;International Markets Consolidation Award&quot;, Fundaci&oacute;n Exportar, Buenos Aires, Argentina.</p>"&_
	"<p>2003, &quot;Great Places to Work Award&quot;, Buenos Aires, Argentina. Great Place To Work Institute (Argentina) is part of an international group, whose mission is to evaluate and develop workplaces.</p>"&_
	"<p>Great Place To Work Institute (USA) is represented in over 20 countries, where national lists are provided, based on great place to work models.</p>"&_
	"<p>2002, selected by the Endeavour Foundation (USA) as one of the most innovative companies in Argentina.</p>"&_
	"<p>1998, &quot;Export Merit Award&quot;, Fundaci&oacute;n Exportar, Buenos Aires, Argentina.</p>"&_
	"<p>1995, selected by the United Nations (UNIDO) for Industrial Development as one of the 10 most innovative firms in Latin America and the Caribbean.</p>"&_
	"<p>1994, &quot; The Excellence Award&quot; given by the United Nations (UNIDO) for Industrial Development as one of the 10 most innovative firms in Argentina.</p>"&_
	"<p>1994, &quot; Golden Arch of Europe Award&quot;, Madrid (Spain) for the Entrepreneurial Management Quality, CEE.</p>"&_
	"<p>1993, &quot;Gold Star Award&quot;, Madrid (Spain) for Marketing Excellency.</p>"&_
	"<p>1987, Poultry Industry Magazine (USA) nominates Dr. Arnaldo Colusi to its Hall of Fame.</p>"
Else
	idioma = "es"
	titSeccion = "NUESTROS PREMIOS"
	subTit = "Lo que hemos merecido"
	textoSeccion = "<p>2013, <strong>Embajador de Buenos Oficios de Pilar en el Mundo, Dr. Omar Romano Sforza</strong>, La Municipalidad de Pilar reconoci&oacute; la labor del fundador y Presidente de Bedson como impulsor de la internacionalizaci&oacute;n de Pilar en el mundo.</p>"&_
	"<p>2012, <strong>Premio a la Exportaci&oacute;n Argentina</strong>, otorgado por la revista <strong>Prensa Econ&oacute;mica </strong>y <strong>auspiciado </strong>por el <strong>Ministerio de Relaciones Exteriores y Culto y el Ministerio de Industria de la Naci&oacute;n</strong>, en reconocimiento a los 34 a&ntilde;os de trayectoria en la internacionalizaci&oacute;n de operaciones.</p>"&_
	"<p>2012, <strong>Premio Mujeres Innovadoras, Sra. Alicia Romero de Colusi:</strong> Otorgado por el <strong>Senado de la Provincia de Buenos Aires</strong>, galardonada en la categor&iacute;a <strong>&ldquo;Econom&iacute;a y Creatividad Empresaria&rdquo;</strong>, por su notable contribuci&oacute;n y compromiso en la construcci&oacute;n de una comunidad m&aacute;s equitativa, inclusiva y solidaria.</p>"&_
	"<p>2012, <strong>Empresa L&iacute;der en Pilar</strong>, entregado por el <strong>Municipio de Pilar</strong> en el marco de los <strong>Programas Pilar Exporta</strong> y <strong>Gesti&oacute;n Estrat&eacute;gica Pilar 2020</strong>, por la contribuci&oacute;n de Bedson al desarrollo local sustentable y su activo compromiso social con la comunidad pilarense.</p>"&_
	"<p>2012, <strong>Reconocimiento a Empresa Modelo 2012 y L&iacute;der Mundial de Negocios WORLD BUSINESS LEADER 2012, otorgadas por  The World Confederation of Businesses.</strong></p>"&_
	"<p>2003, &quot;Premio en Consolidaci&oacute;n de Mercados Internacionales&quot;, otorgado por la Fundaci&oacute;n Exportar, Buenos Aires, Argentina.</p>"&_
	"<p>2003, &quot;Great Place to Work&quot;, Buenos Aires, Argentina. Great Place to Work Institute (Argentina) es parte del grupo internacional cuya misi&oacute;n es evaluar y desarrollar lugares de trabajo. Posee representaciones en m&aacute;s de 20 pa&iacute;ses en donde listas nacionales se confeccionan basadas en los modelos &quot;Great Place to Work&quot;. Una selecci&oacute;n amplia de empresas fue evaluada en Argentina durante el a&ntilde;o 2003. La decisi&oacute;n de premiar la empresa con el galard&oacute;n se decide entre la consultora y los propios empleados de las empresas participantes.</p>"&_
	"<p>2002, seleccionada por la Fundaci&oacute;n Endeavor (USA) como una de las empresas m&aacute;s innovadores de la Argentina. </p>"&_
	"<p>1998, &quot;Premio al M&eacute;rito Exportador&quot; de la Fundaci&oacute;n Exportar, Buenos Aires, Argentina.</p>"&_
	"<p>1995, seleccionada por las Naciones Unidas (ONUDI) por el Desarrollo Empresarial como una de las 10 empresas mas innovadoras de Latinoam&eacute;rica y el Caribe. </p>"&_
	"<p>1994, &quot;Premio a la Excelencia&quot; otorgado por las Naciones Unidas (ONUDI) por el Desarrollo Empresarial, como una de las 10 empresas m&aacute;s innovadoras de la Argentina. </p>"&_
	"<p>1994, &quot;Premio Arco Europa de Oro&quot;, Madrid (Espa&ntilde;a) por Calidad en el Gerenciamiento Empresarial.</p>"&_
	"<p>1993, &quot;Premio Estrella de Oro&quot;, Madrid (Espa&ntilde;a) por Excelencia en Comercializaci&oacute;n.</p>"&_
	"<p>1987, el Dr. Colusi es nominado a la Sala de Fama por la Poultry Industry Magazine (USA).</p>"
End If %>
</head>
<body>
 <div class="izqFino"><img src="img/imgPremios.jpg" width="360" height="330" alt="<% =titSeccion %>" /></div>
 <div class="derAncho">
  <div class="titNota"><% =subTit %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="cuerpoSeccion"><% =textoSeccion %></div>
 </div>
</body>
</html>
