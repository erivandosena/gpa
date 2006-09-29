unit UnRelCarne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Barcode, QRCtrls, qrRRect, QuickRpt, ExtCtrls, RxGIF;

type
  TFrmRelCarne = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape15: TQRShape;
    QRLabel10: TQRLabel;
    QRSysData5: TQRSysData;
    Grafico: TQRImage;
    QRLabel9: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape3: TQRShape;
    Barcode1: TBarcode;
    QRImage1: TQRImage;
    QRRoundRect4: TQRRoundRect;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel29: TQRLabel;
    QRImage2: TQRImage;
    QRRoundRect1: TQRRoundRect;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText21: TQRDBText;
    QRRoundRect3: TQRShape;
    QRRoundRect2: TQRShape;
    QRRoundRect5: TQRShape;
    QRRoundRect6: TQRShape;
    QRRoundRect7: TQRShape;
    QRRoundRect8: TQRShape;
    QRRoundRect9: TQRShape;
    QRRoundRect11: TQRShape;
    QRRoundRect12: TQRShape;
    QRRoundRect13: TQRShape;
    QRRoundRect15: TQRShape;
    QRRoundRect17: TQRShape;
    QRRoundRect18: TQRShape;
    QRRoundRect19: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape1: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel25: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCarne: TFrmRelCarne;

implementation

uses UnEmpresa, UnDm, UnCarne;


{$R *.dfm}

procedure TFrmRelCarne.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
QRLabel33.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel34.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString+' '+Dm.IBDS_EMPRESABAIRRO.AsString+' '+Dm.IBDS_EMPRESACEP.AsString+' '+Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAUF.AsString;
QRLabel36.Caption:= 'Tel.: '+Dm.IBDS_EMPRESATELEFONE.AsString+'   E-mail: '+Dm.IBDS_EMPRESAEMAIL.AsString;
QRLabel20.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString+' '+Dm.IBDS_EMPRESABAIRRO.AsString+' '+Dm.IBDS_EMPRESACEP.AsString+' '+Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAUF.AsString;
QRLabel21.Caption:= 'Tel.: '+Dm.IBDS_EMPRESATELEFONE.AsString+'   E-mail: '+Dm.IBDS_EMPRESAEMAIL.AsString;
Grafico.Picture := Nil;
Barcode1.Left:=1;
BarCode1.Top:=1;
Barcode1.Height:=27;
Grafico.Height:=27;
BarCode1.Text := FrmCarne.IBQuery_CarneParcelasNUMERO_DOC.asString;
Barcode1.DrawBarcode(Grafico.Canvas);
end;

end.
