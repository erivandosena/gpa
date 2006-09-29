unit UnRelFA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, qrRRect;

type
  TFrmRelFA = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRImageLogo: TQRImage;
    QRMemo2: TQRMemo;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRRoundRect;
    QRRoundRect1: TQRRoundRect;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRRoundRect3: TQRRoundRect;
    QRLabel7: TQRLabel;
    QRRoundRect4: TQRRoundRect;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRRoundRect6: TQRRoundRect;
    QRLabel11: TQRLabel;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRShape5: TQRShape;
    QRLabel16: TQRLabel;
    QRShape6: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRRoundRect9: TQRRoundRect;
    QRRoundRect7: TQRRoundRect;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRRoundRect13: TQRRoundRect;
    QRRoundRect14: TQRRoundRect;
    QRRoundRect15: TQRRoundRect;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRRoundRect20: TQRRoundRect;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRRoundRect21: TQRRoundRect;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRRoundRect24: TQRRoundRect;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape7: TQRShape;
    QRLabel36: TQRLabel;
    QRShape8: TQRShape;
    QRLabel37: TQRLabel;
    QRShape9: TQRShape;
    QRLabel38: TQRLabel;
    QRShape10: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRRoundRect27: TQRRoundRect;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRRoundRect34: TQRRoundRect;
    QRLabel43: TQRLabel;
    QRRoundRect28: TQRRoundRect;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel_Data: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRRoundRect35: TQRRoundRect;
    QRRoundRect25: TQRRoundRect;
    QRRoundRect26: TQRRoundRect;
    QRRoundRect29: TQRRoundRect;
    QRRoundRect30: TQRRoundRect;
    QRRoundRect31: TQRRoundRect;
    QRRoundRect32: TQRRoundRect;
    QRRoundRect22: TQRRoundRect;
    QRRoundRect23: TQRRoundRect;
    QRRoundRect18: TQRRoundRect;
    QRRoundRect19: TQRRoundRect;
    QRRoundRect16: TQRRoundRect;
    QRRoundRect17: TQRRoundRect;
    QRRoundRect11: TQRRoundRect;
    QRRoundRect12: TQRRoundRect;
    QRRoundRect8: TQRRoundRect;
    QRRoundRect10: TQRRoundRect;
    QRRoundRect2: TQRRoundRect;
    QRRoundRect5: TQRRoundRect;
    QRLabel52: TQRLabel;
    QRLabel49: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFA: TFrmRelFA;

implementation

uses UnDm;

{$R *.dfm}

procedure TFrmRelFA.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel_Data.Caption:= Dm.IBDS_EMPRESA.FieldByName('CIDADE').asString+' ,______ de _________________________ de 20_____';
end;

end.
