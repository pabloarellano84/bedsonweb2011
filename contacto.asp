<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: Bedson S.A. ::.</title>
<link href="estilos/comunes.css" rel="stylesheet" type="text/css" />
<link href="estilos/contacto.css" rel="stylesheet" type="text/css" />
<%
If request("i") = "en" Then
 idioma = "en"
 titSeccion = "YOUR MESSAGE"
 rtaMsj = "Thank you for contacting us."
 inputNombre = "NAME"
 inputApellido = "LAST NAME"
 inputMail = "EMAIL"
 inputDpto = "Department"
 selectDpto = "Purchasing |Sales Las Americas|Sales EMEAA|Corporate Social Responsibility|Environment, Health and Safety|Human Resources|Marketing|Customer Service|Technical Department"
 inputMsj = "MESSAGE"
 titDestino = "MESSAGE DESTINATION"
 inputSnd = "Send"
 camposReq = "All fields are required."
Else
 idioma = "es"	
 titSeccion = "SU MENSAJE"
 rtaMsj = "Muchas Gracias por contactarse con nosotros."
 inputNombre = "NOMBRE"
 inputApellido = "APELLIDO"
 inputMail = "MAIL"
 inputDpto = "DEPARTAMENTO"
 selectDpto = "Compras|Ventas Las Américas|Ventas EMEAA|Responsabilidad Social Empresaria |Medio Ambiente, Higiene y seguridad|Recursos Humanos|Marketing|Servicios al Cliente|Departamento Técnico"
 inputMsj = "MENSAJE"
 titDestino = "DESTINATARIO MENSAJE"
 inputSnd = "Enviar"
 camposReq = "Todos los campos son obligatorios."
End If 
deptos = Split(selectDpto,"|")
mail_destino = " armando.davila@bedson.com.ar|jorge.basanta@bedson.com.ar|richard.nohra@bedson-me.com|ariel.vazquez@bedson.com.ar|ariel.vazquez@bedson.com.ar|raul.masi@bedson.com.ar|sofia.soubie@bedson.com.ar;romano.sforza@gmail.com|sofia.soubie@bedson.com.ar|roberto.harkes@bedson.com.ar;hugo.garcia@bedson.com.ar;sofia.soubie@bedson.com.ar"
mail_destino = Split(mail_destino,"|")

IPaddress = Request.ServerVariables ("HTTP_X_FORWARDED_FOR")
If IPaddress = "" Then
 IPaddress = Request.ServerVariables ("REMOTE_ADDR")
End if
Dim i, pos, PrevPos, num
If IPaddress = "" Then
 IPAddressToNumber = 0
Else
 For i = 1 To 4
  pos = InStr(PrevPos + 1, IPaddress, ".", 1)
  If i = 4 Then
   pos = Len(IPaddress) + 1
  End If
  num = Int(Mid(IPaddress, PrevPos + 1, pos - PrevPos - 1))
  PrevPos = pos
  IPAddressToNumber = ((num Mod 256) * (256 ^ (4 - i))) + IPAddressToNumber
 Next
End If
var_texto1 = ""
var_texto2 = ""
hnew_mensaje = "120px"
rowsMensaje = "6"
'response.write(IPAddressToNumber)
'guardamos en la variable "archivo" el nombre y la direccion del txt que vamos a subir al SQL
ruta = Server.MapPath("spain.csv")
'response.Write(archivo&"<br>")
'generamos el objeto que nos permite leer los archivos
Set fso = Server.CreateObject("Scripting.FileSystemObject")
'le decimos que abra el archivo que nosotros pusimos enla variable
Set archivo = fso.OpenTextFile(ruta,1)
'guardamos en la variable "cadena" la línea
cadena = archivo.readline
'Response.Write(cadena)
'hacemos un bucle para recorrer todas las líneas del archivo
Do While Not archivo.atEndofstream
 'en una variable guardamos la línea actual
 cadena = archivo.readline
 'Response.write("<br>Cadena: "& cadena)
 'separamos la línea por los ";"
 cadena = Split(cadena,";")
 'como ya sabemos el formato que tiene el archivo podemos indicar que campo va a cada variable
 desde  	 = cadena(0)
 hasta		 = cadena(1)
 pais	 	 = cadena(4)
 If pais = "SPAIN" Then
  If Int(IPAddressToNumber) >= Int(desde) Then
   If Int(IPAddressToNumber) <= Int(hasta) Then
    If request("i") = "en" Then
	var_texto1 = "It is hereby declared that both all personal information entered and  e-mail address  have been registered, being BEDSON ESPAÑA SL responsible for it and with the sole purpose of answering your inquiries  and send information related to the firm that might be of your interest. In the event you wish to access, amend, cancel or object as per Fundamental Law 15/1999, you can do so at BEDSON ESPAÑA S.L., C/ Princesa 25, Edificio Hexágono, Planta 1, Oficina 1.8 – 28008 Madrid."
	var_texto2 = ""
	Else
	var_texto1 = "Le informamos que los datos personales obtenidos mediante este formulario, así como su dirección de correo electrónico, han sido incorporados en un fichero del cual es responsable BEDSON ESPAÑA SL, con la finalidad de atender sus consultas y enviarle información relacionada con la entidad que pudiera ser de su interés. Si desea ejercer los derechos de acceso, rectificación, cancelación u oposición en los términos establecidos en la Ley Orgánica 15/1999. Puede hacerlo a la siguiente dirección:"
	var_texto2 = "BEDSON ESPAÑA S.L., C/ Princesa 25, Edificio Hexágono, Planta 1, Oficina 1.8 – 28008 Madrid."
	End If
	hnew_mensaje = "60px"
	rowsMensaje = "2"
    Exit Do
   End If 
  End If
 End If
Loop
Set archivo = Nothing
Set fso = Nothing
%>
</head>

<body><%
opcion = Request("op")
Select Case opcion
 Case "for" %>
 <script type="text/javascript">
//funcion en java para validar que los campos de texto tengan algo al enviar el form
function valida(){
	var var_salida = 0;
	document.getElementById('new_nombre').className = "";
	document.getElementById('new_apellido').className = "";
	document.getElementById('new_mail').className = "";
	document.getElementById('new_depto').className = "";
	document.getElementById('new_mensaje').className = "";
	//valido el titulo
	if (document.contacto.nombre.value == ""){
		var_salida += 1;
		document.getElementById('new_nombre').className = "validar_borde";
	}
	//valido ciudad
	if (document.contacto.apellido.value == ""){
		var_salida += 1;
		document.getElementById('new_apellido').className = "validar_borde";
	}
	//valido tema
	if (document.contacto.mail.value == ""){
		var_salida += 1;
		document.getElementById('new_mail').className = "validar_borde";
	}
	//valido fecha de publicacion
	if (document.contacto.mensaje.value == ""){
		var_salida += 1;
		document.getElementById('new_mensaje').className = "validar_borde";
	}
	//valido depto
	if (document.contacto.depto.value == ""){
		var_salida += 1;
		document.getElementById('new_depto').className = "validar_borde";
	}
  	if (var_salida != 0){
		alert("<% =camposReq %>");
		var_salida = "";
		return false;
	}else{
		document.contacto.submit();
	}
}
function inicio(){
	var btnEnviar = document.getElementById("boton");
	btnEnviar.onmouseover = changePicture;
	btnEnviar.onmouseout = changePicture;
	btnEnviar.onclick = valida;
	var misOption = document.getElementById("opciones");
	var losDiv = misOption.getElementsByTagName("div");	
	for(var i=0;i<losDiv.length;i++){
		var forMis = losDiv[i];
		forMis.onclick = dejarSeleccionado;
		if(varClase==0){
			varClase=1;
			miclase = "par";
		}else{
			miclase = "impar";
			varClase=0;
		}
		forMis.className = miclase;
	}
	varClase=0;
}
var varClase = 0;
var miclase = "";
var ctrl = 0;
window.onload = inicio;
function changePicture(){
	var sndBoton = this;
	if (ctrl == 0){
		sndBoton.src = 'img/btnEnviar_on_<% =idioma %>.png';
		sndBoton.style.cursor='pointer';
		ctrl = 1;
	}else{
		sndBoton.src = 'img/btnEnviar_off_<% =idioma %>.png';
		sndBoton.style.cursor='default';
		ctrl = 0;
	}
}
function dejarSeleccionado(){
	desSeleccion();
	var optionSelect = this;
	optionSelect.className = "mioption";
	var inputHidden = document.getElementById("depto");
	inputHidden.value = this.id;
}
function desSeleccion(){
	var misOption = document.getElementById("opciones");
	var losDiv = misOption.getElementsByTagName("div");
	for(var i=0;i<losDiv.length;i++){
		var forMis = losDiv[i];
		if(varClase==0){
			varClase=1;
			miclase = "par";
		}else{
			miclase = "impar";
			varClase=0;
		}
		forMis.className = miclase;
	}
	varClase=0;
}
</script>
<form action="contacto.asp" method="post" name="contacto" id="contacto" onsubmit="javascript:return valida();">
<input type="hidden" value="snd" name="op" />
<div class="izqFino">
 <div class="titNota"><% =titSeccion %></div>
 <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
 <div class="titulos">
   <div id="new_nombre"><% =inputNombre %><BR/><input type="text" name="nombre" size="35" class="formulario" /></div>
   <div id="new_apellido"><% =inputApellido %><br /><input type="text" name="apellido" size="35" class="formulario" /></div>
   <div id="new_mail"><% =inputMail %><br /><input type="text" name="mail" size="35" class="formulario" /></div>
   <div id="new_mensaje" style="height:<% =hnew_mensaje %>;"><% =inputMsj %><br /><textarea rows="<% =rowsMensaje %>" cols="30" name="mensaje" class="formulario"></textarea></div><%
   If var_texto1 <> "" Then %>
    <div style="font-size:9px;"><% =var_texto1 %></div><%
   End If %>
 </div>
</div>
<div class="derAncho">
 <div class="titNota"><% =titDestino %></div>
 <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
 <div class="titulos">
  <div id="new_depto" name="new_depto"><% =inputDpto %><br />
  <div id="opciones" name="opciones" class="opciones">
   <input type="hidden" value="" name="depto" id="depto" /><%
	For x = 0 To UBound(deptos)
	 response.Write("<div id='valor"& x &"'>"& deptos(x) &"</div>")
	Next %>
    </div>
   </div>
 </div>
 <div class="btnSubmit"><img src="img/btnEnviar_off_<% =idioma %>.png" id="boton" alt="<% =inputSnd %>" title="<% =inputSnd %>" width="84" height="24" /></div><%
   If var_texto2 <> "" Then %>
    <div style="font-size:9px; color:#717375; padding:10px 2px 2px 2px;"><% =var_texto2 %></div><%
   End If %>
</div></form><%
	
 Case "snd"
'  Recuperamos las variables
  nombre	= Request("nombre")
  apellido	= Request("apellido")
  mail		= Request("mail")
  depto		= Request("depto")
  mensaje	= Request("mensaje")
  depto		= Replace(depto,"valor","")
  id_depto  = CInt(depto)
  'Vemos que departamente eligio para saber que mail sera el destinatario
  ' ****** ENVIO DE CORREO ******
  HTML=HTML
  HTML=HTML&"REMITENTE: " & nombre & " " & apellido & ""&vbcrlf
  HTML=HTML&"EMAIL: " & mail & "" &vbcrlf
  HTML=HTML&"DEPARTAMENTO SELECCIONADO: " & deptos(id_depto) & "" &vbcrlf
  HTML=HTML&"MENSAJE: " & mensaje & "" &vbcrlf

  Set Mailer = CreateObject("CDONTS.NewMail")

  Mailer.From = "bedson@bedson.com.ar"
'  Mailer.To = "pablo.arellano@bedson.com.ar"
  Mailer.To = mail_destino(id_depto)
  ' Mailer.Cc = "roberto.harkes@bedson.com.ar; rapela@bedson.com.ar"
  ' Mailer.Cc = "roberto.harkes@bedson.com.ar"
'  Mailer.Bcc = "ror@bedsonesp.e.telefonica.net; sistemas@bedson.com.ar;"

  Mailer.Subject = "Consulta desde Sitio Web de Bedson"
  Mailer.MailFormat = 0
  Mailer.Importance = 2
  Mailer.Body = HTML
  Mailer.Send
  Set Mailer = nothing %>
  <div class="fnd">
   <div class="titNota"><% =titSeccion %></div>
   <div class="finTitNota"><img src="img/btnTit_terminacion.png" width="20" height="36" alt="" /></div>
  </div>
<div class="msj"><div align="center"><img src="img/agradecimiento_<% =idioma %>.jpg" width="454" height="255" alt="<% =rtaMsj %>" title="<% =rtaMsj %>" /></div></div><%
End Select %>
</body>
</html>
