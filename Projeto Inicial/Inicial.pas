unit Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TCad_Usuarios = class(TForm)
    lb_cad_usuarios: TLabel;
    btn_salvar_venda: TButton;
    SpeedButton1: TSpeedButton;
    btn_deletar: TButton;
    btn_excluir: TButton;
    txt_nome: TEdit;
    lb_nome: TLabel;
    txt_nome2: TEdit;
    txt_nome3: TEdit;
    lb_valor: TLabel;
    btn_calcular: TButton;
    txt_vlr2: TEdit;
    txt_total: TEdit;
    txt_vlr1: TEdit;
    lb_vlr1: TLabel;
    lb_vlr2: TLabel;
    lb_total: TLabel;
    btn_tela2: TButton;
    procedure btn_salvar_vendaClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure btn_tela2Click(Sender: TObject);
  private
    var nome:string;
    { Private declarations }
  public
    var sobrenome, endereco: string;
    var valor: integer;
    { Public declarations }
  end;

var
  Cad_Usuarios: TCad_Usuarios;

implementation

{$R *.dfm}

uses Tela2;

procedure TCad_Usuarios.btn_calcularClick(Sender: TObject);
var vlr1, vlr2, total, x, media: double;
var cont:integer;
begin
    vlr1 := StrToFloat(txt_vlr1.Text);
    vlr2 := StrToFloat(txt_vlr2.Text);

    total := vlr1 + vlr2;
    txt_total.Text := FloatToStr(total);

    //operador de condi��o if
    media := 60;
    if (total >= media) Then
    begin

    ShowMessage('O aluno obteve ' + FloatToStr(total) + ' pontos e est� aprovado');

    end
    else
    begin
        ShowMessage('O aluno ' + FloatToStr(total) + ' pontos e est� reprovado');
    end;


    //la�o de repeti��o for
    {for cont := 1 to 5 do
    begin
        ShowMessage(IntToStr(cont));
        if (cont <= 0) then
        begin
          ShowMessage('O contador chegou a 0');
        end;
    end; }

    //loop de repeti��o while
    cont := 1;
    while (cont <= 4) do
    begin
        ShowMessage(IntToStr(cont));
        cont := cont + 1;
    end;



end;

procedure TCad_Usuarios.btn_deletarClick(Sender: TObject);
begin
    nome := 'Jos�';
    sobrenome := 'Seramim';
    txt_nome.Text := nome;
    txt_nome2.Text := sobrenome;
    txt_nome3.Text := '';

end;

procedure TCad_Usuarios.btn_excluirClick(Sender: TObject);
begin
    nome := 'Douglas';
    sobrenome := 'Seramim';
    endereco := 'Rua Campo Largo';
    lb_valor.Caption := 'Meu nome �: ' + nome + ' ' + sobrenome + '. Endere�o: ' + endereco;

end;

procedure TCad_Usuarios.btn_salvar_vendaClick(Sender: TObject);

begin
    nome := 'Douglas';
    sobrenome := 'Seramim';
    endereco := 'Rua Campo Largo';
    txt_nome.Text := nome;
    txt_nome2.Text := sobrenome;
    txt_nome3.Text := endereco;

end;

procedure TCad_Usuarios.btn_tela2Click(Sender: TObject);
begin
    frm_tela2 := Tfrm_tela2.Create(self);
    frm_tela2.ShowModal;
end;

procedure TCad_Usuarios.SpeedButton1Click(Sender: TObject);
begin

    valor:= 5;
    lb_valor.Caption := IntToStr(valor);
end;

end.
