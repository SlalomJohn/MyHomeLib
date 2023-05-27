(* *****************************************************************************
  *
  * MyHomeLib
  *
  * Copyright (C) 2008-2023 Oleksiy Penkov (aka Koreec)
  *
  * Authors Oleksiy Penkov   oleksiy.penkov@gmail.com
  *         Nick Rymanov     nrymanov@gmail.com
  * Created                  20.08.2008
  * Description              
  *
  * $Id: frm_splash.pas 916 2010-11-17 08:19:10Z koreec $
  *
  * History
  *
  ****************************************************************************** *)

unit frm_splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, pngimage;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    lblState: TLabel;
    lblVersion: TLabel;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

function GetMyVersion(Ln:byte):string;
type
  TVerInfo=packed record
    Nevazhno: array[0..47] of byte;
    Minor,Major,Build,Release: word;
  end;
var
  s:TResourceStream;
  v:TVerInfo;
  RP:string;
begin
  result:='';
  try
    s:=TResourceStream.Create(HInstance,'#1',RT_VERSION);
    if s.Size>0 then begin
      s.Read(v,SizeOf(v));
      RP:=IntToStr(v.Major)+'.'+IntToStr(v.Minor);
      if Ln=0 then RP:=RP+'.'+IntToStr(v.Release)+'.'+IntToStr(v.Build);

      result:=RP;
    end;
  s.Free;
  except; end;
end;

procedure TfrmSplash.FormCreate(Sender: TObject);
begin
  lblVersion.Caption := GetMyVersion(1);
  {$IFDEF  WIN64}
     lblVersion.Caption := lblVersion.Caption + ' x64';
  {$ENDIF}
end;

end.
