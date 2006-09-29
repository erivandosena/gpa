unit UnFotos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, OleCtrls, ScanLibCtl_TLB, ExtCtrls, jpeg, StdCtrls,
  Buttons;

type
  TFrmFotos = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    SbInserirFoto: TBitBtn;
    Panel1: TPanel;
    ImgScan1: TImgScan;
    Image1: TImage;
    Bevel1: TBevel;
    Btn_Fechar: TBitBtn;
    Image2: TImage;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure SbInserirFotoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     procedure ConverterBmpParaJPeg(Arquivo: string);
  public
    { Public declarations }
  end;

var
  FrmFotos: TFrmFotos;

implementation

uses UnDm, UnPrincipal, UnClientes;

{$R *.dfm}

procedure TFrmFotos.BitBtn1Click(Sender: TObject);
begin
if ImgScan1.ScannerAvailable then
try 
ImgScan1.OpenScanner; 
ImgScan1.ScanTo := 2;
ImgScan1.Image:='C:\WINDOWS\TEMP\TmpImg.bmp';
ImgScan1.StartScan ; 
Application.ProcessMessages; 
finally
ImgScan1.CloseScanner ;
ConverterBmpParaJPeg('C:\WINDOWS\TEMP\TmpImg.bmp');
Image1.Picture.LoadFromFile('C:\WINDOWS\TEMP\TmpImg.jpg');
BitBtn2.Enabled:=True;
BitBtn2.SetFocus;
end;
end;

procedure TFrmFotos.Btn_FecharClick(Sender: TObject);
begin
BitBtn2.Enabled:=False;
Close;
if FrmClientes.SbSalvar.Enabled = True then
begin
FrmClientes.SbSalvar.SetFocus;
end;
end;

procedure TFrmFotos.SbInserirFotoClick(Sender: TObject);
 var i: integer;
begin
Dm.IBDS_CLIENTES.Edit;
  With FrmClientes.OpenPictureDialog1 do if Execute
   then
   for i := 0 to Files.Count-1
        do FrmClientes.LoadFileToDB(Files[i]);
Close;
if FrmClientes.SbSalvar.Enabled = True then
begin
FrmClientes.SbSalvar.SetFocus;
end;
end;

procedure TFrmFotos.ConverterBmpParaJPeg(Arquivo: string);
var
  Bmp: TBitmap;
  JPeg: TJPegImage;
begin
  Bmp := TBitmap.Create;
  try
    Bmp.LoadFromFile(Arquivo);
    JPeg := TJPegImage.Create;
    try
      JPeg.CompressionQuality := 75; { Qualidade: 100% }
      JPeg.Assign(Bmp);
      JPeg.SaveToFile(ChangeFileExt(Arquivo,'.jpg'));
    finally
      JPeg.Free;
    end;
  finally
    Bmp.Free;
  end;
end;

procedure TFrmFotos.BitBtn2Click(Sender: TObject);
begin
 Dm.IBDS_CLIENTES.Edit;
//  FrmAlunos.LoadFileToDB('C:\WINDOWS\TEMP\TmpImg.jpg');
  Image1.Picture.Bitmap.FreeImage;
  BitBtn2.Enabled:=False;
  DeleteFile('C:\WINDOWS\TEMP\TmpImg.jpg');
        Close;
//if FrmAlunos.SbSalvar.Enabled = True then
//begin
//FrmAlunos.SbSalvar.SetFocus;
//end;
end;

procedure TFrmFotos.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmFotos.FormShow(Sender: TObject);
begin
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmFotos.Caption:= FrmFotos.Caption;
Exit;
end else
FrmFotos.Caption:= FrmFotos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

end.
