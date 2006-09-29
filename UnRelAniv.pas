unit UnRelAniv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF;

type
  TFrmRelAniv = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel_Data: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRImageLogo: TQRImage;
    QRMemo2: TQRMemo;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAniv: TFrmRelAniv;

implementation

uses UnDm, UnAniversariantes, UnPrincipal;

{$R *.dfm}

procedure TFrmRelAniv.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if FrmAniversariantes.RadioButton2.Checked = True then
begin
QRLabel_Data.Caption:= 'Aniversariantes do Mês de: '+FrmAniversariantes.ComboBox1.Text;
end else
QRLabel_Data.Caption:= 'Aniversariantes de Hoje: '+DateToStr(Data);
end;

end.
