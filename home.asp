<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<% Response.Expires = 0 %>
<%
If request("i") = "en" Then
	idioma ="en"
	txtCopyright = "Copyright &copy; Bedson 2012. All rights reserved."
	txtFlag = "Cambiar idioma"
	linkCambioIdioma = "es"
Else
	idioma = "es"
	txtCopyright = "Copyright &copy; Bedson 2012. Todos los derechos reservados."
	txtFlag = "Change language"
	linkCambioIdioma = "en"
End If %>
</head>
<body>
<!--#include file="top.asp"-->
<iframe class="mainInfo" id="mainInfo" name="mainInfo" width="810" height="340" scrolling="no" frameborder="0" src="empresa.asp?i=<% =idioma %>"></iframe>
<div class="footage">
 <div class="copyRight" style="text-align:right;">
  <a href="home.asp?i=<% =linkCambioIdioma %>"><% =txtFlag %>&nbsp;<img src="img/flag_<% =linkCambioIdioma %>.png" width="28" height="15" alt="<% =txtFlag %>" title="<% =txtFlag %>" /></a>
 </div>
 <ul class="botonerPie">
  <li><a href="#" onclick="miUrlPie('Empresa');"><% =titEmpresa %></a>&nbsp;|</li>
  <li><a href="#" onclick="miUrlPie('Productos');"><% =titProductos %></a>&nbsp;|</li>
  <li><a href="#" onclick="miUrlPie('RSE');"><% =titRse %></a>&nbsp;|</li>
  <li><a href="#" onclick="miUrlPie('Media');"><% =titMedia %></a>&nbsp;|</li>
  <li><a href="#" onclick="miUrlPie('Noticias');"><% =titNoticias %></a>&nbsp;|</li>
  <li><a href="#" onclick="miUrlPie('Contacto');"><% =titContacto %></a>&nbsp;|</li>
  <li><a href="#" onclick="miUrlPie('EnelMundo');"><% =titMundo %></a></li>
 </ul>
 <div class="copyRight">
  <% =txtCopyright %>
 </div>
</div>
<script type="text/javascript">
	function miUrlPie(id){
		var agr = '';
		if(id == 'Contacto'){
			agr = '&op=for';
		}
		window.open(id +'.asp?i=<% =idioma %>'+agr, "mainInfo");
		botonActual = id;
		var intEmpresa = document.getElementById('intEmpresa');
		intEmpresa.style.display = 'none';
		inicio();
	}
</script>
</body>
</html>
