; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppPublisher "Vember Audio"
#define MyAppURL "http://www.vemberaudio.se"
#define MyAppName "Surge"
#define MyID "650E559A-2F44-44FE-861F-4108AE4BC30E"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
AppId={#MyID}
AppName="{#MyAppName} {#MyAppVersion}"
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={reg:HKLM\SOFTWARE\VST,VSTPluginsPath|{pf}\Steinberg\VSTPlugins}\
DefaultGroupName=Vember Audio Surge
DisableProgramGroupPage=yes
LicenseFile=surge_license.txt
OutputBaseFilename="Install {#MyAppName} {#MyAppVersion}"
SetupIconFile=surge.ico
Compression=lzma
SolidCompression=yes

[Components]
Name: Data; Description: Data files; Types: full compact custom; Flags: fixed
Name: VST; Description: VST Plug-in (64 bit); Types: full custom; Flags: checkablealone
Name: VST3; Description: VST3 Plug-in (64 bit); Types: full compact custom; Flags: checkablealone

[Files]
Source: ..\target\vst2\Release\Surge.dll; DestDir: {app}\; Components: VST
Source: ..\target\vst3\Release\Surge.vst3; DestDir: {cf}\VST3\Vember Audio; Components: VST3
Source: surge\surgedata\*; DestDir: {localappdata}\Vember Audio Surge; Components: Data; Flags: recursesubdirs; Excludes: "*.hg,demo*\*";

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

