unit UnRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmRelatorios = class(TForm)
    BtnFechar: TBitBtn;
    Panel1: TGroupBox;
    SpeedButton1: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorios: TFrmRelatorios;

implementation

uses UnRelGA, UnRelFA, UnPrincipal, UnDm, UnContrato;

{$R *.dfm}

procedure TFrmRelatorios.SpeedButton1Click(Sender: TObject);
begin
if FrmRelGA <> Nil then Exit;
FrmRelFA:= TFrmRelFA.Create(self);
FrmRelFA.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelFA.QuickRep1.Preview;
FrmRelFA.Free;
FrmRelFA := Nil;
end;

procedure TFrmRelatorios.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmRelatorios.BitBtn1Click(Sender: TObject);
begin
if FrmRelGA <> Nil then Exit;
FrmRelGA:= TFrmRelGA.Create(self);
FrmRelGA.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelGA.QuickRep1.Preview;
FrmRelGA.Free;
FrmRelGA := Nil;
end;

procedure TFrmRelatorios.FormShow(Sender: TObject);
begin
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmRelatorios.Caption:= FrmRelatorios.Caption;
Exit;
end else
FrmRelatorios.Caption:= FrmRelatorios.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmRelatorios.BitBtn2Click(Sender: TObject);
begin
FrmContrato:= TFrmContrato.Create(Application);
try
  FrmContrato.ShowModal;
finally
  FrmContrato.Free;
end;
end;

end.
