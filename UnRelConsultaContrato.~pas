unit UnRelConsultaContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect;

type
  TFrmRelConsultaContrato = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData3: TQRSysData;
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
    QRSubDetail1: TQRSubDetail;
    IBQuery_Dependentes: TIBQuery;
    DataSource2: TDataSource;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
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
    QRDBText12: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRShape1: TQRRoundRect;
    QRLabel22Data: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel4: TQRLabel;
    IBQuery_DependentesCPF: TIBStringField;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelConsultaContrato: TFrmRelConsultaContrato;
  Valor: String;

implementation

uses UnDm, UnPrincipal, UnConsultaContratos;

{$R *.dfm}

procedure TFrmRelConsultaContrato.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel22Data.Caption:= 'Data: '+DateToStr(Data);
if (FrmConsultaContratos.MEdit_CodINI.Text = '') and (FrmConsultaContratos.MEdit_CodFIM.Text = '') then
begin
QRLabel_Data.Caption:= 'Todos os Vencimentos de '+FrmConsultaContratos.MEdit_Cidade.Text;
Exit;
end else
QRLabel_Data.Caption:= 'Vencimentos de: '+FrmConsultaContratos.MEdit_CodINI.Text+ ' a '+FrmConsultaContratos.MEdit_CodFIM.Text+' de '+FrmConsultaContratos.MEdit_Cidade.Text;
end;

procedure TFrmRelConsultaContrato.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// INICIA SELEÇAO
IBQuery_Dependentes.Close;
IBQuery_Dependentes.SQL.Clear;
IBQuery_Dependentes.SQL.Add('select ANO_BASE, BAIRRO, CEP, CIDADE, CODIGO, CONTRATO, CPF, DATA_CONTRATO, DATA_PAGAMENTO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, ');
IBQuery_Dependentes.SQL.Add('ESTADO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, OBS, PAGAMENTO_MENSAL, RG, TE, UF, VALOR_MENSAL, VALOR_PAGO, ');
// TOTAL DE MENSALIDADES
IBQuery_Dependentes.SQL.Add('(select count (DIA_VENCIMENTO) from CARNE ');
IBQuery_Dependentes.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(FrmConsultaContratos.MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = :DIA_VENCIMENTO and CIDADE = '+#39+FrmConsultaContratos.MEdit_Cidade.Text+#39+'), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Dependentes.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependentes.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(FrmConsultaContratos.MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = :DIA_VENCIMENTO and CIDADE = '+#39+FrmConsultaContratos.MEdit_Cidade.Text+#39+') ');
IBQuery_Dependentes.SQL.Add('from CARNE');
IBQuery_Dependentes.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(FrmConsultaContratos.MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = :DIA_VENCIMENTO and CIDADE = '+#39+FrmConsultaContratos.MEdit_Cidade.Text+#39);
IBQuery_Dependentes.SQL.Add('order by NOME_CLIENTE, DATA_VENCIMENTO');
IBQuery_Dependentes.Open;
end;

procedure TFrmRelConsultaContrato.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if IBQuery_DependentesCODIGO.AsString = '' then
begin
QRLabel4.Enabled:= True;
end else
QRLabel4.Enabled:= False;
end;

end.
