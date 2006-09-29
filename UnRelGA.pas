unit UnRelGA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, qrRRect;

type
  TFrmRelGA = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRRoundRect2: TQRRoundRect;
    QRRoundRect5: TQRRoundRect;
    QRRoundRect18: TQRRoundRect;
    QRRoundRect30: TQRRoundRect;
    QRRoundRect32: TQRRoundRect;
    QRRoundRect31: TQRRoundRect;
    QRRoundRect29: TQRRoundRect;
    QRRoundRect20: TQRRoundRect;
    QRRoundRect1: TQRRoundRect;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRRoundRect4: TQRRoundRect;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRRoundRect24: TQRRoundRect;
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
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRImageLogo: TQRImage;
    QRMemo2: TQRMemo;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRRoundRect3: TQRRoundRect;
    QRRoundRect6: TQRRoundRect;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRRoundRect33: TQRRoundRect;
    QRRoundRect35: TQRRoundRect;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRRoundRect36: TQRRoundRect;
    QRRoundRect37: TQRRoundRect;
    QRRoundRect38: TQRRoundRect;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRRoundRect7: TQRRoundRect;
    QRRoundRect8: TQRRoundRect;
    QRRoundRect9: TQRRoundRect;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRRoundRect10: TQRRoundRect;
    QRRoundRect11: TQRRoundRect;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRRoundRect12: TQRRoundRect;
    QRLabel22: TQRLabel;
    QRRoundRect13: TQRRoundRect;
    QRLabel23: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelGA: TFrmRelGA;

implementation

uses UnDm, UnAniversariantes, UnPrincipal;

{$R *.dfm}

procedure TFrmRelGA.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel_Data.Caption:= Dm.IBDS_EMPRESA.FieldByName('CIDADE').asString+' ,______ de _________________________ de 20_____';
end;

end.
