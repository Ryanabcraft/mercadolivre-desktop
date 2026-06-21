[Setup]
AppName=Mercado Livre Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/mercadolivre-desktop
AppSupportURL=https://github.com/Ryanabcraft/mercadolivre-desktop/issues
DefaultDirName={localappdata}\Mercado Livre Desktop
DefaultGroupName=Mercado Livre Desktop
UninstallDisplayIcon={app}\MercadoLivre.exe
UninstallDisplayName=Mercado Livre Desktop
OutputDir=dist_installer
OutputBaseFilename=MercadoLivre-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\MercadoLivre.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Mercado Livre"; Filename: "{app}\MercadoLivre.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Mercado Livre Desktop"; Filename: "{app}\MercadoLivre.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Mercado Livre Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\MercadoLivre.exe"; Description: "Executar Mercado Livre Desktop"; Flags: postinstall nowait skipifsilent
