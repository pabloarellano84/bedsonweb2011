<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/enelmundo.css" rel="stylesheet" type="text/css" />
<% Response.Expires = 0 %>
<%
If request("i") = "en" Then
	idioma ="en"
	titSeccion = "GLOBAL PRESENCE"
	titPais03 = "DOMINICAN REPUBLIC"
	titPais04 = "UNITED STATES"
	titPais05 = "SPAIN"
	titPais06 = "LEBANON"
	titPais07 = "MALAYSIA"
Else
	idioma = "es"
	titSeccion = "EN EL MUNDO"
	titPais03 = "REP&Uacute;BLICA DOMINICANA"
	titPais04 = "ESTADOS UNIDOS"
	titPais05 = "ESPA&Ntilde;A"
	titPais06 = "L&Iacute;BANO"
	titPais07 = "MALASIA"
End If %>
</head>
<body>
  <div class="izqFino">
  <div class="global"><a href="globalBig.asp?i=<% =idioma %>" target="mainInfo"><img src="img/global.jpg" width="342" height="143" alt="<% =titSeccion %>" title="<% =titSeccion %>" /></a></div>
  <div class="thumbSectores">
    <div class="sector"><img src="img/americaSur.jpg" width="166" height="156" id="imgSector" alt="Am&eacute;rica del Sur" title="Am&eacute;rica del Sur" /></div>
    <div class="pais"><img src="img/argentina.jpg" width="165" height="156" id="imgPais" alt="Argentina" title="Argentina" /></div>
   </div>
 </div>
 <div class="derAncho">
  <div class="col_izq">
   <div class="titSeccion"><% =titSeccion %></div>
   <div id="vacio"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
   <div class="cuerpoSeccion">
	<p>
     <div id="argentina" class="titPais"><a href="#" onclick="cambiarImg('argentina');">ARGENTINA</a></div>
	 <div class="titDist">BEDSON S.A.</div>
	 <div class="divT"><b>T:</b> 54 (230) 4470249</div>
	 <div class="titF"><b>F:</b> 54 (230) 4470453</div>
	 <div class="titM"><a href="mailto:bedson@bedson.com.ar">bedson@bedson.com.ar</a></div>
    </p>
	<p>
     <div id="guatemala" class="titPais"><a href="#" onclick="cambiarImg('guatemala');">GUATEMALA</a></div>
	 <div class="titDist">BEDSON DE CENTROAMERICA S.A.</div>
	 <div class="divT"><b>T:</b> 502 2480 1049</div>
	 <div class="titF"><b>F:</b> 502 2480 1052</div>
     <div class="titM"><a href="mailto:bca@bedson.com.ar">bca@bedson.com.ar</a></div>
    </p>
    <p>
     <div id="dominicana" class="titPais"><a href="#" onclick="cambiarImg('dominicana');"><% =titPais03 %></a></div>
	 <div class="titDist">BEDSON DEL CARIBE  S.R.L.</div>
	 <div class="divT"><b>T:</b> 1 (809) 5829213</div>
     <div class="titM"><a href="mailto:bdc@bedson.com.ar">bdc@bedson.com.ar</a></div>
    </p>
    <p>
     <div id="estadosUnidos" class="titPais"><a href="#" onclick="cambiarImg('estadosUnidos');"><% =titPais04 %></a></div>
	 <div class="titDist">BEDSON CORP.</div>
	  <div class="titM"><a href="mailto:bedsoncorp@bedson.com.ar">bedsoncorp@bedson.com.ar</a></div>
    </p>
   </div>
  </div>
  <div class="col_der">
  <div id="vacio"><img src="img/pixel.png" width="20" height="36" alt="" /></div>
   <div class="cuerpoSeccion">
    <p>
     <div id="espana" class="titPais"><a href="#" onclick="cambiarImg('espana');"><% =titPais05 %></a></div>
	 <div class="titDist">BEDSON ESPA&Ntilde;A S.L</div>
	 <div class="divT"><b>T:</b> 34 (91) 416 4515</div>
	 <div class="titF"><b>F:</b> 34 (91) 510 4966</div>
	 <div class="titM"><a href="mailto:bedson@bedson-eu.com">bedson@bedson-eu.com</a></div>
    </p>
    <p>
     <div id="libano" class="titPais"><a href="#" onclick="cambiarImg('libano');"><% =titPais06 %></a></div>
	 <div class="titDist">BEDSON MIDDLE EAST SARL</div>
	 <div class="divT"><b>T:</b> 961 (4) 521607 x 105</div>
	 <div class="titF"><b>F:</b> 961 (4) 521609 x 106</div>
     <div class="titM"><a href="george.hasbani@bedson-me.com">george.hasbani@bedson-me.com</a></div>
    </p>
    <p>
     <div id="malasia" class="titPais"><a href="#" onclick="cambiarImg('malasia');"><% =titPais07 %></a></div>
	 <div class="titDist">BEDSON FAR EAST SDN BHD</div>
	 <div class="divT"><b>T:</b> 60 (3) 8941 0575</div>
	 <div class="titF"><b>F:</b> 60 (3) 8958 6626</div>
     <div class="titM"><a href="bedson@bedson-fe.com">bedson@bedson-fe.com</a></div>
    </p>
   </div>
  </div>
 </div>
<script type="text/javascript">
var paises=["argentina","guatemala","dominicana","estadosUnidos","espana","libano","malasia"];
var sectores=["americaSur","americaCentral","americaCentral","americaNorte","europa","asia","asia2"];
function cambiarImg(idImg){
	freeAll();
	var titChange = document.getElementById(idImg);
	var imgPaisChange = document.getElementById('imgPais');
	var imgSectorChange = document.getElementById('imgSector');
	titChange.style.backgroundImage = 'url(img/arrowPrevPage_on.jpg)';
	titChange.style.backgroundPosition = 'right';
	titChange.style.backgroundRepeat = 'no-repeat';
	titChange.style.backgroundColor = '#CCC';
	for (var i = 0;i<paises.length;i++){
		if(paises[i]==idImg){
			imgSectorChange.src = 'img/'+ sectores[i] +'.jpg';
			imgPaisChange.src = 'img/'+ paises[i] +'.jpg';
		}
	}
}
function freeAll(){
	for (var x =0;x<paises.length;x++){
		var vaciarDiv = document.getElementById(paises[x]);
		vaciarDiv.style.backgroundImage = 'none';
		vaciarDiv.style.backgroundColor = '#E3E4E5';
	}
}
</script>
</body>
</html>
