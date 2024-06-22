unit ProceduresFunctionsVari�veis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    btnprimeiro: TButton;
    btnsegundo: TButton;
    procedure btnprimeiroClick(Sender: TObject);
  private
    { Cria��o de uma vari�vel recebendo o tipo inteiro. }
    FValorTotal: Integer;
  public
    { Cria��o de uma fun��o que recebe uma vari�vel do tipo inteiro. }
    { Ap�s criar a fun��o deixe o cursor emcima dela e fa�a o comando "Ctrl + P" . }
    function CalculaValor: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnprimeiroClick(Sender: TObject);
var
  lValor : Integer;
begin
  FValorTotal := 100;
  { Cria��o de uma vari�vel recebendo a fun��o "CalculaValor" .}
  lValor := CalculaValor;
  { Cria��o de um met�do. Ao clicar no bot�o adicionar� um texto em
      um memo espec�fico criado na tela. }
  memo1.Lines.Add('Eu amo progamar!');
  memo1.Lines.Add('===M�todo com Retorno (Function)===');
  { O "TMemo" recebe apenas valores em string. Ent�o como a fun��o criada
      � do tipo inteiro precisamos usar o m�todo ".ToString" para o
      valor armazenado ser adicionado. }
  memo1.Lines.Add(lValor.ToString);
end;

function TForm1.CalculaValor: Integer;
begin
  { Cria��o de uma vari�vel recebendo a vari�vel "FValorTotal" + 1 .}
  Result := FValorTotal + 1;
end;

end.
