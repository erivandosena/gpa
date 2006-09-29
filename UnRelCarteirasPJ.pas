unit UnRelCarteirasPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, UnDm, QRCtrls, DB, Jpeg, IBCustomDataSet,
  IBQuery, qrRRect, RxGIF;

type
  TFrmRelCarteirasPJ = class(TForm)
    DataSource2: TDataSource;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    IBQuery_Empresas: TIBQuery;
    QRShape1: TQRShape;
    QRRoundRect1: TQRRoundRect;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    QRRoundRect3: TQRRoundRect;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRImage1: TQRImage;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText11: TQRLabel;
    QRDBText12: TQRLabel;
    QRRoundRect4: TQRRoundRect;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRImage2: TQRImage;
    QRShape2: TQRShape;
    IBQuery_EmpresasCOD_CLIE: TIntegerField;
    IBQuery_EmpresasCODIGO: TIBStringField;
    IBQuery_EmpresasNOME_FANTASIA: TIBStringField;
    IBQuery_EmpresasCNPJ: TIBStringField;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCarteirasPJ: TFrmRelCarteirasPJ;

implementation

uses UnCarteiras;

{$R *.dfm}

procedure TFrmRelCarteirasPJ.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel6.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRDBText11.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString+' '+Dm.IBDS_EMPRESABAIRRO.AsString+' '+Dm.IBDS_EMPRESACEP.AsString+' '+Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAUF.AsString;
QRDBText12.Caption:= 'Tel.: '+Dm.IBDS_EMPRESATELEFONE.AsString+'   E-mail: '+Dm.IBDS_EMPRESAEMAIL.AsString;
 (*
if (FrmCarteiras.IBQuery_TitularRG.AsString = '') and (FrmCarteiras.IBQuery_TitularCPF.AsString = '') or (FrmCarteiras.IBQuery_TitularCPF.AsString = '   .   .   -  ') and (FrmCarteiras.IBQuery_TitularTE.AsString = '') then
begin
QRLabel5.Caption:= '';
QRDBText5.Caption:= '';
end else
if (FrmCarteiras.IBQuery_TitularRG.AsString <> '') and (FrmCarteiras.IBQuery_TitularCPF.AsString <> '') and (FrmCarteiras.IBQuery_TitularTE.AsString <> '') then
begin
QRLabel5.Caption:= 'RG:';
QRDBText5.Caption:= FrmCarteiras.IBQuery_TitularRG.AsString;
end else
if (FrmCarteiras.IBQuery_TitularRG.AsString <> '') and (FrmCarteiras.IBQuery_TitularCPF.AsString <> '') then
begin
QRLabel5.Caption:= 'CPF:';
QRDBText5.Caption:= FrmCarteiras.IBQuery_TitularCPF.AsString;
end else
if FrmCarteiras.IBQuery_TitularRG.AsString <> '' then
begin
QRLabel5.Caption:= 'RG:';
QRDBText5.Caption:= FrmCarteiras.IBQuery_TitularRG.AsString;
end else
if (FrmCarteiras.IBQuery_TitularCPF.AsString <> '') and (FrmCarteiras.IBQuery_TitularCPF.AsString <> '   .   .   -  ') then
begin
QRLabel5.Caption:= 'CPF:';
QRDBText5.Caption:= FrmCarteiras.IBQuery_TitularCPF.AsString;
end else
if FrmCarteiras.IBQuery_TitularTE.AsString <> '' then
begin
QRLabel5.Caption:= 'T.E.:';
QRDBText5.Caption:= FrmCarteiras.IBQuery_TitularTE.AsString;
    *)
end;

end.
