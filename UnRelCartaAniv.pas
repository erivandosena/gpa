unit UnRelCartaAniv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRCtrls, jpeg, QuickRpt, ExtCtrls, RxGIF;

type
  TFrmRelCartaAniv = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRExprMemo1: TQRExprMemo;
    QRShape9: TQRShape;
    QRLabel42: TQRLabel;
    QRImageLogo: TQRImage;
    QRLabelDA: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel1: TQRLabel;
    QRMemo2: TQRMemo;
    QRLabel2: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    procedure DataAtual;
  public
    { Public declarations }
  end;

var
  FrmRelCartaAniv: TFrmRelCartaAniv;

implementation

uses UnDm, UnAniversariantes;

{$R *.dfm}

procedure TFrmRelCartaAniv.DataAtual;
var
nrdia: Integer;
diasemana: array[1..7] of String;
meses: array[1..12] of String;
dia, mes, ano: Word;
begin
diasemana[1]:= 'Domingo';
diasemana[2]:= 'Segunda-feira';
diasemana[3]:= 'Terça-feira';
diasemana[4]:= 'Quarta-feira';
diasemana[5]:= 'Quinta-feira';
diasemana[6]:= 'Sexta-feira';
diasemana[7]:= 'Sábado';
meses[1]:= 'Janeiro';
meses[2]:= 'Fevereiro';
meses[3]:= 'Março';
meses[4]:= 'Abril';
meses[5]:= 'Maio';
meses[6]:= 'Junho';
meses[7]:= 'Julho';
meses[8]:= 'Agosto';
meses[9]:= 'Setembro';
meses[10]:= 'Outubro';
meses[11]:= 'Novembro';
meses[12]:= 'Dezembro';
DecodeDate(DATE,ano,mes,dia);
nrdia:= DayOfWeek(DATE);
QRLabelDA.Caption:=Dm.IBDS_EMPRESA.FieldByName('CIDADE').asString+', ' +diasemana[nrdia]+', '+INTTOSTR(dia)+' de '+meses[mes]+' de '+INTTOSTR(ano);
end;

procedure TFrmRelCartaAniv.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
DataAtual;

end;

end.
