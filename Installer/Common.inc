; *************************************************************
;
; InnoSetup script for MyHomeLib
;
; Copyright:		© 2023 Oleksiy Penkov (aka Koreec)
; Author:		Oleksiy Penkov oleksiy.penkov@gmail.com
; Created:		22.05.2023
;
; Modified:		22.05.2023 by SlalomJohn
; Description:		Global settings
;
;**************************************************************

[Setup]
AppCopyright=(c) 2023 Oleksiy Penkov
#define AppURL = 'https://github.com/OleksiyPenkov/MyHomeLib'
#define MyAppName = 'MyHomeLib'
#define AppExeName = MyAppName + '.exe'
PrivilegesRequired=poweruser
AppID={{B9B6C409-01CB-4AB6-8E4F-403B49A25B56}
OutputDir=.\Out
SourceDir=.
WizardImageFile=.\Images\SetupModern20.bmp
WizardSmallImageFile=.\Images\SetupModernSmall20.bmp
SetupIconFile=.\Images\Setup.ico
UsePreviousAppDir=yes
AllowNoIcons=yes
Compression=lzma/ultra
SolidCompression=yes
LicenseFile=Common\License.txt

[Dirs]
Name: "{app}\update\"; Permissions: everyone-modify

[Files]
Source: Common\AlReader\*.*; DestDir: {app}\AlReader
Source: Common\AlReader\AlReader2\*.*; DestDir: {app}\AlReader\AlReader2\
Source: Common\converters\fb2lrf\*.*; DestDir: {app}\converters\fb2lrf\
Source: Common\converters\fb2mobi\*.*; DestDir: {app}\converters\fb2mobi\

Source: Common\converters\fb2pdf\*.*; DestDir: {app}\converters\fb2pdf\
Source: Common\converters\fb2pdf\data\*.*; DestDir: {app}\converters\fb2pdf\data\
Source: Common\converters\fb2pdf\lib\*.*; DestDir: {app}\converters\fb2pdf\lib\
Source: Common\converters\fb2pdf\UI\*.*; DestDir: {app}\converters\fb2pdf\UI\

Source: Common\converters\fb2epub\*.*; DestDir: {app}\converters\fb2epub\
Source: Common\converters\fb2epub\DefaultSettings\*.*; DestDir: {app}\converters\fb2epub\DefaultSettings\
Source: Common\converters\fb2epub\FireFoxPlugin\*.*; DestDir: {app}\converters\fb2epub\FireFoxPlugin\
Source: Common\converters\fb2epub\ru\*.*; DestDir: {app}\converters\fb2epub\ru\

Source: Common\collections.ini; DestDir: {app}; Flags: replacesameversion
Source: Common\License.txt; DestDir: {app}; Flags: replacesameversion
Source: Common\MyHomeLib.chm; DestDir: {app}; Flags: replacesameversion
Source: Common\MyHomeLib.url; DestDir: {app}; Flags: replacesameversion
Source: Common\_update_readme.txt; DestDir: {app}; Flags: replacesameversion

Source: Common\genres_nonfb2.glst; DestDir: {app}; Flags: replacesameversion
Source: Common\genres_fb2.glst; DestDir: {app}; Flags: replacesameversion
Source: Common\WhatsNew_UTF8.txt; DestDir: {app}; Flags: replacesameversion

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}
Name: "quicklaunchicon"; Description: "Create a &Quick Launch icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Languages]
Name: Russian; MessagesFile: compiler:Languages\Russian.isl
Name: English; MessagesFile: compiler:Default.isl
Name: Ukrainian; MessagesFile: compiler:Languages\Ukrainian.isl
