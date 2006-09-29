unit UnRelHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect;

type
  TFrmRelHistorico = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel_Data: TQRLabel;
    QRLabel1: TQRLabel;
    QRMemo2: TQRMemo;
    QRLabel5: TQRLabel;
    QRLabel18: TQRLabel;
    QRImageLogo: TQRImage;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    IBQuery_Dependentes: TIBQuery;
    DataSource2: TDataSource;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    SummaryBand1: TQRBand;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    IBQuery_DependentesANO_BASE: TIBStringField;
    IBQuery_DependentesBAIRRO: TIBStringField;
    IBQuery_DependentesCEP: TIBStringField;
    IBQuery_DependentesCIDADE: TIBStringField;
    IBQuery_DependentesCODIGO: TIBStringField;
    IBQuery_DependentesCONTRATO: TIntegerField;
    IBQuery_DependentesDATA_CONTRATO: TDateTimeField;
    IBQuery_DependentesDATA_PAGAMENTO: TDateTimeField;
    IBQuery_DependentesDATA_VENCIMENTO: TDateTimeField;
    IBQuery_DependentesDIA_VENCIMENTO: TIBStringField;
    IBQuery_DependentesENDERECO: TIBStringField;
    IBQuery_DependentesESTADO: TIBStringField;
    IBQuery_DependentesMES_REFERENCIA: TIBStringField;
    IBQuery_DependentesMODELOS: TIBStringField;
    IBQuery_DependentesNOME_CLIENTE: TIBStringField;
    IBQuery_DependentesNUMERO_DOC: TIBStringField;
    IBQuery_DependentesNUMERO_PARCELA: TIBStringField;
    IBQuery_DependentesOBS: TIBStringField;
    IBQuery_DependentesPAGAMENTO_MENSAL: TIBStringField;
    IBQuery_DependentesRG: TIBStringField;
    IBQuery_DependentesTE: TIBStringField;
    IBQuery_DependentesUF: TIBStringField;
    IBQuery_DependentesVALOR_MENSAL: TIBBCDField;
    IBQuery_DependentesVALOR_PAGO: TIBBCDField;
    IBQuery_DependentesF_1: TIntegerField;
    IBQuery_DependentesF_2: TIBBCDField;
    QRSysData4: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRShape1: TQRRoundRect;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape3: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText20: TQRDBText;
    IBQuery_DependentesSITUACAO: TIBStringField;
    QRLabel26: TQRLabel;
    IBQuery_DependentesCPF: TIBStringField;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelHistorico: TFrmRelHistorico;
  Valor: String;

implementation

uses UnDm, UnHistoricoFinanCli;

{$R *.dfm}

procedure TFrmRelHistorico.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if (FrmHistoricoFinanCli.MEdit_CodINI.Text = '') and (FrmHistoricoFinanCli.MEdit_CodFIM.Text = '') then
begin
QRLabel_Data.Caption:= 'Todos os Clientes';
Exit;
end else
QRLabel_Data.Caption:= 'Extrato de: '+FrmHistoricoFinanCli.MEdit_CodINI.Text+ ' a '+FrmHistoricoFinanCli.MEdit_CodFIM.Text;
end;

procedure TFrmRelHistorico.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// INICIA SELEÇÃO
IBQuery_Dependentes.Close;
IBQuery_Dependentes.SQL.Clear;
IBQuery_Dependentes.SQL.Add('select ANO_BASE, BAIRRO, CEP, CIDADE, CODIGO, CONTRATO, CPF, DATA_CONTRATO, DATA_PAGAMENTO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, ');
IBQuery_Dependentes.SQL.Add('ESTADO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, OBS, PAGAMENTO_MENSAL, RG, TE, UF, VALOR_MENSAL, VALOR_PAGO, SITUACAO, ');
// TOTAL DE ACESSOS
IBQuery_Dependentes.SQL.Add('(select count (CODIGO) from CARNE ');
IBQuery_Dependentes.SQL.Add('where CODIGO = :CODIGO and DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(FrmHistoricoFinanCli.MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(FrmHistoricoFinanCli.MEdit_CodFIM.Text))+#39+'), ');
// VALOR TOTAL
IBQuery_Dependentes.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependentes.SQL.Add('where CODIGO = :CODIGO and DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(FrmHistoricoFinanCli.MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(FrmHistoricoFinanCli.MEdit_CodFIM.Text))+#39+' and SITUACAO = '+#39+'A'+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Dependentes.SQL.Add('from CARNE');
IBQuery_Dependentes.SQL.Add('where CODIGO = :CODIGO and DATA_VENCIMENTO between '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(FrmHistoricoFinanCli.MEdit_CodINI.Text))+#39+' and '+#39+FormatDateTime('mm/dd/yyyy', StrToDate(FrmHistoricoFinanCli.MEdit_CodFIM.Text))+#39);
// PARÂMETROS
IBQuery_Dependentes.SQL.Add('order by DATA_VENCIMENTO');
IBQuery_Dependentes.Open;
if IBQuery_DependentesCODIGO.AsString = '' then
begin
QRShape3.Enabled:= True;
end else
QRShape3.Enabled:= False;
if IBQuery_DependentesCODIGO.AsString = '' then
begin
QRLabel17.Enabled:= True;
end else
QRLabel17.Enabled:= False;
end;

end.
