unit TiposDeDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Declaração de uma váriavel de número inteiro.}
    inteiro : Integer;
    { Declaração de uma váriavel de número monetário. }
    moeda : Currency;
    { Declaração de uma váriavel de número fracionário. }
    fracionario_double : Double;
    { Declaração de uma váriavel de número fracionário. }
    fracionario_real : Real;
    { Declaração de uma váriavel de texto. }
    texto : string;
    { Declaração de uma váriavel do tipo Verdadeiro ou Falso. }
    verdadeiro_falso : boolean;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Começo da função de onclick. }
procedure TForm1.Button1Click(Sender: TObject);
begin
  { Atribuição de valor em váriaveis.
      Obs.: É necessário atribuir um dado compátivel aquela váriavel. }
  inteiro := 10;
  texto := 'Bruno';
  moeda := 10.5;
  verdadeiro_falso := true;
  { Quando o valor não é compátivel com a váriavel é necessário alterar
      seu tipo como abaixo:
    A variável inteiro está recebendo o valor de Edit1.Text que é o texto
      do botão criado na interface gráfica. E como ele é uma string e a
      variável é do tipo inteiro então estamos transformando ele de
      string para inteiro, usando "StrToInt".}
  inteiro := StrToInt (Edit1.Text);
  { Criação de uma Estrutura de Condição "IF". }


  //  if verdadeiro_falso = true then
        { Metódo para imprimir mensagens de texto apartir de uma função. }
  //    ShowMessage(texto);


  if verdadeiro_falso then
    ShowMessage(IntToStr(inteiro));
          { Como em ShowMessage é possivél atribuir apenas valores do
              tipo texto; para imprimir na tela a variável inteiro que é
              do tipo inteiro. Precisamos transformá-la para o tipo string. }

end;
{ Final da função de onclick. }

end.
