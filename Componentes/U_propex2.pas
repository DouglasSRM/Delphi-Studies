unit U_propex2;

interface

uses
  System.SysUtils, System.Classes;

type

  TMySubComp = class(TComponent)
  public
    FAtivo : Boolean;
    FDescricao: String;
    FID: Integer;
    procedure SetAtivo(const Value: Boolean);
    procedure setDescricao(const Value: String);
    procedure SetID(const Value: Integer);
  published
    property ID: Integer read FID write SetID;
    property Descricao: String read FDescricao write SetDescricao;
    property Ativo: Boolean read FAtivo write SetAtivo;
  end;

  PropriedadeEx2 = class(TComponent)
  public
    FMySubComp1 : TMySubComp;
    FMySubComp2 : TMySubComp;
    constructor Create(AOwner: TComponent); override;
  published
    property MySubComp1: TMySubComp read FMySubComp1;
    property MySubComp2: TMySubComp read FMySubComp2;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [PropriedadeEx2]);
end;

{ TMySubComp }

procedure TMySubComp.SetAtivo(const Value: Boolean);

begin
  FAtivo := Value;
end;

procedure TMySubComp.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TMySubComp.SetID(const Value: Integer);
begin
  FID := Value;
end;

{ PropriedadeEx2 }

constructor PropriedadeEx2.Create(AOwner: TComponent);
begin
  inherited;
  FMySubComp1 := TMySubComp.Create(self);
  FMySubComp1.Name := 'MySubComp1';
  FMySubComp1.SetSubComponent(true);

  FMySubComp2 := TMySubComp.Create(self);
  FMySubComp2.Name := 'MySubComp2';
  FMySubComp2.SetSubComponent(false);
end;

end.
