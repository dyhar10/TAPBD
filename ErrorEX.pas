unit ErrorEX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    img1: TImage;
    pnl2: TPanel;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Home;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
 Form4.Hide;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Form4.Visible := False;
end;

end.
