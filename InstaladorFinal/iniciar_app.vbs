Set WshShell = CreateObject("WScript.Shell")

' 1. Iniciar la API oculta (ruta absoluta desde la instalación)
WshShell.Run """C:\Program Files (x86)\LaboratorioClinico\publish\APILABORATORIO.exe""", 0, False

' 2. Esperar 5 segundos
WScript.Sleep 5000

' 3. Abrir navegador (Chrome/Edge) sin terminal
WshShell.Run """C:\Program Files\Google\Chrome\Application\chrome.exe"" http://localhost:5090 --new-window", 0, False

Set WshShell = Nothing