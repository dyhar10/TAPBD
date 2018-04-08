unit coba;
 
{$mode objfpc}{$H+}
 
interface
 
uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Types;
 
type
  TButton = class(StdCtrls.TButton)
  protected
    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint): Boolean; override;
  end;
 
type
 
  { TForm1 }
 
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ScrollBox1: TScrollBox;
  private
    { private declarations }
  public
    { public declarations }
  end;
 
var
  Form1: TForm1;
 
implementation
uses Windows;
 
{$R *.lfm}
 
function TButton.DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint): Boolean;
begin
  if WheelDelta > 0 then Postmessage(Parent.Handle, WM_VSCROLL,0,0);
  if WheelDelta < 0 then Postmessage(Parent.Handle, WM_VSCROLL,1,0);
end;
 
{ TForm1 }
 
end.
