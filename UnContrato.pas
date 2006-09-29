unit UnContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, DBCtrls, ExtCtrls;

type
  TFrmContrato = class(TForm)
    Label2: TLabel;
    Btn_Exibir: TBitBtn;
    Btn_Fechar: TBitBtn;
    MEdit_Codigo: TMaskEdit;
    IBQuery_Cliente: TIBQuery;
    Ds_Cliente: TDataSource;
    Label5: TLabel;
    DBText1: TDBText;
    Bevel1: TBevel;
    IBQuery_ClienteCIDADE: TIBStringField;
    IBQuery_ClienteCODIGO: TIBStringField;
    IBQuery_ClienteENDERECO: TIBStringField;
    IBQuery_ClienteESTADO: TIBStringField;
    IBQuery_ClienteNOME_CLIENTE: TIBStringField;
    IBQuery_ClienteRG: TIBStringField;
    IBQuery_ClienteTE: TIBStringField;
    IBQuery_ClienteBAIRRO: TIBStringField;
    IBQuery_ClienteCEP: TIBStringField;
    IBQuery_ClienteESTADO_CIVIL: TIBStringField;
    IBQuery_ClientePONTO_REFERENCIA: TIBStringField;
    IBQuery_ClienteUF: TIBStringField;
    Label1: TLabel;
    DBText2: TDBText;
    BtnContrato: TBitBtn;
    CBox_PJ: TCheckBox;
    IBQuery_ClienteCNPJ: TIBStringField;
    IBQuery_ClienteIE: TIBStringField;
    IBQuery_ClienteNOME_EMPRESARIAL: TIBStringField;
    IBQuery_ClienteNOME_FANTASIA: TIBStringField;
    IBQuery_ClienteNOME_RESPONSAVEL: TIBStringField;
    IBQuery_ClienteTC: TIBStringField;
    IBQuery_ClienteCPF: TIBStringField;
    procedure Btn_ExibirClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MEdit_CodigoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnContratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContrato: TFrmContrato;
  Exibe: Integer;

implementation

uses UnDm, UnPrincipal, UnRelCarteiras, UnRelContrato, UnRelContrato_PJ;

{$R *.dfm}

procedure TFrmContrato.Btn_ExibirClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
IBQuery_Cliente.Close;
IBQuery_Cliente.SQL.Clear;
IBQuery_Cliente.SQL.Add('select CIDADE, CODIGO, CPF, ENDERECO, ESTADO, NOME_CLIENTE, RG, TE, BAIRRO, CEP, ESTADO_CIVIL, PONTO_REFERENCIA, UF, CNPJ, IE, NOME_EMPRESARIAL, NOME_FANTASIA, NOME_RESPONSAVEL, TC from CLIENTES ');
IBQuery_Cliente.SQL.Add('where CODIGO = '+#39+MEdit_Codigo.Text+#39);
IBQuery_Cliente.SQL.Add('order by CODIGO');
IBQuery_Cliente.Open;
if not IBQuery_Cliente.Locate('CODIGO', MEdit_Codigo.Text, []) then
begin
ShowMessage('Cliente não encontrato, tente novamente informando outro código.');
MEdit_Codigo.SetFocus;
Screen.Cursor := crDefault;
IBQuery_Cliente.Close;
BtnContrato.Enabled:= False;
Exit;
end else
Screen.Cursor := crDefault;
BtnContrato.Enabled:= True;
BtnContrato.SetFocus;
end;

procedure TFrmContrato.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmContrato.FormShow(Sender: TObject);
begin
FrmContrato.Top:=224;
FrmContrato.Left:=0;
MEdit_Codigo.SetFocus;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmContrato.Caption:= FrmContrato.Caption;
Exit;
end else
FrmContrato.Caption:= FrmContrato.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmContrato.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmContrato.MEdit_CodigoExit(Sender: TObject);
begin
MEdit_Codigo.Text:= FrmPrincipal.RetZero(MEdit_Codigo.Text, 4);
end;

procedure TFrmContrato.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmContrato.BtnContratoClick(Sender: TObject);
begin
if CBox_PJ.Checked = False then
begin
if not (IBQuery_Cliente.FieldByName('TC').AsString = 'PF') then
begin
ShowMessage('Este cliente não é pessoa física.');
CBox_PJ.SetFocus;
Exit;
end else
if FrmRelContrato <> Nil then Exit;
FrmRelContrato:= TFrmRelContrato.Create(self);
FrmRelContrato.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelContrato.QuickRep1.Preview;
FrmRelContrato.Free;
FrmRelContrato:= Nil;
Exit;
end else
if FrmRelContrato_PJ <> Nil then Exit;
FrmRelContrato_PJ:= TFrmRelContrato_PJ.Create(self);
FrmRelContrato_PJ.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelContrato_PJ.QuickRep1.Preview;
FrmRelContrato_PJ.Free;
FrmRelContrato_PJ:= Nil;
end;

end.
