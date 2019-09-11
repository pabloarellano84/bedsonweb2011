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
	titSeccion = "THE FOUNDERS"
	subTit = "Scientific and Marketing Pioneers"
	textoSeccion = "<p>Dr. Arnaldo Colusi (Veterinary Sciences) and Dr. Omar Romano (Biochemical sciences) are the founding partners of BEDSON S.A.</p>"&_
	"<p>For 27 years, until his passing in August of 2006, Dr. Arnaldo Colusi was at the helm of the Scientific Technical Department. He led all the projects of  research and development that were at the base of all the pioneering and original products that BEDSON has come to develop over the years.</p>"&_
	"<p>Dr. Omar Romano, currently President of BEDSON S.A., is the one who, over the same period, has driven the successful worldwide expansion of BEDSON and who has established the entire foreign trade organization, outlining all past and present international marketing strategies.</p>"&_
	"<p>Dr. Arnaldo Colusi</p>"&_
	"<p>Dr. Colusi occupied the following positions at different stages of his active life:</p>"&_ 
	"<p>&ndash;&nbsp;President and Technical Director of Bedson S.A.</p>"&_ 
	"<p>&ndash;&nbsp;Member of the Hall of Fame of the Latin-American Poultry Association (ALA)</p>"&_
	"<p>&ndash;&nbsp;Member of the Hall of Fame of  Poultry Industry Magazine (USA)</p>"&_
	"<p>&ndash;&nbsp;Consultant for the Pan-American Health Office</p>"&_
	"<p>&ndash;&nbsp;Member of the Doctorate Committee of the Faculty of Veterinary Sciences of the University of Buenos Aires</p>"&_
	"<p>&ndash;&nbsp;Associate Professor of the Faculty of Veterinary Sciences of the University of Buenos Aires</p>"&_
	"<p>&ndash;&nbsp;Associate Professor of Microbiology at the University of Buenos Aires</p>"&_
	"<p>&ndash;&nbsp;General Director of SENASA, which is the argentine state body in charge of executing the national policies of animal and vegetable health and quality.</p>"&_
	"<p>Dr. Arnaldo Colusi has pioneered the integration of the Latin American Poultry Association (ALA). </p>"&_
	"<p>He conducted a number of studies related to his specialty at the University of Montpellier and the Pasteur Institute (France) and at the Institute of Veterinary Research in Belgium. </p>"&_ 
	"<p>Author of more than 50 research papers on Avian Pathology and Microbiology, he has received many distinctive accolades, the latest of which was the Award of Merit received from the Rodolfo Perotti Foundation (Buenos Aires, 2001).</p>"&_
	"<p>Dr. Omar Romano</p>"&_
	"<p>Dr. Romano is currently the President of Bedson S.A. </p>"&_
	"<p>Technical Director of the EMEAA Division (Europe, Middle East, Asia and Africa).</p>"&_
	"<p>Director of International Trade  and Marketing of ONE BEDSON</p>"&_
	"<p>Holder of a PH. D. in Biochemical Sciences  (UBA – UK)</p>"&_
	"<p>MBA in Foreign Trade and Strategic Planning.</p>"&_
	"<p>Former Secretary General of the Foro Argentino de Biotecnolog&iacute;a- Argentina</p>"
Else
	idioma = "es"
	titSeccion = "LOS FUNDADORES"
	subTit = "Pioneros en Ciencia y Marketing"
	textoSeccion = "<p>El Dr. Arnaldo Colusi (Ciencias Veterinarias) y el Dr. Omar Romano (Ciencias Bioqu&iacute;micas) son los socios fundadores de BEDSON S.A.</p>"&_
	"<p>Durante 27 a&ntilde;os, hasta su fallecimiento en agosto del 2006, el Dr. Arnaldo Colusi estuvo a cargo del departamento t&eacute;cnico cient&iacute;fico. Lider&oacute; todo proyecto de investigaci&oacute;n y desarrollo, formando la base de toda innovaci&oacute;n original que BEDSON ha desarrollado a trav&eacute;s de los a&ntilde;os. </p>"&_
	"<p>El Dr. Omar Romano, el Presidente actual de BEDSON S.A., es quien durante el mismo per&iacute;odo ha dirigido la expansi&oacute;n mundial exitosa de BEDSON y quien ha establecido la organizaci&oacute;n de comercio exterior en su totalidad, delineando toda estrategia de marketing internacional pasada y presente. </p>"&_
	"<p>Dr. Arnaldo Colusi</p>"&_
	"<p>El Dr. Colusi ha ocupado las siguientes posiciones en distintas etapas de su vida activa: </p>"&_
	"<p>&ndash;&nbsp;Presidente y Director T&eacute;cnico de BEDSON S.A. </p>"&_
	"<p>&ndash;&nbsp;Miembro distinguido de la Sala de Honor de la Asociaci&oacute;n Latinoamericana de  Avicultura </p>"&_
	"<p>&ndash;&nbsp;Miembro distinguido de la Sala de Honor de Poultry Industry Magazine (USA)</p>"&_
	"<p>&ndash;&nbsp;Consultor para la Pan-American Health Office</p>"&_
	"<p>&ndash;&nbsp;Miembro del Comit&eacute; de Doctorados de la Facultad de Ciencias Veterinarias de la Universidad de Buenos Aires </p>"&_
	"<p>&ndash;&nbsp;Profesor asociado de Microbiolog&iacute;a en la Universidad de Buenos Aires </p>"&_
	"<p>&ndash;&nbsp;Gerente General de SENASA, la entidad gubernamental  Argentina que delinea y ejecuta las pol&iacute;ticas nacionales de salud agr&iacute;cola-ganadera </p>"&_
	"<p>El Dr. Arnaldo Colusi fue pionero en la integraci&oacute;n de la Asociaci&oacute;n Latinoamericano de Avicultura (ALA).</p>"&_
	"<p>Realiz&oacute; un n&uacute;mero de estudios relacionados con su especialidad en la Universidad de Montpellier y el Instituto Pasteur en Francia, y en el Instituto de Investigaci&oacute;n Veterinaria en B&eacute;lgica. </p>"&_
	"<p>Autor de mas de 50 trabajos de investigaci&oacute;n cient&iacute;fica sobre microbiolog&iacute;a Y patolog&iacute;a aviar, ha recibido numerosas distinciones, el &uacute;ltimo siendo el Premio Merito de la Fundaci&oacute;n Rodolfo Perotti (Buenos Aires, 2001). </p>"&_
	"<p>Dr. Omar Romano</p>"&_
	"<p>El Dr. Omar Romano es actualmente el Presidente de BEDSON S.A. </p>"&_
	"<p>Director T&eacute;cnico de la divisi&oacute;n EMEAA (Europa, Medio Oriente, Asia y Africa). </p>"&_
	"<p>Director de Comercio Internacional y Marketing del ONE BEDSON.</p>"&_
	"<p>Director Comercial de BEDSON S.A.</p>"&_
	"<p>Titular del grado PH. D. en Ciencias Bioqu&iacute;micas (UBA-UK) </p>"&_
	"<p>MBA en Comercio Exterior y Planeamiento Estrat&eacute;gico (UM-F)</p>"&_
	"<p>Ex Secretario General del Foro Argentino de Biotecnologia – Argentina.</p>"
End If %>
</head>
<body>
 <div class="izqFino"><img src="img/imgFundadores.jpg" width="360" height="330" alt="<% =titSeccion %>" /></div>
 <div class="derAncho">
  <div class="titNota"><% =subTit %></div>
  <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  <div class="cuerpoSeccion"><% =textoSeccion %></div>
 </div>
</body>
</html>
