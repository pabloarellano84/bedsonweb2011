<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/productos.css" rel="stylesheet" type="text/css" /><%
If request("i") = "en" Then
	idioma ="en"
	titCategoriaFosbac = "ANTIBIOTICS"
	titCategoriaBg = "ADDITIVES"
	fraseBedgen = "The Natural Alternative for liver protection and detoxification"
	fraseFosbac = "A wide spectrum antibiotic complex providing safety and efficacy"
Else
	idioma = "es"
	titCategoriaFosbac = "ANTIBI&Oacute;TICOS"
	titCategoriaBg = "ADITIVOS"
	fraseBedgen = "La Alternativa Natural en protección hepática  y detoxificación"
	fraseFosbac = "Un complejo antibi&oacute;tico de amplio espectro que brinda seguridad y eficacia"
End If %>
</head>
<body>
  <div id="izqFino" class="izqFino">
   <div class="titNota"><% =titCategoriaFosbac %></div>
   <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
   <div class="btnTit">
    <a href="fosbac.asp?i=<% =idioma %>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('titFosbac','','img/titFosbac_on.jpg',1)">
     <img src="img/titFosbac_off.jpg" width="300" height="20" alt="Fosbac&trade;" title="Fosbac&trade;" name="titFosbac" id="titFosbac" />
    </a>
    <a href="fosbacpt.asp?i=<% =idioma %>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('titFosbacPT','','img/titFosbacPT_on.jpg',1)">
     <img src="img/titFosbacPT_off.jpg" width="300" height="20" alt="Fosbac&trade; Plus T" title="Fosbac&trade; Plus T" name="titFosbacPT" id="titFosbacPT" />
    </a>
   </div>
   <div class="frase"><% =fraseFosbac %></div>
  </div>
  <div id="derAncho" class="derAncho">
   <div class="titNota"><% =titCategoriaBg %></div>
   <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
   <div class="btnTit">
    <a href="b40sfac.asp?i=<% =idioma %>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('titBedgen40SFAC','','img/titBedgen40SFAC_on.jpg',1)">
     <img src="img/titBedgen40SFAC_off.jpg" width="300" height="20" alt="Bedgen 40&trade; SFA" title="Bedgen 40&trade; SFA" name="titBedgen40SFAC" id="titBedgen40SFAC" />
    </a>
    <a href="b40st.asp?i=<% =idioma %>" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('titBedgen40ST','','img/titBedgen40ST_on.jpg',1)">
     <img src="img/titBedgen40ST_off.jpg" width="300" height="20" alt="Bedgen 40&trade; ST" title="Bedgen 40&trade; ST" name="titBedgen40ST" id="titBedgen40ST" />
    </a>
   </div>
   <div class="frase"><% =fraseBedgen %></div>
  </div>
  <script type="text/javascript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</body>
</html>