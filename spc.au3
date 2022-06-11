;small pass scanner spanish:
; Me inspiré a hacer esta pequeña herramienta por una página que ahora mismo no recuerdo su nombre ni su WEB, pero escribías una contraseña y el mismo programa te decía qué tal era su fortaleza. Hasta recuerdo que habían mensajes con humor...
#include <FileConstants.au3>
$sPassFilePath = @ScriptDir & "\Small Pass Scanner.txt"
$pass = inputbox("Small pass scanner by Mateo C", "Introducir una contraseña", "", "*m200")
switch stringLen($pass)
case  0
MsgBox(16, "Oye", "¿Pero qué es esto? ¡No hay nada aquí!")
exit
case 1 to 3
MsgBox(16, "Hmm...", "Digamos que esa contraseña es muy dévil como para ser aceptada en un sistema. Será pan comido para mí. Voy a por ti, más vale que estés preparado. Es más, ¡La puedo adivinar en menos de cinco minutos!")
case 4 to 8
msgBox(0, "Dévil", "Aunque estas contraseñas son las más mínimas que se pueden aceptar es recomendable aumentar su fortaleza, así se evita hackeos o robos. ¡Por mí ya la adivinaría en pocos intentos y destruyo esa pc!")
case 9 to 15
MsgBox(0, "Aceptable", "Esta contraseña te biene bien si eres uno de quienes no tiene una memoria suficiente para procesar estas cosas. De todos modos, no está mal de que la anotaras.")
case 16 to 23
MsgBox(0, "Buena", "Presiento que esta contraseña te ará sentir más seguro ante cualquiera que intente adivinarla. Ante mí, por ejemplo. ¡Me gusta adivinar contraseñas!")
case 24 to 31
MsgBox(48, "Muy buena", "¡Felicidades! esta contraseña es muy fuerte, ni si quiera yo puedo descodificarla... Maldición, me caigo rendido ante la pantalla y este deber de ser hacker que es una reverenda cochinada.")
case 32 to 39
MsgBox(48, "¡Increíble!", "¿Sabes? Ni a mí se me ocurrió una contraseña como esa. ¡Sólo espero no la olvides! pobre de ti.")
case 40 to 47
MSgBox(48, "Atención", "El sistema de hackers va a por tí y se vengará de todo esto. ¿Será posible que esta trabesía se pueda cumplir? es evidente que no... AUNQUE todo puede pasar.")
case 48 to 63
MsgBox(48, "Admirable", "Ya valiste. Esto no se puede descodificar. Tardaría incluso años en adivinar esa maldita contraseña, ¡dámela ahora mismo! ¡Yaaa!")
case 64 to 74
MsgBox(48, "¡Genial!", "Ojalá pueda tener el mismo potencial que tu. Pero ¿Sabes por qué lo digo? porque nada de eso es comparado ni siquiera con el tema de los binarios, esta contraseña toma una vida en descubrir.")
case 75 to 85
msgBox(48, "Wow", "Sin palabras... Esto es fuerte. Donde que se te olvide... Ja ja ja me voy a reír.")
case 86 to 96
MsgBox(48, "Inspirado", "Bueno, está bien que quieras mantenerte seguro, pero... OK, está bien, aunque me temo que tendrás que anotarla.")
case 97 to 127
MsgBox(48, "¡Genial!", "Creo que es la contraseñña más larga que nadie ha escrito. ¡Es la número uno imposible! ¡fuera, hackers! nadie podrá conmigo")
case 128 to 199
MsgBox(48, "¡Wow!", "¿Pero esto que es? ¿Un testamento? ¡Estamos locos o que! vé a descansar.")
case else
msgBox(16, "Error", "Esto no es una contraseña. Creo que ya te pasaste, amig@.")
endSwitch
$save = MsgBox(4, "Consejo", "Recuerda respaldar esta contraseña en un lugar seguro. Es una buena forma de protegerla y llebarla contigo donde quieras. ¿Deseas guardarla ahora mismo?")
if $save = 6 then
Save()
Else
MsgBox(48, "hasta pronto", "Espero vuelvas a consultarme la fortaleza de cualquier otra contraseña que desearías. Después de todo estoy aquí para aconsejarte.")
EndIf
func save()
$tmessage = "Este archivo ha sido generado con small pass scanner. Aquí se guardarán las contraseñas que hayas ingresado." &@crlf &"Por favor, guarda este documento en un lugar seguro."
$passwords = FileOpen($sPassFilePath, $FO_APPEND)
if not FileReadLine(FileOpen($sPassFilePath, $FO_READ), 1) = $tmessage then FileWriteLine($passwords, $tmessage)
FileWriteLine($passwords, "Contraseña: " &$pass)
msgbox(0, "Listo", "¡Contraseña guardada correctamente! Recuerda, mantenla segura y no la compartas a menos que sea una persona de confianza. El fichero está en " &$sPassFilePath)
FileClose($passwords)
EndFunc