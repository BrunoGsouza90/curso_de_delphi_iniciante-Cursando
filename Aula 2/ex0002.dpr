program ex0002;

uses
  Vcl.Forms,
  ProceduresFunctionsVari�veis in 'ProceduresFunctionsVari�veis.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
