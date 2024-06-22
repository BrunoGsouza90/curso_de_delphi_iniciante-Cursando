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
    { Declara��o de uma v�riavel de n�mero inteiro.}
    inteiro : Integer;
    { Declara��o de uma v�riavel de n�mero monet�rio. }
    moeda : Currency;
    { Declara��o de uma v�riavel de n�mero fracion�rio. }
    fracionario_double : Double;
    { Declara��o de uma v�riavel de n�mero fracion�rio. }
    fracionario_real : Real;
    { Declara��o de uma v�riavel de texto. }
    texto : string;
    { Declara��o de uma v�riavel do tipo Verdadeiro ou Falso. }
    verdadeiro_falso : boolean;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Come�o da fun��o de onclick. }
procedure TForm1.Button1Click(Sender: TObject);
begin
  { Atribui��o de valor em v�riaveis.
      Obs.: � necess�rio atribuir um dado comp�tivel aquela v�riavel. }
  inteiro := 10;
  texto := 'Bruno';
  moeda := 10.5;
  verdadeiro_falso := true;
  { Quando o valor n�o � comp�tivel com a v�riavel � necess�rio alterar
      seu tipo como abaixo:
    A vari�vel inteiro est� recebendo o valor de Edit1.Text que � o texto
      do bot�o criado na interface gr�fica. E como ele � uma string e a
      vari�vel � do tipo inteiro ent�o estamos transformando ele de
      string para inteiro, usando "StrToInt".}
  inteiro := StrToInt (Edit1.Text);
  { Cria��o de uma Estrutura de Condi��o "IF". }


  //  if verdadeiro_falso = true then
        { Met�do para imprimir mensagens de texto apartir de uma fun��o. }
  //    ShowMessage(texto);


  if verdadeiro_falso then
    ShowMessage(IntToStr(inteiro));
          { Como em ShowMessage � possiv�l atribuir apenas valores do
              tipo texto; para imprimir na tela a vari�vel inteiro que �
              do tipo inteiro. Precisamos transform�-la para o tipo string. }

end;
{ Final da fun��o de onclick. }

end.
