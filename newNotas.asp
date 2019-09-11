<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001" LCID="1034"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin título</title>
<style type="text/css">
<!--
form {
	margin-left:auto;
	margin-right:auto;
	width:50%;
}
div {
	width:80%;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #000;
	text-align: right;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 20px;
	margin: 2px;
}
.validar_borde {
	border:#FF9933;
	border:solid;
	border:3px;
}

-->
</style>
</head>

<body><%
Response.Write("Fecha de hoy: "& Date())
opcion = Request("opcion")
Select Case opcion
 Case "form" 
  usr = Request("usr")
  pass = Request("pass")
  If usr = "bedsonActWeb" AND pass = "bsaP4BL0" Then %>
  <script type="text/javascript">
//funcion en java para validar que los campos de texto tengan algo al enviar el form
function valida(){
	var var_salida = 0;
	document.getElementById('new_tituloES').className = "";
	document.getElementById('new_tituloIN').className = "";
	document.getElementById('new_copeteES').className = "";
	document.getElementById('new_copeteIN').className = "";
	document.getElementById('new_cuerpoES').className = "";
	document.getElementById('new_cuerpoIN').className = "";
	document.getElementById('new_firma').className = "";
	document.getElementById('new_fechadealta').className = "";

	//valido el titulo español
	if (document.nota.tituloES.value == ""){
		var_salida += 1;
		document.getElementById('new_tituloES').className = "validar_borde";
	}
	//valido el titulo ingles
	if (document.nota.tituloIN.value == ""){
		var_salida += 1;
		document.getElementById('new_tituloIN').className = "validar_borde";
	}
	//valido el copete español
	if (document.nota.copeteES.value == ""){
		var_salida += 1;
		document.getElementById('new_copeteES').className = "validar_borde";
	}
	//valido el copete ingles
	if (document.nota.copeteIN.value == ""){
		var_salida += 1;
		document.getElementById('new_copeteIN').className = "validar_borde";
	}
	//valido el cuerpo español
	if (document.nota.cuerpoES.value == ""){
		var_salida += 1;
		document.getElementById('new_cuerpoES').className = "validar_borde";
	}
	//valido el cuerpo ingles
	if (document.nota.cuerpoIN.value == ""){
		var_salida += 1;
		document.getElementById('new_cuerpoIN').className = "validar_borde";
	}
	//valido la firma
	if (document.nota.firma.value == ""){
		var_salida += 1;
		document.getElementById('new_firma').className = "validar_borde";
	}
	//valido la fecha de alta
	if (document.nota.fechadealta.value == ""){
		var_salida += 1;
		document.getElementById('new_fechadealta').className = "validar_borde";
	}
  	if (var_salida != 0){
		var_salida = 0;
		return false;
	}
}
</script>

  <form action="newNotas.asp" method="post" id="nota" name="nota" onSubmit="javascript:return valida();">
   <input type="hidden" name="opcion" value="ins" />
   <div id="new_id"><label>Id <input name="idNota" type="text" size="50" /></label></div>
   <div id="new_tituloES"><label>Titulo en espa&ntilde;ol <input name="tituloES" type="text" size="50" /></label></div>
   <div id="new_tituloIN"><label>Titulo en ingl&eacute;s <input name="tituloIN" type="text" size="50" /></label></div>
   <div id="new_copeteES"><label>Copete en espa&ntilde;ol <input name="copeteES" type="text" size="50" /></label></div>
   <div id="new_copeteIN"><label>Copete en ingl&eacute;s <input name="copeteIN" type="text" size="50" /></label></div>
   <div id="new_cuerpoES"><label>Cuerpo en espa&ntilde;ol <textarea name="cuerpoES" cols="50" rows="10"></textarea></label></div>
   <div id="new_cuerpoIN"><label>Cuerpo en ingl&eacute;s <textarea name="cuerpoIN" cols="50" rows="10"></textarea></label></div>
   <div id="new_firma"><label>Firma <input name="firma" type="text" size="50" /></label></div>
   <div id="new_fechadealta"><label>Fecha de Alta <input name="fechadealta" type="text" size="50" /></label></div>
   <div align="center"><input type="submit" value="Grabar" name="boton" /></div>
  </form>
 <%
  Else
   %>
   <h1 align="center">Usuario incorrecto.<br/><a href="javascript:history.back();">Intentelo nuevamente</a></h1><%
  End If
 Case "ins"
 	idNota	= Request("idNota")
	TituloIN = Request("tituloIN")
	TituloES = Request("tituloES")
	CopeteIN = Request("copeteIN")
	CopeteES = Request("copeteES")
	CuerpoES = Request("cuerpoES")
	CuerpoIN = Request("cuerpoIN")
	firma = Request("firma")
	fechadealta = Request("fechadealta")
	Dim ServerPath
	Dim base
	Dim cn
	ServerPath = Server.MapPath (".")
	Sub OpenDB
	 If Not(IsObject(cn)) Then
	  base = "Data Source=" & Server.Mappath("mdb/bedson.mdb") & ";Provider=Microsoft.Jet.OLEDB.4.0;"
	  Set cn = Server.CreateObject ("ADODB.Connection")
	  cn.Open base
	 End If
	End Sub
	Sql = "INSERT INTO Notas "&_
			"(Id, TituloIN, TituloES, CuerpoES, Enviada, DependeDe, Newsletter, Fechadealta, Firma, CopeteIN, CopeteES, CuerpoIN) "&_
			"VALUES ("& idNota &", '"& TituloIN &"', '"& TituloES &"', '"& CuerpoES &"', 0, 1, 0, '"& fechadealta &"', '"& firma &"', '"& CopeteIN &"', '"& CopeteES &"', '"& CuerpoIN &"')"
	 OpenDB
	 cn.Execute Sql

	 Sql = "SELECT Id FROM Notas WHERE TituloES = '"& TituloES &"'"
	 Set rsnotas = Server.CreateObject("ADODB.Recordset")
	 rsnotas.open Sql, cn
	 If rsnotas.EOF Then %>
	  La nota con titulo: '<strong><% =TituloES %></strong>' NO fue subida a la base de datos.<%
	 Else
	  id_nota = rsnotas("Id") %>
	  La nota con titulo: '<strong><% =TituloES %></strong>' fue subida a la base de datos con &eacute;xito.
      El ID a poner en las fotos es: <strong><% =id_nota %></strong>.<%
	 End If
	Case Else
	 %><form action="newNotas.asp" method="post" id="login" name="login">
   <input type="hidden" name="opcion" value="form" />
   <div id="usuario"><label>Usuario <input name="usr" type="text" size="50" /></label></div>
   <div id="clave"><label>Clave <input name="pass" type="password" size="50" /></label></div>
   <div align="center"><input type="submit" value="Ingresar" name="boton" /></div>
  </form><%
End Select %>
</body>
</html>
