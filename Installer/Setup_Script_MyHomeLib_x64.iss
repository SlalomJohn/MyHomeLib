﻿[Setup]
AppName=MyHomeLib x64
PrivilegesRequired=poweruser
DefaultDirName={commonpf}\MyHomeLib\
DefaultGroupName=MyHomeLib
AppID={{B9B6C409-01CB-4AB6-8E4F-403B49A25B56}
OutputDir=.
SourceDir=.
AppVerName=MyHomeLib v.2.4
AppCopyright=© 2009-2023 Oleksiy Penkov (oleksiy.penkov@gmail.com)
UninstallDisplayIcon={app}\MyHomeLib.exe
WizardImageFile=.\Images\SetupModern20.bmp
WizardSmallImageFile=.\Images\SetupModernSmall20.bmp
SetupIconFile=.\Images\Setup.ico
OutputBaseFilename=Setup_MyHomeLib.2.4x64
AppPublisherURL=https://github.com/OleksiyPenkov/myhomelib/
AppSupportURL=https://github.com/OleksiyPenkov/myhomelib/
AppUpdatesURL=https://github.com/OleksiyPenkov/myhomelib/
UsePreviousAppDir=yes
AllowNoIcons=yes
Compression=lzma/ultra
SolidCompression=yes
LicenseFile=..\..\MyHomeLib_2_4\License.txt
VersionInfoVersion=2.4
ArchitecturesInstallIn64BitMode=x64

[Dirs]
Name: "{userappdata}\MyHomeLib"; Permissions: everyone-modify
Name: "{app}\update\"; Permissions: everyone-modify
[Files]
Source: ..\..\MyHomeLib_2_4\AlReader\*.*; DestDir: {app}\AlReader
Source: ..\..\MyHomeLib_2_4\AlReader\AlReader2\*.*; DestDir: {app}\AlReader\AlReader2\
Source: ..\..\MyHomeLib_2_4\converters\fb2lrf\*.*; DestDir: {app}\converters\fb2lrf\
Source: ..\..\MyHomeLib_2_4\converters\fb2mobi\*.*; DestDir: {app}\converters\fb2mobi\

Source: ..\..\MyHomeLib_2_4\converters\fb2pdf\*.*; DestDir: {app}\converters\fb2pdf\
Source: ..\..\MyHomeLib_2_4\converters\fb2pdf\data\*.*; DestDir: {app}\converters\fb2pdf\data\
Source: ..\..\MyHomeLib_2_4\converters\fb2pdf\lib\*.*; DestDir: {app}\converters\fb2pdf\lib\
Source: ..\..\MyHomeLib_2_4\converters\fb2pdf\UI\*.*; DestDir: {app}\converters\fb2pdf\UI\

Source: ..\..\MyHomeLib_2_4\converters\fb2epub\*.*; DestDir: {app}\converters\fb2epub\
Source: ..\..\MyHomeLib_2_4\converters\fb2epub\DefaultSettings\*.*; DestDir: {app}\converters\fb2epub\DefaultSettings\
Source: ..\..\MyHomeLib_2_4\converters\fb2epub\FireFoxPlugin\*.*; DestDir: {app}\converters\fb2epub\FireFoxPlugin\
Source: ..\..\MyHomeLib_2_4\converters\fb2epub\ru\*.*; DestDir: {app}\converters\fb2epub\ru\

Source: ..\..\MyHomeLib_2_4\genres_nonfb2.glst; DestDir: {app}; Flags: replacesameversion
Source: ..\..\MyHomeLib_2_4\genres_fb2.glst; DestDir: {app}; Flags: replacesameversion

Source: ..\..\MyHomeLib_2_4\collections.ini; DestDir: {app}; Flags: replacesameversion
Source: ..\..\MyHomeLib_2_4\License.txt; DestDir: {app}; Flags: replacesameversion
Source: ..\..\MyHomeLib_2_4\MyHomeLib.chm; DestDir: {app}; Flags: replacesameversion
Source: ..\..\MyHomeLib_2_4\MyHomeLib.url; DestDir: {app}; Flags: replacesameversion

Source: ..\..\MyHomeLib_2_4x64\MyHomeLib.exe; DestDir: {app}; Flags: replacesameversion
Source: ..\..\MyHomeLib_2_4x64\sqlite3.dll; DestDir: {app}; Flags: replacesameversion
Source: ..\..\MyHomeLib_2_4x64\libeay32.dll; DestDir: {app}; Flags: replacesameversion
Source: ..\..\MyHomeLib_2_4x64\ssleay32.dll; DestDir: {app}; Flags: replacesameversion

[Icons]
Name: {group}\MyHomeLib; Filename: {app}\MyHomeLib.exe; WorkingDir: {app}; IconFilename: {app}\MyHomeLib.exe; IconIndex: 0; Comment: MyHomeLib
Name: {group}\Справка по MyHomeLib; Filename: {app}\MyHomeLib.chm; WorkingDir: {app}; IconFilename: {sys}\ieframe.dll; IconIndex: 36; Comment: MyHomeLib Help
Name: {commondesktop}\MyHomeLib; Filename: {app}\MyHomeLib.exe; WorkingDir: {app}; IconFilename: {app}\MyHomeLib.exe; IconIndex: 0; Comment: MyHomeLib; Tasks: desktopicon
Name: {group}\MyHomeLib website; Filename: {app}\MyHomeLib.url; IconFilename: {sys}\ieframe.dll; IconIndex: 36
Name: {group}\{cm:UninstallProgram, My Home Library}; Filename: {uninstallexe}
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\MyHomeLib"; Filename: "{app}\MyHomeLib.exe"; Tasks: quicklaunchicon
[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}
Name: "quicklaunchicon"; Description: "Create a &Quick Launch icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Languages]
Name: Russian; MessagesFile: compiler:Languages\Russian.isl
Name: English; MessagesFile: compiler:Default.isl
Name: Ukrainian; MessagesFile: compiler:Languages\Ukrainian.isl
[UninstallDelete]
Name: {userappdata}\MyHomeLib\Data; Type: filesandordirs
Name: {userappdata}\MyHomeLib\Presets; Type: filesandordirs
Name: {userappdata}\MyHomeLib\*.*; Type: files
Name: {userappdata}\MyHomeLib; Type: dirifempty
Name: {app}; Type: files
[Run]
Filename: {app}\MyHomeLib.exe; WorkingDir: {app}; Description: {cm:LaunchProgram,MyHomeLib}; Flags: nowait postinstall skipifsilent; Check: ; Tasks: 