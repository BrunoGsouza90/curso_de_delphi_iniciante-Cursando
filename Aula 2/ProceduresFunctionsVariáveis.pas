unit ProceduresFunctionsVariáveis;

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
    { Criação de uma variável recebendo o tipo inteiro. }
    FValorTotal: Integer;
  public
    { Criação de uma função que recebe uma variável do tipo inteiro. }
    { Após criar a função deixe o cursor emcima dela e faça o comando "Ctrl + P" . }
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
  { Criação de uma variável recebendo a função "CalculaValor" .}
  lValor := CalculaValor;
  { Criação de um metódo. Ao clicar no botão adicionará um texto em
      um memo específico criado na tela. }
  memo1.Lines.Add('Eu amo progamar!');
  memo1.Lines.Add('===Método com Retorno (Function)===');
  { O "TMemo" recebe apenas valores em string. Então como a função criada
      é do tipo inteiro precisamos usar o método ".ToString" para o
      valor armazenado ser adicionado. }
  memo1.Lines.Add(lValor.ToString);
end;

function TForm1.CalculaValor: Integer;
begin
  { Criação de uma variável recebendo a variável "FValorTotal" + 1 .}
  Result := FValorTotal + 1;
end;

end.
