unit UnPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPrntr, backup, DB, Menus, ComCtrls, StdCtrls, ExtCtrls,
  Buttons, jpeg, Mask, Registry;

type
  TFrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    BitBtn9: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    Ferramentas1: TMenuItem;
    Calculadora1: TMenuItem;
    CpiadeSegurana1: TMenuItem;
    Menu1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSGO1: TMenuItem;
    Cadastros1: TMenuItem;
    Usurios1: TMenuItem;
    Clientes1: TMenuItem;
    Image1: TImage;
    Empresa1: TMenuItem;
    DataSource1: TDataSource;
    Image2: TImage;
    Localizar1: TMenuItem;
    FileListBox: TListBox;
    BackupFile1: TBackupFile;
    Panel2: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    ProgressBar1: TProgressBar;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    Aniversariantes1: TMenuItem;
    N1: TMenuItem;
    Financeiro1: TMenuItem;
    Promotores1: TMenuItem;
    Inativos1: TMenuItem;
    ImpressodeCarteira1: TMenuItem;
    GeraoeImpressodeCarn1: TMenuItem;
    Recebimentos1: TMenuItem;
    GerarContratos1: TMenuItem;
    RelatriodeCobranas1: TMenuItem;
    HistricodoCliente1: TMenuItem;
    FichadeAtendimento1: TMenuItem;
    GuiadeSepultamento1: TMenuItem;
    ContratodePrestaodeServio1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure CpiadeSegurana1Click(Sender: TObject);
    procedure SobreoSGO1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BackupFile1Progress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure Aniversariantes1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure Promotores1Click(Sender: TObject);
    procedure Inativos1Click(Sender: TObject);
    procedure ImpressodeCarteira1Click(Sender: TObject);
    procedure GeraoeImpressodeCarn1Click(Sender: TObject);
    procedure Recebimentos1Click(Sender: TObject);
    procedure Contratos1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure HistricodoCliente1Click(Sender: TObject);
    procedure FichadeAtendimento1Click(Sender: TObject);
    procedure GuiadeSepultamento1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ContratodePrestaodeServio1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ManipulaExcecoes(Sender: TObject; E: Exception);
  public
    { Public declarations }
    procedure CustomPreview(Sender: TObject);
    function TiraMascara(text:string): String;
    procedure ConverterJPegParaBmp(Arquivo: string);
    function RemoveZeros(S: string): string;
    function RetZero(ZEROS:string;QUANT:integer):String;
  end;

var
  FrmPrincipal: TFrmPrincipal;
  Reg: TRegistry;
  Data: TDateTime;
  Usuario, Empresa, AnoBase: String;
  OldValue : LongBool;
  VarTipoTBitmap: tbITMAP;

implementation

uses UnDm, UnBackup, UnUsuarios, UnSenha, UnEmpresa, UnLocalizar,
  UnPreview, UnAniversariantes, UnFrmDataGeral, UnInativos, UnClientes,
  UnPromotor, UnCarteiras, UnCarne, UnContratos, UnRecebimentos,
  UnConsultaContratos, UnHistoricoFinanCli, UnRelGA, UnRelFA, UnRelatorios,
  UnRelContrato, UnContrato;

{$R *.dfm}

procedure TFrmPrincipal.Fechar1Click(Sender: TObject);
begin
Close
end;

procedure TFrmPrincipal.Cadastro1Click(Sender: TObject);
begin
  FrmClientes:= TFrmClientes.Create(Application);
try
  FrmClientes.ShowModal;
finally
  FrmClientes.Free;
end;
end;

procedure TFrmPrincipal.BitBtn9Click(Sender: TObject);
begin
Close;
end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  FrmClientes:= TFrmClientes.Create(Application);
try
  FrmClientes.ShowModal;
finally
  FrmClientes.Free;
end;
end;

procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
begin
WinExec('Calc', SW_Show);
end;

procedure TFrmPrincipal.CpiadeSegurana1Click(Sender: TObject);
begin
FrmBackup:= TFrmBackup.Create(Application);
try
  FrmBackup.ShowModal;
finally
  FrmBackup.Free;
end;
end;

procedure TFrmPrincipal.SobreoSGO1Click(Sender: TObject);
begin
ShowMessage('GPA - Gerenciamento de Planos Assistenciais'
+#13+#13+'Atendimento: Erivando Ramos'
+#13+'Horário: De Segunda à Sexta, das 8:00h às 17:00h'
+#13+'Contatos: Tel.(85)9602.5039 / 3471170 E-mail: sosinforamos@bol.com.br'
+#13+'___________________________________________________________________________________'
+#13+#13+'© Propriedade Intelectual de Programa de Computador protegida sob Lei do Direito Autoral, LEI 9609/98.');
end;

procedure TFrmPrincipal.BitBtn4Click(Sender: TObject);
begin
FrmBackup:= TFrmBackup.Create(Application);
try
  FrmBackup.ShowModal;
finally
  FrmBackup.Free;
end;
end;

procedure TFrmPrincipal.BitBtn8Click(Sender: TObject);
begin
ShowMessage('INFORAMOS Serviços - Desenvolvimento de Softwares'
+#13+#13+'Atendimento: Erivando Ramos'
+#13+'Horário: De Segunda à Sexta, das 8:00h às 17:00h'
+#13+'Contatos: Tel.(85)9602.5039 / 3471170 E-mail: sosinforamos@bol.com.br'
+#13+'___________________________________________________________________________________'
+#13+#13+'Cópia em locação autorizada para:'
+#13+''+Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString+''
+#13+'CNPJ:'+Dm.IBDS_EMPRESACNPJ.AsString+''
+#13+'___________________________________________________________________________________'
+#13+#13+'© Propriedade Intelectual de Programa de Computador protegida sob Lei do Direito Autoral, LEI 9609/98.');
end;

procedure TFrmPrincipal.BitBtn2Click(Sender: TObject);
begin
FrmUsuarios:= TFrmUsuarios.Create(Application);
try
  FrmUsuarios.ShowModal;
finally
  FrmUsuarios.Free;
end;
end;

procedure TFrmPrincipal.Usurios1Click(Sender: TObject);
begin
FrmUsuarios:= TFrmUsuarios.Create(Application);
try
  FrmUsuarios.ShowModal;
finally
  FrmUsuarios.Free;
end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
FrmSenha := TfrmSenha.Create(self);
FrmSenha.ShowModal;
FrmDataGeral:= TFrmDataGeral.Create(self);
FrmDataGeral.ShowModal;
Empresa:= Dm.IBDS_EMPRESACNPJ.AsString;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmPrincipal.Caption:= FrmPrincipal.Caption;
Exit;
end else
FrmPrincipal.Caption:= FrmPrincipal.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmPrincipal.ManipulaExcecoes(Sender: TObject; E: Exception);
var
 SGOErros: TextFile;
 Hora: String;
begin
Hora:=TimeToStr(Time);
ShowMessage('Ocorreu um comando inválido nesta aplicação.'+#13+#13+'Verifique se algo de incorreto foi efetuado.'+#13+#13+'Se o problema continuar consulte o suporte técnico deste produto.');
try
  AssignFile(SGOErros, 'C:\Windows\GPALog.log');
  if not FileExists('C:\Windows\GPALog.log') then Rewrite(SGOErros,'C:\Windows\GPALog.log');
  Append(SGOErros);
  WriteLn(SGOErros, 'Ocorrência: '+(E.Message)+ ' em: '+DateToStr(Data)+ ' às ' +Hora+'Hs');
  finally
  CloseFile(SGOErros);
  end;
  Screen.Cursor := crDefault;
  Abort;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
Application.OnException := ManipulaExcecoes;
end;

procedure TFrmPrincipal.Empresa1Click(Sender: TObject);
begin
FrmEmpresa:= TFrmEmpresa.Create(Application);
try
  FrmEmpresa.ShowModal;
finally
  FrmEmpresa.Free;
end;
end;

procedure TFrmPrincipal.DataSource1DataChange(Sender: TObject;
  Field: TField);
var
  MS: TMemoryStream;
  J1: TJPEGImage;
begin
  Try{Finall}
    If Dm.IBDS_EMPRESALOGO_EMPRESA.IsNull
      then Image1.Picture.Assign(nil)
      else begin
        J1 := TJPEGImage.Create;
        MS := TMemoryStream.Create;
        try
          Dm.IBDS_EMPRESALOGO_EMPRESA.SaveToStream(MS);
          MS.Seek(0,soFromBeginning);
          with J1 do begin
            PixelFormat := jf24Bit;
            Scale := jsFullSize;
            Grayscale := False;
            Performance := jpBestQuality;
            ProgressiveDisplay := True;
            ProgressiveEncoding := True;
            LoadFromStream(MS);
          end;
         Image1.Picture.Assign(J1);
        finally
          J1.Free;
          MS.Free;
      end;
      end;
  Finally
    End;
if  Dm.IBDS_EMPRESA.FieldByName('LOGO_EMPRESA').asString = '' then
begin
Image2.Visible:=True;
end
else
Image2.Visible:=False;
end;

procedure TFrmPrincipal.BitBtn3Click(Sender: TObject);
begin
FrmLocalizar:= TFrmLocalizar.Create(Application);
try
  FrmLocalizar.ShowModal;
finally
  FrmLocalizar.Free;
end;
end;

procedure TFrmPrincipal.Localizar1Click(Sender: TObject);
begin
FrmLocalizar:= TFrmLocalizar.Create(Application);
try
  FrmLocalizar.ShowModal;
finally
  FrmLocalizar.Free;
end;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
 Dir, Filename: string;
begin
CanClose:= False;
if MessageBox(0,'Tem certeza que deseja sair deste aplicativo?','Pergunta',mb_yesno+mb_iconquestion)=6 then
CanClose := True;
if CanClose = True then
begin
Reg:= TRegistry.Create;
Reg.OpenKey('Backup', True);
Diario:=Reg.ReadString('Backup Diário');
Reg.CloseKey;

Dir := 'C:\Meus documentos\Meus backups\GPA';
if not DirectoryExists(Dir) then
ForceDirectories(Dir);
Panel2.Visible:=True;
Screen.Cursor := crMultiDrag;

if Diario = 'Não' then
begin
DeleteFile('C:\Meus documentos\Meus backups\GPA\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data - 1))+'.bck');
Filename:= 'C:\Meus documentos\Meus backups\GPA\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data))+'.bck';
end else
Filename:= 'C:\Meus documentos\Meus backups\GPA\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data))+'.bck';
if Filelistbox.items.count = 0 then MessageBox(FrmBackup.handle,'Nenhum arquivo adicionado.','Aviso',0+48)
     else //
  BackupFile1.maxSize := 0;
  backupfile1.backuptitle      := 'GPA - Cópia de segurança';
  backupfile1.backupmode       := bmAll;
  backupfile1.compressionLevel := clMax;
  backupfile1.SaveFileID       := False;
  if backupfile1.backup(filelistbox.items, Filename) then
Panel2.Visible:=False;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmPrincipal.BackupFile1Progress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
begin
with Progressbar1 do
     begin
          visible := Percent < 100;
          if visible then position := Percent;
     end;
end;

procedure TFrmPrincipal.CustomPreview(Sender: TObject);
begin
FrmPreview := TfrmPreview.Create(self);
FrmPreview.QRPreview1.QRPrinter := TQRPrinter(Sender);
FrmPreview.Show;
end;

procedure TFrmPrincipal.Aniversariantes1Click(Sender: TObject);
begin
FrmAniversariantes:= TFrmAniversariantes.Create(Application);
try
  FrmAniversariantes.ShowModal;
finally
  FrmAniversariantes.Free;
end;
end;

procedure TFrmPrincipal.BitBtn5Click(Sender: TObject);
begin
FrmAniversariantes:= TFrmAniversariantes.Create(Application);
try
  FrmAniversariantes.ShowModal;
finally
  FrmAniversariantes.Free;
end;
end;

function TFrmPrincipal.TiraMascara(text: string): String;
// Remove mascaras de valores Numericos
var aux:string;
    i:integer;
begin
Aux := '';
for i :=1 to Length(text) do
    begin
    if(copy(text,i,1)<>'.') and (copy(text,i,1)<>'-') and (copy(text,i,1)<>'/')and(copy(text,i,1)<>'\') then
      begin
      Aux := Aux + copy(text,i,1);
      end;
    end;
Result := Aux;
end;

procedure TFrmPrincipal.ConverterJPegParaBmp(Arquivo: string);
var
  JPeg: TJPegImage;
  Bmp: TBitmap;
begin
  JPeg := TJPegImage.Create;
  try
    JPeg.LoadFromFile(Arquivo);
    Bmp := TBitmap.Create;
    try
      Bmp.Assign(JPeg);
      Bmp.SaveToFile(ChangeFileExt(Arquivo, '.bmp'));
    finally
      Bmp.Free;
    end;
  finally
    JPeg.Free;
  end;
end;

procedure TFrmPrincipal.Pagamentos1Click(Sender: TObject);
begin
FrmContratos:= TFrmContratos.Create(Application);
try
  FrmContratos.ShowModal;
finally
  FrmContratos.Free;
end;
end;

function TFrmPrincipal.RemoveZeros(S: string): string;
// Remove os zeros na frente de um valor.
var  I, J : Integer;
begin
I := Length(S);
while (I > 0) and (S[I] <= ' ') do begin
Dec(I); end;
J := 1;
while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do begin
Inc(J); end;
Result := Copy(S, J, (I-J) + 1);
end;

function TFrmPrincipal.RetZero(ZEROS: string; QUANT: integer): String;
var
I,Tamanho:integer;
aux: string;
begin
  aux:=zeros;
  Tamanho:=length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
  ZEROS:=ZEROS+'0';
  aux:=zeros+aux;
  RetZero:=aux;
end;

procedure TFrmPrincipal.Promotores1Click(Sender: TObject);
begin
FrmPromotor:= TFrmPromotor.Create(Application);
try
  FrmPromotor.ShowModal;
finally
  FrmPromotor.Free;
end;
end;

procedure TFrmPrincipal.Inativos1Click(Sender: TObject);
begin
FrmInativos:= TFrmInativos.Create(Application);
try
  FrmInativos.ShowModal;
finally
  FrmInativos.Free;
end;
end;

procedure TFrmPrincipal.ImpressodeCarteira1Click(Sender: TObject);
begin
FrmCarteiras:= TFrmCarteiras.Create(Application);
try
  FrmCarteiras.ShowModal;
finally
  FrmCarteiras.Free;
end;
end;

procedure TFrmPrincipal.GeraoeImpressodeCarn1Click(Sender: TObject);
begin
FrmCarne:= TFrmCarne.Create(Application);
try
  FrmCarne.ShowModal;
finally
  FrmCarne.Free;
end;
end;

procedure TFrmPrincipal.Recebimentos1Click(Sender: TObject);
begin
FrmRecebimentos:= TFrmRecebimentos.Create(Application);
try
  FrmRecebimentos.ShowModal;
finally
  FrmRecebimentos.Free;
end;
end;

procedure TFrmPrincipal.Contratos1Click(Sender: TObject);
begin
FrmConsultaContratos:= TFrmConsultaContratos.Create(Application);
try
  FrmConsultaContratos.ShowModal;
finally
  FrmConsultaContratos.Free;
end;
end;

procedure TFrmPrincipal.BitBtn6Click(Sender: TObject);
begin
FrmRecebimentos:= TFrmRecebimentos.Create(Application);
try
  FrmRecebimentos.ShowModal;
finally
  FrmRecebimentos.Free;
end;
end;

procedure TFrmPrincipal.HistricodoCliente1Click(Sender: TObject);
begin
FrmHistoricoFinanCli:= TFrmHistoricoFinanCli.Create(Application);
try
  FrmHistoricoFinanCli.ShowModal;
finally
  FrmHistoricoFinanCli.Free;
end;
end;

procedure TFrmPrincipal.FichadeAtendimento1Click(Sender: TObject);
begin
if FrmRelGA <> Nil then Exit;
FrmRelFA:= TFrmRelFA.Create(self);
FrmRelFA.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelFA.QuickRep1.Preview;
FrmRelFA.Free;
FrmRelFA := Nil;
end;

procedure TFrmPrincipal.GuiadeSepultamento1Click(Sender: TObject);
begin
if FrmRelGA <> Nil then Exit;
FrmRelGA:= TFrmRelGA.Create(self);
FrmRelGA.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelGA.QuickRep1.Preview;
FrmRelGA.Free;
FrmRelGA := Nil;
end;

procedure TFrmPrincipal.BitBtn7Click(Sender: TObject);
begin
FrmRelatorios:= TFrmRelatorios.Create(Application);
try
  FrmRelatorios.ShowModal;
finally
  FrmRelatorios.Free;
end;
end;

procedure TFrmPrincipal.ContratodePrestaodeServio1Click(Sender: TObject);
begin
FrmContrato:= TFrmContrato.Create(Application);
try
  FrmContrato.ShowModal;
finally
  FrmContrato.Free;
end;
end;

end.
