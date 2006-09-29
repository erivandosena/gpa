unit UnHistoricoFinanCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, DBCtrls, ExtCtrls;

type
  TFrmHistoricoFinanCli = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Btn_Exibir: TBitBtn;
    Btn_Todos: TBitBtn;
    Btn_Imprimir: TBitBtn;
    Btn_Fechar: TBitBtn;
    MEdit_CodINI: TMaskEdit;
    MEdit_CodFIM: TMaskEdit;
    DBGrid_Titular: TDBGrid;
    DBGrid_Dependente: TDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    IBQuery_Titular: TIBQuery;
    Ds_Titular: TDataSource;
    IBQuery_Dependente: TIBQuery;
    Ds_Dependente: TDataSource;
    Label5: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    IBQuery_DependenteANO_BASE: TIBStringField;
    IBQuery_DependenteBAIRRO: TIBStringField;
    IBQuery_DependenteCEP: TIBStringField;
    IBQuery_DependenteCIDADE: TIBStringField;
    IBQuery_DependenteCODIGO: TIBStringField;
    IBQuery_DependenteCONTRATO: TIntegerField;
    IBQuery_DependenteDATA_CONTRATO: TDateTimeField;
    IBQuery_DependenteDATA_PAGAMENTO: TDateTimeField;
    IBQuery_DependenteDATA_VENCIMENTO: TDateTimeField;
    IBQuery_DependenteDIA_VENCIMENTO: TIBStringField;
    IBQuery_DependenteENDERECO: TIBStringField;
    IBQuery_DependenteESTADO: TIBStringField;
    IBQuery_DependenteMES_REFERENCIA: TIBStringField;
    IBQuery_DependenteMODELOS: TIBStringField;
    IBQuery_DependenteNOME_CLIENTE: TIBStringField;
    IBQuery_DependenteNUMERO_DOC: TIBStringField;
    IBQuery_DependenteNUMERO_PARCELA: TIBStringField;
    IBQuery_DependenteOBS: TIBStringField;
    IBQuery_DependentePAGAMENTO_MENSAL: TIBStringField;
    IBQuery_DependenteRG: TIBStringField;
    IBQuery_DependenteTE: TIBStringField;
    IBQuery_DependenteUF: TIBStringField;
    IBQuery_DependenteVALOR_MENSAL: TIBBCDField;
    IBQuery_DependenteVALOR_PAGO: TIBBCDField;
    IBQuery_DependenteF_1: TIntegerField;
    DBText3: TDBText;
    IBQuery_DependenteF_2: TIBBCDField;
    IBQuery_TitularAPELIDO_PROMOTOR: TIBStringField;
    IBQuery_TitularBAIRRO: TIBStringField;
    IBQuery_TitularCEP: TIBStringField;
    IBQuery_TitularCIDADE: TIBStringField;
    IBQuery_TitularCODIGO: TIBStringField;
    IBQuery_TitularCODIGO_P: TIBStringField;
    IBQuery_TitularCONTRATO: TIntegerField;
    IBQuery_TitularDATA_CONTRATO: TDateTimeField;
    IBQuery_TitularDIA_VENCIMENTO: TIBStringField;
    IBQuery_TitularENDERECO: TIBStringField;
    IBQuery_TitularESTADO: TIBStringField;
    IBQuery_TitularMODELOS: TIBStringField;
    IBQuery_TitularNOME_CLIENTE: TIBStringField;
    IBQuery_TitularPAGAMENTO_MENSAL: TIBStringField;
    IBQuery_TitularRG: TIBStringField;
    IBQuery_TitularTAXA_ADMIN: TIBBCDField;
    IBQuery_TitularTE: TIBStringField;
    IBQuery_TitularUF: TIBStringField;
    IBQuery_TitularVALOR_MENSAL: TIBBCDField;
    IBQuery_TitularF_1: TIntegerField;
    Label7: TLabel;
    MEdit_Codigo: TMaskEdit;
    Label8: TLabel;
    IBQuery_TitularCPF: TIBStringField;
    IBQuery_DependenteCPF: TIBStringField;
    procedure Btn_ExibirClick(Sender: TObject);
    procedure DBGrid_TitularKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_TitularCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure Btn_TodosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure MEdit_CodigoExit(Sender: TObject);
    procedure MEdit_CodigoKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_CodINIExit(Sender: TObject);
    procedure MEdit_CodFIMExit(Sender: TObject);
    procedure MEdit_CodINIKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_CodFIMKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Imprimir;
  end;

var
  FrmHistoricoFinanCli: TFrmHistoricoFinanCli;

implementation

uses UnDm, UnPrincipal, UnRelConsultaContrato, UnRelHistorico;

{$R *.dfm}

procedure TFrmHistoricoFinanCli.Btn_ExibirClick(Sender: TObject);
begin
if MEdit_Codigo.Text = '' then
begin
MEdit_Codigo.SetFocus;
Exit;
end else
if (MEdit_CodINI.Text = '  /  /    ') or (MEdit_CodFIM.Text = '  /  /    ') then
begin
MEdit_CodINI.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Titular.Close;
IBQuery_Titular.SQL.Clear;
IBQuery_Titular.SQL.Add('select APELIDO_PROMOTOR, BAIRRO, CEP, CIDADE, CODIGO, CODIGO_P, CONTRATO, CPF, DATA_CONTRATO, DIA_VENCIMENTO, ENDERECO, ESTADO, MODELOS, NOME_CLIENTE, PAGAMENTO_MENSAL, RG, TAXA_ADMIN, TE, UF, VALOR_MENSAL, ');
IBQuery_Titular.SQL.Add('(select count (CODIGO) from PLANOS ');
IBQuery_Titular.SQL.Add('where CODIGO = '+#39+MEdit_Codigo.Text+#39+') ');
IBQuery_Titular.SQL.Add('from PLANOS ');
IBQuery_Titular.SQL.Add('where CODIGO = '+#39+MEdit_Codigo.Text+#39);
IBQuery_Titular.SQL.Add('order by NOME_CLIENTE');
IBQuery_Titular.Open;
// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select ANO_BASE, BAIRRO, CEP, CIDADE, CODIGO, CONTRATO, CPF, DATA_CONTRATO, DATA_PAGAMENTO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, ');
IBQuery_Dependente.SQL.Add('ESTADO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, OBS, PAGAMENTO_MENSAL, RG, TE, UF, VALOR_MENSAL, VALOR_PAGO, ');
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+'), ');
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
IBQuery_Dependente.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmHistoricoFinanCli.DBGrid_TitularKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select ANO_BASE, BAIRRO, CEP, CIDADE, CODIGO, CONTRATO, CPF, DATA_CONTRATO, DATA_PAGAMENTO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, ');
IBQuery_Dependente.SQL.Add('ESTADO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, OBS, PAGAMENTO_MENSAL, RG, TE, UF, VALOR_MENSAL, VALOR_PAGO, ');
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+'), ');
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
IBQuery_Dependente.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmHistoricoFinanCli.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmHistoricoFinanCli.FormShow(Sender: TObject);
begin
FrmHistoricoFinanCli.Top:=100;
FrmHistoricoFinanCli.Left:=0;
Imprimir;
MEdit_Codigo.SetFocus;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmHistoricoFinanCli.Caption:= FrmHistoricoFinanCli.Caption;
Exit;
end else
FrmHistoricoFinanCli.Caption:= FrmHistoricoFinanCli.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmHistoricoFinanCli.DBGrid_TitularCellClick(Column: TColumn);
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select ANO_BASE, BAIRRO, CEP, CIDADE, CODIGO, CONTRATO, CPF, DATA_CONTRATO, DATA_PAGAMENTO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, ');
IBQuery_Dependente.SQL.Add('ESTADO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, OBS, PAGAMENTO_MENSAL, RG, TE, UF, VALOR_MENSAL, VALOR_PAGO, ');
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+'), ');
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
IBQuery_Dependente.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmHistoricoFinanCli.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
IBQuery_Titular.Close;
IBQuery_Titular.Open;
IBQuery_Dependente.Close;
IBQuery_Dependente.Open;
end;

procedure TFrmHistoricoFinanCli.Btn_TodosClick(Sender: TObject);
begin
if (MEdit_CodINI.Text = '  /  /    ') or (MEdit_CodFIM.Text = '  /  /    ') then
begin
MEdit_CodINI.SetFocus;
Exit;
end else
MEdit_Codigo.Text:= '';
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Titular.Close;
IBQuery_Titular.SQL.Clear;
IBQuery_Titular.SQL.Add('select APELIDO_PROMOTOR, BAIRRO, CEP, CIDADE, CODIGO, CODIGO_P, CONTRATO, CPF, DATA_CONTRATO, DIA_VENCIMENTO, ENDERECO, ESTADO, MODELOS, NOME_CLIENTE, PAGAMENTO_MENSAL, RG, TAXA_ADMIN, TE, UF, VALOR_MENSAL, ');
IBQuery_Titular.SQL.Add('(select count (CODIGO) from PLANOS)');
IBQuery_Titular.SQL.Add('from PLANOS ');
IBQuery_Titular.SQL.Add('order by NOME_CLIENTE');
IBQuery_Titular.Open;
// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select ANO_BASE, BAIRRO, CEP, CIDADE, CODIGO, CONTRATO, CPF, DATA_CONTRATO, DATA_PAGAMENTO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, ');
IBQuery_Dependente.SQL.Add('ESTADO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, OBS, PAGAMENTO_MENSAL, RG, TE, UF, VALOR_MENSAL, VALOR_PAGO, ');
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+'), ');
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(MEdit_CodFIM.Text))+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
IBQuery_Dependente.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end;

procedure TFrmHistoricoFinanCli.Imprimir;
begin
if DBGrid_Titular.Fields[0].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
Btn_Fechar.SetFocus;
Exit;
end else
Btn_Imprimir.Enabled:= True;
DBGrid_Titular.SetFocus;
end;

procedure TFrmHistoricoFinanCli.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmHistoricoFinanCli.Btn_ImprimirClick(Sender: TObject);
begin
if FrmRelHistorico <> Nil then Exit;
FrmRelHistorico := TFrmRelHistorico.Create(self);
FrmRelHistorico.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelHistorico.QuickRep1.Preview;
FrmRelHistorico.Free;
FrmRelHistorico := Nil;
end;

procedure TFrmHistoricoFinanCli.MEdit_CodigoExit(Sender: TObject);
begin
if MEdit_Codigo.Text = '' then
begin
Abort;
Exit;
end else
MEdit_Codigo.Text:= FrmPrincipal.RetZero(MEdit_Codigo.Text, 4)
end;

procedure TFrmHistoricoFinanCli.MEdit_CodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmHistoricoFinanCli.MEdit_CodINIExit(Sender: TObject);
begin
if MEdit_CodINI.Text = '  /  /    ' then
begin
MEdit_CodFIM.SetFocus;
Exit;
end else
try
StrToDate(MEdit_CodINI.Text);
except
on EConvertError do begin
ShowMessage ('Data Inválida!');
end;
end;
end;

procedure TFrmHistoricoFinanCli.MEdit_CodFIMExit(Sender: TObject);
begin
if MEdit_CodFIM.Text = '  /  /    ' then
begin
Btn_Exibir.SetFocus;
Exit;
end else
try
StrToDate(MEdit_CodFIM.Text);
except
on EConvertError do begin
ShowMessage ('Data Inválida!');
end;
end;
end;

procedure TFrmHistoricoFinanCli.MEdit_CodINIKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmHistoricoFinanCli.MEdit_CodFIMKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

end.
