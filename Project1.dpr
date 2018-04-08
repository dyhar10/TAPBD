program Project1;

uses
  Forms,
  Home in 'Home.pas' {Form1},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  ErrorEX in 'ErrorEX.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
