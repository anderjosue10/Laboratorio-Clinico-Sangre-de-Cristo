[Setup]
AppName=Laboratorio Clínico
AppVersion=1.0
DefaultDirName={pf}\LaboratorioClinico
DefaultGroupName=Laboratorio Clínico
OutputDir=.
OutputBaseFilename=LaboratorioSetup
Compression=lzma
SolidCompression=yes

[Files]
; Copia todo el contenido de publish y el icono
Source: "publish\*"; DestDir: "{app}\publish"; Flags: recursesubdirs createallsubdirs
Source: "C:\Users\DELL\Desktop\InstaladorFinal\microscopio.ico"; DestDir: "{app}\publish"; Flags: ignoreversion

[Icons]
; Acceso directo en el menú de inicio (nombre completo "Laboratorio Clínico")
Name: "{group}\Laboratorio Clínico"; Filename: "{sys}\wscript.exe"; Parameters: """{app}\publish\iniciar_app.vbs"""; WorkingDir: "{app}\publish"; IconFilename: "{app}\publish\microscopio.ico"
; Acceso directo en el escritorio (opcional)
Name: "{commondesktop}\Laboratorio Clínico"; Filename: "{sys}\wscript.exe"; Parameters: """{app}\publish\iniciar_app.vbs"""; WorkingDir: "{app}\publish"; Tasks: desktopicon; IconFilename: "{app}\publish\icono.ico"

[Tasks]
Name: desktopicon; Description: "Crear un ícono en el escritorio"; GroupDescription: "Tareas opcionales"; Flags: unchecked

[Run]
Filename: "{sys}\wscript.exe"; Parameters: """{app}\publish\iniciar_app.vbs"""; Description: "Iniciar Laboratorio Clínico"; Flags: nowait postinstall skipifsilent