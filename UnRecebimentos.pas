unit UnRecebimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DBCtrls, DateUtils;

type
  TFrmRecebimentos = class(TForm)
    Bevel1: TBevel;
    Label9: TLabel;
    Btn_Acessar: TBitBtn;
    MEdit_PGCodigo: TMaskEdit;
    DS_PGParcelas: TDataSource;
    MEdit_PGDoc: TMaskEdit;
    Label1: TLabel;
    MEdit_PGCliente: TMaskEdit;
    Label2: TLabel;
    DBGrid_PG_Parcelas: TDBGrid;
    MEdit_Acrescimo: TMaskEdit;
    Label3: TLabel;
    MEdit_Desconto: TMaskEdit;
    Label4: TLabel;
    MEdit_Apagar: TMaskEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Btn_ConfirmaPG: TBitBtn;
    Btn_EstornaPG: TBitBtn;
    BtnFechar: TBitBtn;
    Btn_ProximoPG: TBitBtn;
    Label10: TLabel;
    MEdit_DataPG: TMaskEdit;
    Label_Multa: TLabel;
    Label_Juros: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    Label_Total: TLabel;
    IBQuery_PGParcelas: TIBQuery;
    IBQuery_PGParcelasCOD_CARN: TIntegerField;
    IBQuery_PGParcelasNUMERO_DOC: TIBStringField;
    IBQuery_PGParcelasCONTRATO: TIntegerField;
    IBQuery_PGParcelasDATA_CONTRATO: TDateTimeField;
    IBQuery_PGParcelasNOME_CLIENTE: TIBStringField;
    IBQuery_PGParcelasCODIGO: TIBStringField;
    IBQuery_PGParcelasRG: TIBStringField;
    IBQuery_PGParcelasTE: TIBStringField;
    IBQuery_PGParcelasENDERECO: TIBStringField;
    IBQuery_PGParcelasBAIRRO: TIBStringField;
    IBQuery_PGParcelasCIDADE: TIBStringField;
    IBQuery_PGParcelasCEP: TIBStringField;
    IBQuery_PGParcelasESTADO: TIBStringField;
    IBQuery_PGParcelasUF: TIBStringField;
    IBQuery_PGParcelasNUMERO_PARCELA: TIBStringField;
    IBQuery_PGParcelasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_PGParcelasMES_REFERENCIA: TIBStringField;
    IBQuery_PGParcelasVALOR_MENSAL: TIBBCDField;
    IBQuery_PGParcelasDATA_PAGAMENTO: TDateTimeField;
    IBQuery_PGParcelasVALOR_PAGO: TIBBCDField;
    IBQuery_PGParcelasOBS: TIBStringField;
    Label14: TLabel;
    DBText4: TDBText;
    DataSource_Carne: TDataSource;
    IBQuery_PGParcelasSITUACAO: TIBStringField;
    IBQuery_PGParcelasANO_BASE: TIBStringField;
    IBQuery_PGParcelasUSUARIO: TIBStringField;
    Label15: TLabel;
    IBQuery_PGParcelasPAGAMENTO_MENSAL: TIBStringField;
    IBQuery_PGParcelasDIA_VENCIMENTO: TIBStringField;
    IBQuery_PGParcelasMODELOS: TIBStringField;
    MEdit_Obs: TComboBox;
    IBQuery_PGParcelasCPF: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure MEdit_PGCodigoExit(Sender: TObject);
    procedure MEdit_PGCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_PGSerieExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_PGDocKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_PGDocExit(Sender: TObject);
    procedure Btn_AcessarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure Btn_ProximoPGClick(Sender: TObject);
    procedure MEdit_PGClienteExit(Sender: TObject);
    procedure Btn_ConfirmaPGClick(Sender: TObject);
    procedure DBGrid_PG_ParcelasExit(Sender: TObject);
    procedure DBGrid_PG_ParcelasCellClick(Column: TColumn);
    procedure MEdit_DataPGExit(Sender: TObject);
    procedure MEdit_AcrescimoExit(Sender: TObject);
    procedure MEdit_DescontoExit(Sender: TObject);
    procedure MEdit_ApagarExit(Sender: TObject);
    procedure DBGrid_PG_ParcelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_PG_ParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Btn_EstornaPGClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid_PG_ParcelasDblClick(Sender: TObject);
  private
    { Private declarations }
     procedure Controles;
  public
    { Public declarations }
    function DifDateUtil(dataini,datafin:string):integer;
    function IsWeekEnd(dData : TDateTime) : boolean;
    function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
    function ProximoDiaUtil (dData : TDateTime) : TDateTime;
    function GeraPorcentagem(Valor:Real;Percent:Real):Real;
  end;

var
  FrmRecebimentos: TFrmRecebimentos;
  Doc, Cod, Client: String;
  Pesquisa, DiaAtrazo: Integer;
  Multa, TotalMulta, Juros, Acrescimo, Desconto, ValorMensal, SubTotal, TotalAPagar: Real;
  DataVencimento, DataPagamento: TDateTime;

implementation

uses UnPrincipal, UnLocalizar, UnDm, UnClientes;

{$R *.dfm}

procedure TFrmRecebimentos.FormShow(Sender: TObject);
begin
FrmRecebimentos.Top:=0;
FrmRecebimentos.Left:=0;
IBQuery_PGPARCELAS.Close;
IBQuery_PGPARCELAS.Open;
Dm.IBDS_CARNE.Close;
Dm.IBDS_CARNE.Open;
Controles;
MEdit_PGDoc.SetFocus;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmRecebimentos.Caption:= FrmRecebimentos.Caption;
Exit;
end else
FrmRecebimentos.Caption:= FrmRecebimentos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmRecebimentos.MEdit_PGCodigoExit(Sender: TObject);
begin
if MEdit_PGCodigo.Text = '' then
begin
Abort;
Exit;
end else
MEdit_PGCodigo.Text:= FrmPrincipal.RetZero(MEdit_PGCodigo.Text, 4);
MEdit_PGDoc.Text:= '';
MEdit_PGCliente.Text:= '';
Btn_Acessar.Enabled:= True;
Btn_Acessar.SetFocus;
end;

procedure TFrmRecebimentos.MEdit_PGCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmRecebimentos.CBox_PGSerieExit(Sender: TObject);
begin
MEdit_PGCodigo.Text:= '';
end;

procedure TFrmRecebimentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmRecebimentos.MEdit_PGDocKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmRecebimentos.MEdit_PGDocExit(Sender: TObject);
begin
if MEdit_PGDoc.Text = '' then
begin
Abort;
Exit;
end else
MEdit_PGDoc.Text:= FrmPrincipal.RetZero(MEdit_PGDoc.Text, 10);
MEdit_PGCodigo.Text:= '';
MEdit_PGCliente.Text:= '';
Btn_Acessar.Enabled:= True;
Btn_Acessar.SetFocus;
end;

procedure TFrmRecebimentos.Btn_AcessarClick(Sender: TObject);
begin
if (MEdit_PGDoc.Text = '') and (MEdit_PGCodigo.Text = '') and (MEdit_PGCliente.Text = '') then
begin
MEdit_PGDoc.SetFocus;
Exit;
end else
if (MEdit_PGDoc.Text <> '') and (MEdit_PGCodigo.Text = '') and (MEdit_PGCliente.Text = '') then
begin
Doc:= MEdit_PGDoc.Text;
Pesquisa:= 1;
Screen.Cursor := crHourGlass;
// SELECIONA A PARCELA DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NUMERO_DOC = :Docum');
 IBQuery_PGParcelas.ParamByName('Docum').AsString:= Doc;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
if not IBQuery_PGParcelas.Locate('NUMERO_DOC', Doc, []) then
begin
MessageDlg('N�mero de documento inv�lido.', mtCustom, [mbOK], 0);
Btn_Acessar.Enabled:= False;
MEdit_PGDoc.SetFocus;
Exit;
end else
Btn_Acessar.Enabled:= False;
DBGrid_PG_Parcelas.SetFocus;
Exit;
end else
if (MEdit_PGDoc.Text = '') and (MEdit_PGCodigo.Text <> '') and (MEdit_PGCliente.Text = '') then
begin
Cod:= MEdit_PGCodigo.Text;
Pesquisa:= 2;
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_PGParcelas.ParamByName('Cod').AsString:= Cod;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
if not IBQuery_PGParcelas.Locate('CODIGO', MEdit_PGCodigo.Text, []) then
begin
MessageDlg('C�digo inv�lido.', mtCustom, [mbOK], 0);
Btn_Acessar.Enabled:= False;
MEdit_PGCodigo.SetFocus;
Exit;
end else
Btn_Acessar.Enabled:= False;
DBGrid_PG_Parcelas.SetFocus;
Exit;
end else
if (MEdit_PGDoc.Text = '') and (MEdit_PGCodigo.Text = '') and (MEdit_PGCliente.Text <> '') then
begin
Client:= MEdit_PGCliente.Text;
Pesquisa:= 3;
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NOME_CLIENTE = :Cli ');
 IBQuery_PGParcelas.ParamByName('Cli').AsString:= Client;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
if not IBQuery_PGParcelas.Locate('NOME_CLIENTE', MEdit_PGCliente.Text, []) then
begin
MessageDlg('Nome inv�lido ou incompleto.', mtCustom, [mbOK], 0);
Btn_Acessar.Enabled:= False;
MEdit_PGCliente.SetFocus;
Exit;
end else
Btn_Acessar.Enabled:= False;
DBGrid_PG_Parcelas.SetFocus;
end;
end;

procedure TFrmRecebimentos.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmRecebimentos.Btn_ProximoPGClick(Sender: TObject);
begin
if (IBQuery_PGParcelasSITUACAO.Value = 'A') or (IBQuery_PGParcelasSITUACAO.Value = 'L') then
begin
Btn_ConfirmaPG.Caption:= 'Confirmar Pagamento';
DBGrid_PG_Parcelas.SetFocus;
Exit;
end else
MEdit_PGDoc.Text:= '';
MEdit_PGCodigo.Text:= '';
MEdit_PGCliente.Text:= '';
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Obs.Text:= '';
Doc:= '';
Cod:= '';
Client:= '';
Pesquisa:= 0;
IBQuery_PGPARCELAS.Close;
Controles;
Btn_ConfirmaPG.Enabled:= False;
MEdit_PGDoc.SetFocus;
end;

procedure TFrmRecebimentos.MEdit_PGClienteExit(Sender: TObject);
begin
if MEdit_PGCliente.Text = '' then
begin
Abort;
Exit;
end else
MEdit_PGDoc.Text:= '';
MEdit_PGCodigo.Text:= '';
Btn_Acessar.Enabled:= True;
Btn_Acessar.SetFocus;
end;

procedure TFrmRecebimentos.Btn_ConfirmaPGClick(Sender: TObject);
begin
if MEdit_DataPG.Text = '  /  /    ' then
begin
MEdit_DataPG.SetFocus;
Exit;
end else
if MEdit_Apagar.Text = '0,00' then
begin
MEdit_DataPG.SetFocus;
Exit;
end else
// NOVA PESQUISA
if Btn_ConfirmaPG.Caption = 'Nova Pesquisa' then
begin
Btn_Acessar.Enabled:= False;
MEdit_PGDoc.Text:= '';
MEdit_PGCodigo.Text:= '';
MEdit_PGCliente.Text:= '';
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Obs.Text:= '';
Doc:= '';
Cod:= '';
Client:= '';
Pesquisa:= 0;
IBQuery_PGPARCELAS.Close;
Btn_ProximoPG.Caption:= 'Pr�ximo Pagamento';
Controles;
Btn_ConfirmaPG.Caption:= 'Confirmar Pagamento';
Btn_ConfirmaPG.Enabled:= False;
MEdit_PGDoc.SetFocus;
Exit;
end else
// REALIZA OS �LTIMOS CAUCULOS
Acrescimo:= StrToFloat(MEdit_Acrescimo.Text);
Desconto:= StrToFloat(MEdit_Desconto.Text);
SubTotal:= ValorMensal+Acrescimo-Desconto;
if StrToFloat(MEdit_Apagar.Text) > StrToFloat(Label_Total.Caption) then
begin
MessageDlg('O valor pago � maior do que o valor a pagar calculado.', mtCustom, [mbOK], 0);
//MEdit_DataPG.SetFocus;
//Exit;
end;
// CONFIRMA PAGAMENTO
if Btn_ConfirmaPG.Caption = 'Confirmar Pagamento' then
begin
Dm.IBDS_CARNE.Edit;
Dm.IBDS_CARNE.FieldByName('DATA_PAGAMENTO').AsDateTime:= DataPagamento;
Dm.IBDS_CARNE.FieldByName('VALOR_PAGO').AsFloat:= SubTotal;
Dm.IBDS_CARNE.FieldByName('USUARIO').AsString:= Usuario;
Dm.IBDS_CARNE.FieldByName('SITUACAO').AsString:= 'L';
Dm.IBDS_CARNE.FieldByName('OBS').AsString:= MEdit_Obs.Text;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
if Pesquisa = 1 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA A PARCELA DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NUMERO_DOC = :Docum');
 IBQuery_PGParcelas.ParamByName('Docum').AsString:= Doc;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO', 'A', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO', 'L', []);
Btn_ProximoPG.Caption:= 'Pr�ximo Estorno';
Btn_ProximoPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Btn_EstornaPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Pr�ximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
Exit;
end else
if Pesquisa = 2 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_PGParcelas.ParamByName('Cod').AsString:= Cod;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO', 'A', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO', 'L', []);
Btn_ProximoPG.Caption:= 'Pr�ximo Estorno';
Btn_ProximoPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Btn_EstornaPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Pr�ximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
Exit;
end else
if Pesquisa = 3 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NOME_CLIENTE = :Cli ');
 IBQuery_PGParcelas.ParamByName('Cli').AsString:= Client;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO', 'A', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO', 'L', []);
Btn_ProximoPG.Caption:= 'Pr�ximo Estorno';
Btn_ProximoPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Btn_EstornaPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Pr�ximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
end;
end;
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasExit(Sender: TObject);
begin
if IBQuery_PGParcelasDATA_PAGAMENTO.AsString = '' then
begin
Abort;
Exit;
end else
Dm.IBDS_CARNE.Locate('NUMERO_DOC', IBQuery_PGParcelasNUMERO_DOC.Value, []);
if IBQuery_PGParcelasDATA_PAGAMENTO.AsString = '' then
begin
Controles;
MEdit_DataPG.Text:= IBQuery_PGParcelasDATA_VENCIMENTO.AsString;
MEdit_DataPG.SetFocus;
Exit;
end else
Btn_EstornaPG.SetFocus;
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasCellClick(Column: TColumn);
begin
if IBQuery_PGParcelasSITUACAO.AsString = '' then
begin
Abort;
Exit;
end else
Dm.IBDS_CARNE.Locate('NUMERO_DOC', IBQuery_PGParcelasNUMERO_DOC.Value, []);
if IBQuery_PGParcelasDATA_PAGAMENTO.AsString <> '' then
begin
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Obs.Text:= '';
MEdit_DataPG.Enabled:= False;
Label_Multa.Enabled:= False;
Label_Juros.Enabled:= False;
Label_Total.Enabled:= False;
MEdit_Acrescimo.Enabled:= False;
MEdit_Desconto.Enabled:= False;
MEdit_Apagar.Enabled:= False;
MEdit_Obs.Enabled:= False;
Btn_ConfirmaPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Exit;
end else
MEdit_DataPG.Enabled:= True;
Label_Multa.Enabled:= True;
Label_Juros.Enabled:= True;
Label_Total.Enabled:= True;
MEdit_Acrescimo.Enabled:= True;
MEdit_Desconto.Enabled:= True;
MEdit_Apagar.Enabled:= True;
MEdit_Obs.Enabled:= True;
Btn_ConfirmaPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Obs.Text:= '';
end;

procedure TFrmRecebimentos.MEdit_DataPGExit(Sender: TObject);
begin
if MEdit_DataPG.Text = '  /  /    ' then
begin
MEdit_DataPG.Text:= DateToStr(Data);
end else
try
StrToDate(MEdit_DataPG.Text);
except
on EConvertError do begin
ShowMessage ('Data Inv�lida.');
MEdit_DataPG.SetFocus;
Exit;
end;
end;
DataPagamento:= StrToDate(MEdit_DataPG.Text);
DataVencimento:= IBQuery_PGParcelasDATA_VENCIMENTO.AsDateTime;
if IBQuery_PGParcelasVALOR_PAGO.AsFloat <> 0 then
begin
ValorMensal:= IBQuery_PGParcelasVALOR_PAGO.AsFloat;
end else
ValorMensal:= IBQuery_PGParcelasVALOR_MENSAL.AsFloat;
// VERIFICA SE J� VENCEU
if DataPagamento <= DataVencimento then
begin
// SE N�O VENCEU N�O CALCULA A MULTA E O JURO
TotalMulta:= 0.00;
Juros:= 0.00;
Acrescimo:= 0.00;
SubTotal:= ValorMensal+Acrescimo;
TotalAPagar:= SubTotal;
Label_Multa.Caption:= FormatFloat('###,###,##0.00', TotalMulta);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', Juros);
Label_Total.Caption:= FormatFloat('###,###,##0.00', TotalAPagar);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', Acrescimo);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', SubTotal);
Exit;
end else
if DataPagamento > DataVencimento then
begin
// SE J� VENCEU CALCULA A MULTA E O JURO DOS DIAS �TEIS
if IsWeekEnd(DataVencimento) = True then
begin
// SE O VENCIMENTO CAIR NO FIM DE SEMANA
DataVencimento:= ProximoDiaUtil(IBQuery_PGParcelasDATA_VENCIMENTO.AsDateTime);
DiaAtrazo:= DifDateUtil(DateToStr(DataVencimento), DateToStr(DataPagamento));
TotalMulta:= GeraPorcentagem(ValorMensal, Dm.IBDS_EMPRESAMULTA.AsFloat);
if DiaAtrazo = 0 then
begin
TotalMulta:= 0.00;
end else
Multa:= TotalMulta;
Juros:= DiaAtrazo * Dm.IBDS_EMPRESAJUROS.AsFloat;
Acrescimo:= TotalMulta+Juros;
SubTotal:= ValorMensal+Acrescimo;
TotalAPagar:= SubTotal;
Label_Multa.Caption:= FormatFloat('###,###,##0.00', TotalMulta);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', Juros);
Label_Total.Caption:= FormatFloat('###,###,##0.00', TotalAPagar);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', Acrescimo);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', SubTotal);
end else
// SE O VENCIMENTO N�O CAIR NO FIM DE SEMANA
if IsWeekEnd(DataVencimento) = False then
begin
DataVencimento:= IBQuery_PGParcelasDATA_VENCIMENTO.AsDateTime;
DiaAtrazo:= StrToInt(DifDias(DataVencimento, DataPagamento));
TotalMulta:= GeraPorcentagem(ValorMensal, Dm.IBDS_EMPRESAMULTA.AsFloat);
Multa:= TotalMulta;
Juros:= DiaAtrazo * Dm.IBDS_EMPRESAJUROS.AsFloat;
Acrescimo:= TotalMulta+Juros;
SubTotal:= ValorMensal+Acrescimo;
TotalAPagar:= SubTotal;
Label_Multa.Caption:= FormatFloat('###,###,##0.00', TotalMulta);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', Juros);
Label_Total.Caption:= FormatFloat('###,###,##0.00', TotalAPagar);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', Acrescimo);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', SubTotal);
end;
end;
end;

procedure TFrmRecebimentos.MEdit_AcrescimoExit(Sender: TObject);
begin
if MEdit_Acrescimo.Text = '' then
begin
MEdit_Acrescimo.Text:= '0';
end;
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', StrToFloat(MEdit_Acrescimo.Text));
end;

procedure TFrmRecebimentos.MEdit_DescontoExit(Sender: TObject);
begin
if MEdit_Desconto.Text = '' then
begin
MEdit_Desconto.Text:= '0';
end else
Acrescimo:= StrToFloat(MEdit_Acrescimo.Text);
Desconto:= StrToFloat(MEdit_Desconto.Text);
SubTotal:= ValorMensal+Acrescimo-Desconto;
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', Desconto);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', SubTotal);
end;


procedure TFrmRecebimentos.MEdit_ApagarExit(Sender: TObject);
begin
if MEdit_Apagar.Text = '' then
begin
MEdit_Apagar.Text:= '0';
end else
SubTotal:= StrToFloat(MEdit_Apagar.Text);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', StrToFloat(MEdit_Apagar.Text));
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Controles;
Dm.IBDS_CARNE.Locate('NUMERO_DOC', IBQuery_PGParcelasNUMERO_DOC.Value, []);
if (IBQuery_PGParcelasDATA_PAGAMENTO.AsString <> '') then
begin
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Obs.Text:= '';
MEdit_DataPG.Enabled:= False;
Label_Multa.Enabled:= False;
Label_Juros.Enabled:= False;
Label_Total.Enabled:= False;
MEdit_Acrescimo.Enabled:= False;
MEdit_Desconto.Enabled:= False;
MEdit_Apagar.Enabled:= False;
MEdit_Obs.Enabled:= False;
Btn_ConfirmaPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Exit;
end else
MEdit_DataPG.Enabled:= True;
Label_Multa.Enabled:= True;
Label_Juros.Enabled:= True;
Label_Total.Enabled:= True;
MEdit_Acrescimo.Enabled:= True;
MEdit_Desconto.Enabled:= True;
MEdit_Apagar.Enabled:= True;
MEdit_Obs.Enabled:= True;
Btn_ConfirmaPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Obs.Text:= '';
end;

function TFrmRecebimentos.DifDateUtil(dataini, datafin: string): integer;
var a,b,c:tdatetime;
  ct,s:integer;
begin
//Retorna a quantidade de dias uteis entre duas datas
if StrToDate(DataFin) < StrtoDate(DataIni) then
  begin
  Result := 0;
  exit;
  end;
ct := 0;
s := 1;
a := strtodate(dataFin);
b := strtodate(dataIni);
if a > b then
  begin
  c := a;
  a := b;
  b := c;
  s := 1;
  end;
a := a + 1;
while (dayofweek(a)<>2) and (a <= b) do
  begin
  if dayofweek(a) in [2..6] then
  begin
  inc(ct);
  end;
  a := a + 1;
  end;
ct := ct + round((5*int((b-a)/7)));
a := a + (7*int((b-a)/7));
while a <= b do
  begin
  if dayofweek(a) in [2..6] then
  begin
  inc(ct);
  end;
  a := a + 1;
  end;
if ct < 0 then
  begin
  ct := 0;
  end;
result := s*ct;
end;

function TFrmRecebimentos.IsWeekEnd(dData: TDateTime): boolean;
begin
// Verifica se uma data informada cai em um final de semana
if (DayOfWeek(dData) = 1) or (DayOfWeek(dData) = 7) Then
    begin
    result := True;
    end
else
   begin
   result := False;
   end;
end;

function TFrmRecebimentos.DifDias(DataVenc, DataAtual: TDateTime): String;
var Data: TDateTime;
    dia, mes, ano: Word;
begin
//Retorna a diferenca de dias entre duas datas
if DataAtual < DataVenc then
   begin
   Result := 'A data data atual n�o pode ser menor que a data inicial';
   end
else
   begin
   Data:= DataAtual - DataVenc;
   DecodeDate( Data, ano, mes, dia);
   Result:= FloatToStr(Data);//+' Dias';
   end;
end;

function TFrmRecebimentos.ProximoDiaUtil(dData: TDateTime): TDateTime;
begin
// Obtendo o pr�ximo dia �til caso a data informada caia em um fim de semana
if DayOfWeek(dData) = 7 then 
dData := dData + 2 
else 
if DayOfWeek(dData) = 1 then 
dData := dData + 1; 
ProximoDiaUtil := dData;
end;

function TFrmRecebimentos.GeraPorcentagem(Valor, Percent: Real): Real;
begin
Percent:= Percent / 100;
try
  Valor:= Valor * Percent;
finally
  result:= Valor;
end;
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 (*destaca campo SITUA��O*)
 (*  if Column.Field = IBQuery_PGParcelasDATA_PAGAMENTO then
     if IBQuery_PGParcelasDATA_PAGAMENTO.AsString <> '' then
     begin
       DBGrid_PG_Parcelas.Canvas.Font.Style:= DBGrid_PG_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_PG_Parcelas.Canvas.Font.Color:= $000080FF;
       DBGrid_PG_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padr�o
       end else
            if IBQuery_PGParcelasDATA_PAGAMENTO.AsString <> '' then
     begin
       DBGrid_PG_Parcelas.Canvas.Font.Style:= DBGrid_PG_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_PG_Parcelas.Canvas.Font.Color:= clGreen;
       DBGrid_PG_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padr�o
         end else
            if IBQuery_PGParcelasDATA_PAGAMENTO.AsString = '' then
     begin
       DBGrid_PG_Parcelas.Canvas.Font.Style:= DBGrid_PG_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_PG_Parcelas.Canvas.Font.Color:= clRed;
       DBGrid_PG_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padr�o
     end;       *)
     end;

procedure TFrmRecebimentos.Controles;
begin
if IBQuery_PGParcelasDATA_PAGAMENTO.AsString = '' then
begin
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Obs.Text:= '';
MEdit_DataPG.Enabled:= False;
Label_Multa.Enabled:= False;
Label_Juros.Enabled:= False;
Label_Total.Enabled:= False;
MEdit_Acrescimo.Enabled:= False;
MEdit_Desconto.Enabled:= False;
MEdit_Apagar.Enabled:= False;
MEdit_Obs.Enabled:= False;
Btn_ConfirmaPG.Enabled:= False;
Btn_ProximoPG.Enabled:= False;
Exit;
end else
MEdit_DataPG.Enabled:= True;
Label_Multa.Enabled:= True;
Label_Juros.Enabled:= True;
Label_Total.Enabled:= True;
MEdit_Acrescimo.Enabled:= True;
MEdit_Desconto.Enabled:= True;
MEdit_Apagar.Enabled:= True;
MEdit_Obs.Enabled:= True;
Btn_ConfirmaPG.Enabled:= True;
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Obs.Text:= '';
end;

procedure TFrmRecebimentos.Btn_EstornaPGClick(Sender: TObject);
begin
Dm.IBDS_CARNE.Edit;
Dm.IBDS_CARNE.FieldByName('SITUACAO').AsString:= 'A';
Dm.IBDS_CARNE.FieldByName('DATA_PAGAMENTO').AsString:= '';
Dm.IBDS_CARNE.FieldByName('VALOR_PAGO').AsFloat:= 0.00;
Dm.IBDS_CARNE.FieldByName('USUARIO').AsString:= Usuario;
Dm.IBDS_CARNE.FieldByName('OBS').AsString:= 'ESTORNADO EM '+DateToStr(Data);
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
if Pesquisa = 1 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NUMERO_DOC = :Docum ');
 IBQuery_PGParcelas.ParamByName('Docum').AsString:= Doc;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO', 'L', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO', 'A', []);
Btn_ProximoPG.Caption:= 'Pr�ximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
Btn_ProximoPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Pr�ximo Estorno';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
Exit;
end else
if Pesquisa = 2 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_PGParcelas.ParamByName('Cod').AsString:= Cod;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO', 'L', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO', 'A', []);
Btn_ProximoPG.Caption:= 'Pr�ximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
Btn_ProximoPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Pr�ximo Estorno';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
Exit;
end else
if Pesquisa = 3 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARN�
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NOME_CLIENTE = :Cli ');
 IBQuery_PGParcelas.ParamByName('Cli').AsString:= Client;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO', 'L', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO', 'A', []);
Btn_ProximoPG.Caption:= 'Pr�ximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
Btn_ProximoPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Pr�ximo Estorno';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
end;
end;

procedure TFrmRecebimentos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DataSource_Carne.State = dsEdit then
begin
Dm.IBDS_CARNE.Cancel;
Dm.IBDS_CARNE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
Dm.IBDS_CARNE.Close;
end;

procedure TFrmRecebimentos.FormDestroy(Sender: TObject);
begin
Dm.IBDS_CARNE.Close;
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasDblClick(Sender: TObject);
begin
  Close;
FrmClientes:= TFrmClientes.Create(Application);
try
  FrmClientes.ShowModal;
finally
  FrmClientes.Free;
end;
end;

end.
