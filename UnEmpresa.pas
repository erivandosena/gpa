unit UnEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, Menus, DB, ExtCtrls, StdCtrls, jpeg, DBCtrls, Mask,
  Buttons, IBCustomDataSet, IBQuery, ComCtrls;

type
  TFrmEmpresa = class(TForm)
    Panel1: TPanel;
    SbSalvar: TBitBtn;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    Panel4: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    Image1: TImage;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    ExcluirImagemdaLogomarca1: TMenuItem;
    SalvarImagemdaLogomarca1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    SaveDialog1: TSaveDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    Bevel3: TBevel;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBComboBox9: TDBComboBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    IBQuery_CEP: TIBQuery;
    IBQuery_CEPCODIGO: TIntegerField;
    IBQuery_CEPNOME_CID: TIBStringField;
    IBQuery_CEPCEP_CID: TIBStringField;
    IBQuery_CEPESTADO: TIBStringField;
    IBQuery_CEPUF: TIBStringField;
    Btn_Apagar: TBitBtn;
    SbInserirImagem: TBitBtn;
    Btn_Fechar: TBitBtn;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SbInserirImagemClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Image1Click(Sender: TObject);
    procedure SalvarImagemdaLogomarca1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Btn_ApagarClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
  private
    { Private declarations }
    procedure LoadFileToDB(const FilePath: string);
    procedure Fotografia;
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation

uses UnDm, UnPrincipal;

{$R *.dfm}

procedure TFrmEmpresa.SbSalvarClick(Sender: TObject);
begin
if DBEdit1.Text = '' then
begin
ShowMessage('Preencha o campo "Nome Empresarial"');
PageControl1.ActivePageIndex:= 0;
DBEdit1.SetFocus;
Exit;
end else
if DBEdit3.Text = '  .   .   /    -  ' then
begin
ShowMessage('Preencha o campo "C.N.P.J."');
PageControl1.ActivePageIndex:= 0;
DBEdit3.SetFocus;
Exit;
end else
Try
Screen.Cursor := crHourGlass;
Dm.IBDS_EMPRESA.FieldByName('USUARIO').AsString:= Usuario;
    If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
      DM.IBTransaction.CommitRetaining;
  Finally
    Screen.Cursor := crDefault;
  End;
if FrmEmpresa.Caption = 'Empresa' then
begin
FrmEmpresa.Caption:= FrmEmpresa.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString+' - '+Dm.IBDS_EMPRESACNPJ.AsString;
end;
Fotografia;
end;

procedure TFrmEmpresa.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Deseja realmente excluir este cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_EMPRESA.Delete;
Dm.IBDS_EMPRESA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmEmpresa);
DBEdit1.SetFocus;
Fotografia;
end;
end;

procedure TFrmEmpresa.SbCancelarClick(Sender: TObject);
begin
Dm.IBDS_EMPRESA.Cancel;
Dm.IBDS_EMPRESA.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Fotografia;
end;

procedure TFrmEmpresa.DataSource1StateChange(Sender: TObject);
begin
SbExcluir.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_EMPRESA.RecordCount > 0);
SbSalvar.Enabled:= DataSource1.State in [dsInsert,dsEdit];
SbCancelar.Enabled:= DataSource1.State in [dsInsert,dsEdit];
end;

procedure TFrmEmpresa.SbInserirImagemClick(Sender: TObject);
var i: integer;
begin
 if DataSource1.State=dsinactive then
  begin
     MessageDlg('Abra um registro antes de alterar os dados.',mtinformation,[mbok],0);
     Exit;
  end;
     if DataSource1.State=dsbrowse then
Dm.IBDS_EMPRESA.Edit;
begin
  With OpenPictureDialog1 do if Execute
   then
   for i := 0 to Files.Count-1
        do LoadFileToDB(Files[i]);
end;
Fotografia;
end;

procedure TFrmEmpresa.DataSource1DataChange(Sender: TObject;
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

procedure TFrmEmpresa.LoadFileToDB(const FilePath: string);
var
 MS: TMemoryStream; J1: TJPEGImage;
begin
  MS := TMemoryStream.Create;
  J1 := TJPEGImage.Create;
    Try{Except}
     {Adquira quadro indiretamente por TImage, stream(flua), e então para DB}
      Image1.Picture.LoadFromFile(FilePath);
     J1.Assign(Image1.Picture);
      J1.SaveToStream(MS);
      Dm.IBDS_EMPRESALOGO_EMPRESA.LoadFromStream(MS);
    Except
      On e:Exception do begin
       ShowMessage
            (e.Message + ^M + 'enquanto tentava carregar '+FilePath);
        With Dm.IBDS_EMPRESA do if not (State in [dsInactive, dsBrowse])
         then
         MessageBox(FrmEmpresa.handle,'Houve um erro ao carregar a imagem selecionada. A imagem não será salva no cadastro atual. Tente novamente.','Informação',0+64);
       Abort;
       end;
       end;
    MS.Free;
    J1.Free;
end;

procedure TFrmEmpresa.Image1Click(Sender: TObject);
begin
Dm.IBDS_EMPRESA.Edit;
end;

procedure TFrmEmpresa.SalvarImagemdaLogomarca1Click(Sender: TObject);
begin
SaveDialog1.FileName:= DBEdit2.Text+'.jpg';
 if SaveDialog1.Execute then
Image1.Picture.SaveToFile(SaveDialog1.FileName);
end;

procedure TFrmEmpresa.FormShow(Sender: TObject);
begin
FrmEmpresa.Top:=100;
FrmEmpresa.Left:=0;
Fotografia;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmEmpresa.Caption:= FrmEmpresa.Caption;
Exit;
end else
FrmEmpresa.Caption:= FrmEmpresa.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmEmpresa.DBEdit1Change(Sender: TObject);
begin
if DataSource1.State = dsInsert then
begin
Dm.IBDS_EMPRESA.FieldByName('NOME_FANTASIA').asString:= DBEdit1.Text;
end;
end;

procedure TFrmEmpresa.Btn_ApagarClick(Sender: TObject);
begin
Dm.IBDS_EMPRESA.Edit;
Dm.IBDS_EMPRESA.FieldByName('LOGO_EMPRESA').Clear;
Image1.Picture.Graphic:= nil;
Image2.Visible:=True;
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
DM.IBTransaction.CommitRetaining;
Fotografia;
end;

procedure TFrmEmpresa.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmEmpresa.DBEdit9Exit(Sender: TObject);
var
a, b, c: String;
begin
Dm.IBDS_EMPRESA.Edit;
if DBEdit9.Text = '' then
begin
DBEdit8.Text:= '';
DBEdit16.Text:= '';
Dm.IBDS_EMPRESA.FieldByName('UF').asString:= '';
Exit;
end else
IBQuery_CEP.SQL.Clear;
a:='Select * from CEPS ';
b:='Where NOME_CID Like:Consulta ';
c:='Order By NOME_CID';
IBQuery_CEP.SQL.Add(a+b+c);
IBQuery_CEP.Params[0].AsString;
IBQuery_CEP.ParamByName('Consulta').AsString:=DBEdit9.Text+'%';
IBQuery_CEP.Close;
IBQuery_CEP.Open;
Dm.IBDS_EMPRESA.FieldByName('CEP').asString:= IBQuery_CEPCEP_CID.AsString;
Dm.IBDS_EMPRESA.FieldByName('ESTADO').asString:= IBQuery_CEPESTADO.AsString;
Dm.IBDS_EMPRESA.FieldByName('UF').asString:= IBQuery_CEPUF.AsString;
end;

procedure TFrmEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmEmpresa.Fotografia;
begin
if Dm.IBDS_EMPRESA.FieldByName('LOGO_EMPRESA').Value = '' then
begin
SbInserirImagem.Caption:= 'I&magem';
end else
SbInserirImagem.Caption:= '&Alterar';
if SbInserirImagem.Caption = '&Alterar' then
begin
Btn_Apagar.Enabled:= True;
end else
Btn_Apagar.Enabled:= False;
end;

procedure TFrmEmpresa.PageControl1Change(Sender: TObject);
begin
case PageControl1.TabIndex of
    0: begin

    end;
    1: begin

    end;
end;
end;

procedure TFrmEmpresa.DBEdit29Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 0;
DBEdit1.SetFocus;
end;

procedure TFrmEmpresa.DBEdit19Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 1;
DBEdit26.SetFocus;
end;

end.
