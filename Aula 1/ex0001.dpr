program ex0001;

uses
  Vcl.Forms,
  TiposDeDados in 'TiposDeDados.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
