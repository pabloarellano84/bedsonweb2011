<%
Select Case idioma
 Case "en"
  titEmpresa = "About Us"
  titProductos = "Products"
  titRse = "CSR"
  titMedia = "Media"
  titNoticias = "News"
  titContacto = "Contact"
  titMundo = "Worldwide"
  titPerfil = "Profile"
  titMision = "Mission"
  titValores = "Values"
  titCertif = "Certificates"
  titPremios = "Awards"
  titFundadores = "Founders"
  titLogros = "Achievements"
  titAsocia = "Partnerships"
  titCompet = "Competences"
  titPolit = "Politic"
 Case "es"
  titEmpresa = "La Empresa"
  titProductos = "Productos"
  titRse = "RSE"
  titMedia = "Media"
  titNoticias = "Noticias"
  titContacto = "Contacto"
  titMundo = "En el Mundo"
  titPerfil = "Perfil"
  titMision = "Misi&oacute;n"
  titValores = "Valores"
  titCertif = "Certificaciones"
  titPremios = "Premios"
  titFundadores = "Fundadores"
  titLogros = "Logros"
  titAsocia = "Asociaciones"
  titCompet = "Competencias"
  titPolit = "Política"
End Select
%>
<div class="divTop">
 <div class="bannerfla"><%
  If idioma = "es" Then %>  
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="811" height="277">
      <param name="movie" value="img/banner-02.swf" />
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <embed src="img/banner-02.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="811" height="277"></embed>
    </object><%
  Else %>
	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="811" height="277" title="Bedson S.A.">
	  <param name="movie" value="img/banner_en.swf">
	  <param name="quality" value="high">
	  <param name="wmode" value="opaque">
	  <embed src="img/banner_en.swf" quality="high" wmode="opaque" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="811" height="277"></embed>
    </object><%
  End If %>
 </div>
 <div class="botoneraMain">
  <div id="divEmpresa"><img src="img/botEmpresa_off_<% =idioma %>.png" name="Empresa" width="116" height="277" border="0" id="Empresa" alt="<% =titEmpresa %>" title="<% =titEmpresa %>" /></div><div id="divProductos"><img src="img/botProductos_off_<% =idioma %>.png" name="Productos" width="116" height="277" border="0" id="Productos" alt="<% =titProductos %>" title="<% =titProductos %>" /></div><div id="divRSE"><img src="img/botRSE_off_<% =idioma %>.png" name="RSE" width="116" height="277" border="0" id="RSE" alt="<% =titRse %>" title="<% =titRse %>" /></div><div id="divMedia"><img src="img/botMedia_off_<% =idioma %>.png" name="Media" width="116" height="277" border="0" id="Media" alt="<% =titMedia %>" title="<% =titMedia %>" /></div><div id="divNoticias"><img src="img/botNoticias_off_<% =idioma %>.png" name="Noticias" width="116" height="277" border="0" id="Noticias" alt="<% =titNoticias %>" title="<% =titNoticias %>" /></div><div id="divContacto"><img src="img/botContacto_off_<% =idioma %>.png" name="Contacto" width="116" height="277" border="0" id="Contacto" alt="<% =titContacto %>" title="<% =titContacto %>" /></div><div id="divMundo"><img src="img/botEnelMundo_off_<% =idioma %>.png" name="EnelMundo" width="116" height="277" border="0" id="EnelMundo" alt="<% =titMundo %>" title="<% =titMundo %>" /></div>
 </div>
 <script type="text/javascript">
 var botPrincipales = ['Empresa','Productos','RSE','Media','Noticias','Contacto','EnelMundo'];
 var botSecundarios = ['Perfil','Mision','Valores','Logros','Premios','Certificaciones','Fundadores','Competencias','Politica'];
 var botonActual = '';
 function inicio(){
	for(var h=0;h<botPrincipales.length;h++){
		var btnAct = document.getElementById(botPrincipales[h]);
		if(botonActual == botPrincipales[h] && botonActual != 'Empresa'){
			btnAct.src = 'img/bot'+ botPrincipales[h] +'_on_<% =idioma %>.png';
			btnAct.onmouseover = outTodos;
			btnAct.onmouseout = '';
		}else{
			btnAct.src = 'img/bot'+ botPrincipales[h] +'_off_<% =idioma %>.png';
			btnAct.onmouseover = rollOver;
			btnAct.onmouseout = rollOut;
			btnAct.onclick = miUrl;
		}
	}
	for(var h=0;h<botSecundarios.length;h++){
		var btnAct = document.getElementById(botSecundarios[h]);
		if(botonActual == botSecundarios[h]){
			var btnPri = document.getElementById('Empresa');
			btnPri.src = 'img/botEmpresa_on_<% =idioma %>.png';
			btnPri.onmouseout = '';
			btnPri.onmouseover = '';
			btnAct.src = 'img/btnInt_'+ btnAct.id +'_on_<% =idioma %>.jpg';
			btnAct.onmouseover = '';
			btnAct.onmouseout = '';
			btnAct.onclick = '';
		}else{
			btnAct.src = 'img/btnInt_'+ btnAct.id +'_off_<% =idioma %>.jpg';
			btnAct.onmouseover = rollOverSec;
			btnAct.onmouseout = rollOutSec;
			btnAct.onclick = miUrl;
		}
	}
 }
 function rollOver(){
	var miBtn = this;
	miBtn.src = 'img/bot'+ miBtn.id +'_on_<% =idioma %>.png';
	miBtn.style.cursor='pointer';
	if(miBtn.id == 'Empresa'){
		var intEmpresa = document.getElementById('intEmpresa');
		intEmpresa.style.display = 'block';
	}else{
		var resultado = 1;
		for(var h=0;h<botSecundarios.length;h++){
			if(botonActual == botSecundarios[h]){
				resultado = 0;
			}
		}
		if(resultado == 1){
			var intEmpresa = document.getElementById('intEmpresa');
			intEmpresa.style.display = 'none';
			btnEmp = document.getElementById('Empresa');
			btnEmp.src = 'img/botEmpresa_off_<% =idioma %>.png';
		}
	}
 }
 function rollOut(){
	var miBtn = this;
	if(miBtn.id != 'Empresa'){
		miBtn.src = 'img/bot'+ miBtn.id +'_off_<% =idioma %>.png';
		miBtn.style.cursor='default';
	}
 }
 function rollOverSec(){
	var miBtn = this;
	miBtn.src = 'img/btnInt_'+ miBtn.id +'_on_<% =idioma %>.jpg';
	miBtn.style.cursor='pointer';
 }
 function rollOutSec(){
	var miBtn = this;
	miBtn.src = 'img/btnInt_'+ miBtn.id +'_off_<% =idioma %>.jpg';
	miBtn.style.cursor='default';
 }
 function miUrl(){
	var miBtn = this;
	var agr = '';
	if(miBtn.id == 'Contacto'){
		agr = '&op=for';
	}
	window.open(miBtn.id +'.asp?i=<% =idioma %>'+agr, "mainInfo");
	botonActual = miBtn.id;
	inicio();
	for(var h=0;h<botSecundarios.length;h++){
		if(botSecundarios[h] == miBtn.id){
			var intEmpresa = document.getElementById('intEmpresa');
			intEmpresa.style.display = 'block';
		}
	}
	for(var h=0;h<botPrincipales.length;h++){
		if(botPrincipales[h] == miBtn.id){
			var intEmpresa = document.getElementById('intEmpresa');
			intEmpresa.style.display = 'none';
		}
	}
 }
 function rollOutEmp(){
 	var intEmpresa = document.getElementById('intEmpresa');
	intEmpresa.style.display = 'none';
	var imgEmp = document.getElementById('Empresa');
	imgEmp.src = 'img/botEmpresa_off_<% =idioma %>.png';
 }
 function outTodos(){
	rollOutEmp();
 }
window.onload = inicio;
 </script>
</div>
<div class="franjaNaranja" id="franjaNaranja">
<div class="botonesInt" id="intEmpresa" style="display:none;">
  <div class="columna">
  <img src="img/btnInt_perfil_off_<% =idioma %>.jpg" alt="<% =titPerfil %>" name="Perfil" id="Perfil" title="<% =titPerfil %>" width="89" height="15" /><img src="img/btnInt_Mision_off_<% =idioma %>.jpg" alt="<% =titMision %>" name="Mision" id="Mision" title="<% =titMision %>" width="89" height="15" /><img src="img/btnInt_valores_off_<% =idioma %>.jpg" alt="<% =titValores %>" name="Valores" id="Valores" title="<% =titValores %>" width="89" height="15" /><img src="img/btnInt_politica_off_<% =idioma %>.jpg" alt="<% =titPolit %>" name="Politica" id="Politica" title="<% =titPolit %>" width="89" height="15" /><img src="img/btnInt_certificaciones_off_<% =idioma %>.jpg" alt="<% =titCertif %>" name="Certificaciones" id="Certificaciones" title="<% =titCertif %>" width="89" height="15" /><img src="img/btnInt_premios_off_<% =idioma %>.jpg" alt="<% =titPremios %>" name="Premios" id="Premios" title="<% =titPremios %>" width="89" height="15" /><img src="img/btnInt_fundadores_off_<% =idioma %>.jpg" alt="<% =titFundadores %>" name="Fundadores" id="Fundadores" title="<% =titFundadores %>" width="89" height="15" /><img src="img/btnInt_logros_off_<% =idioma %>.jpg" alt="<% =titLogros %>" name="Logros" id="Logros" title="<% =titLogros %>" width="89" height="15" /><img src="img/btnInt_competencias_off_<% =idioma %>.jpg" alt="<% =titCompet %>" name="Competencias" id="Competencias" title="<% =titCompet %>" width="89" height="15" />
  </div>
</div>
</div>
<!--<div class="botonesInt" id="intProductos" style="display:none;">
  <div class="columna">
    <div> <img src="img/btnInt_antibioticos_off_es.jpg" alt="Antibi&oacute;ticos" name="Antibioticos" id="Antibioticos" title="Antibi&oacute;ticos" width="186" height="18" /></div>
    <div> <a href="fosbac.asp?i=es" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Fosbac','','img/btnInt_fosbac_on_es.jpg',1)"> <img src="img/btnInt_fosbac_off_es.jpg" alt="Fosbac" name="Fosbac" id="Fosbac" title="Fosbac" width="186" height="18" /></a></div>
    <div> <a href="fosbacpt.asp?i=es" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('FosbacPT','','img/btnInt_fosbacPlusT_on_es.jpg',1)"> <img src="img/btnInt_fosbacPlusT_off_es.jpg" alt="Fosbac Plus T" name="FosbacPT" id="FosbacPT" title="Fosbac Plus T" width="186" height="18" /></a></div>
  </div>
  <div class="columna">
    <div> <img src="img/btnInt_aditivos_off_es.jpg" alt="Aditivos" name="Aditivos" id="Aditivos" title="Aditivos" width="186" height="18" /></div>
    <div> <a href="b40sfac.asp?i=es" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('bg40SFAC','','img/btnInt_bg40SFAC_on_es.jpg',1)"> <img src="img/btnInt_bg40SFAC_off_es.jpg" alt="Bedgen 40 SFA Concentrado" name="bg40SFAC" id="bg40SFAC" title="Bedgen 40 SFA Concentrado" width="186" height="18" /></a></div>
    <div> <a href="b40st.asp?i=es" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('bg40ST','','img/btnInt_bg40ST_on_es.jpg',1)"> <img src="img/btnInt_bg40ST_off_es.jpg" alt="Bedgen 40 ST" name="bg40ST" id="bg40ST" title="Bedgen 40 ST" width="186" height="18" /></a></div>
  </div>
  <div class="columna">
    <div><img src="img/pixel.png" height="18" width="18" /></div>
    
    <div> <a href="b40asc.asp?i=es" target="mainInfo" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('bg40AS','','img/btnInt_bg40AS_on_es.jpg',1)"> <img src="img/btnInt_bg40AS_off_es.jpg" alt="Bedgen 40 AS" name="bg40AS" id="bg40AS" title="Bedgen 40 AS" width="186" height="18" /></a></div>
    <div><img src="img/pixel.png" height="18" width="18" /></div>
  </div>
</div>-->