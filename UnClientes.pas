unit UnClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, Menus, IBQuery, StdCtrls, Buttons, DBCtrls,
  ExtCtrls, Mask, ComCtrls, jpeg, ExtDlgs, ToolEdit, RXDBCtrl, Grids,
  DBGrids;

type
  TFrmClientes = class(TForm)
    PageControl1: TPageControl;
    Panel2: TPanel;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    SbNovo: TBitBtn;
    SbAnterior: TBitBtn;
    SbProximo: TBitBtn;
    SbAtualiza: TBitBtn;
    SbSalvar: TBitBtn;
    SbFecha: TBitBtn;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    SbLocalizar: TBitBtn;
    Fechar1: TMenuItem;
    IBQuery_Codigo: TIBQuery;
    Panel4: TPanel;
    N1: TMenuItem;
    DadosdoCliente1: TMenuItem;
    DadosdoConjuge1: TMenuItem;
    TabSheet3: TTabSheet;
    DadosFinanceiros1: TMenuItem;
    Panel5: TPanel;
    NovoCadastro1: TMenuItem;
    DBText3: TDBText;
    Label57: TLabel;
    Bevel3: TBevel;
    DBText4: TDBText;
    Label_NomeCliente1: TLabel;
    DBText6: TDBText;
    Label61: TLabel;
    Localizar1: TMenuItem;
    Panel10: TPanel;
    Label109: TLabel;
    Image2: TImage;
    Image1: TImage;
    DBText9: TDBText;
    SbInserirFoto: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    N2: TMenuItem;
    IBQuery_CEP: TIBQuery;
    IBQuery_CEPCODIGO: TIntegerField;
    IBQuery_CEPNOME_CID: TIBStringField;
    IBQuery_CEPCEP_CID: TIBStringField;
    IBQuery_CEPESTADO: TIBStringField;
    IBQuery_CEPUF: TIBStringField;
    Btn_ApagarImagem: TBitBtn;
    PopupMenu1: TPopupMenu;
    ExcluirImagemdaLogomarca1: TMenuItem;
    SalvarImagemdaLogomarca1: TMenuItem;
    DBGrid_Dependentes: TDBGrid;
    Bevel1: TBevel;
    DBText1: TDBText;
    Label_NomeCliente2: TLabel;
    IBQuery_Dependentes: TIBQuery;
    DS_Dependentes: TDataSource;
    IBQuery_DependentesCOD_DEPE: TIntegerField;
    IBQuery_DependentesCODIGO: TIBStringField;
    IBQuery_DependentesNOME_DEPENDENTE: TIBStringField;
    IBQuery_DependentesPARENTESCO: TIBStringField;
    Label6: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    DBEdit15: TDBEdit;
    DBText2: TDBText;
    DBText5: TDBText;
    BtnDep_Novo: TBitBtn;
    BtnDep_Salvar: TBitBtn;
    BtnDep_Excluir: TBitBtn;
    BtnDep_Cancelar: TBitBtn;
    BtnDep_Anterior: TBitBtn;
    BtnDep_Proximo: TBitBtn;
    BtnDep_Sair: TBitBtn;
    DataSource2: TDataSource;
    BtnDep_Voltar: TBitBtn;
    Label29: TLabel;
    DBText7: TDBText;
    Label_Dependentes: TLabel;
    IBQuery_Contador: TIBQuery;
    IBQuery_ContadorCOUNT: TIntegerField;
    Label32: TLabel;
    Ds_Contador: TDataSource;
    DBText10: TDBText;
    DBGrid_Hist_Parcelas: TDBGrid;
    IBQuery_HistParcelas: TIBQuery;
    IBQuery_HistParcelasCOD_CARN: TIntegerField;
    IBQuery_HistParcelasDATA_CONTRATO: TDateTimeField;
    IBQuery_HistParcelasCONTRATO: TIntegerField;
    IBQuery_HistParcelasNOME_CLIENTE: TIBStringField;
    IBQuery_HistParcelasCODIGO: TIBStringField;
    IBQuery_HistParcelasRG: TIBStringField;
    IBQuery_HistParcelasCPF: TIBStringField;
    IBQuery_HistParcelasTE: TIBStringField;
    IBQuery_HistParcelasENDERECO: TIBStringField;
    IBQuery_HistParcelasBAIRRO: TIBStringField;
    IBQuery_HistParcelasCIDADE: TIBStringField;
    IBQuery_HistParcelasCEP: TIBStringField;
    IBQuery_HistParcelasESTADO: TIBStringField;
    IBQuery_HistParcelasUF: TIBStringField;
    IBQuery_HistParcelasNUMERO_PARCELA: TIBStringField;
    IBQuery_HistParcelasMES_REFERENCIA: TIBStringField;
    IBQuery_HistParcelasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_HistParcelasVALOR_MENSAL: TIBBCDField;
    IBQuery_HistParcelasDATA_PAGAMENTO: TDateTimeField;
    IBQuery_HistParcelasVALOR_PAGO: TIBBCDField;
    IBQuery_HistParcelasOBS: TIBStringField;
    IBQuery_HistParcelasNUMERO_DOC: TIBStringField;
    IBQuery_HistParcelasSITUACAO: TIBStringField;
    IBQuery_HistParcelasANO_BASE: TIBStringField;
    IBQuery_HistParcelasUSUARIO: TIBStringField;
    DS_HistParcelas: TDataSource;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBText11: TDBText;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    DBText12: TDBText;
    Label58: TLabel;
    Label60: TLabel;
    DBEdit13: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBComboBox8: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBMemo1: TDBMemo;
    DBEdit24: TDBEdit;
    DBDateEdit_DCE: TDBDateEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBEdit28: TDBEdit;
    DBComboBox16: TDBComboBox;
    DBEdit14: TDBEdit;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    DBEdit29: TDBEdit;
    Label38: TLabel;
    DBEdit30: TDBEdit;
    Label49: TLabel;
    DBEdit31: TDBEdit;
    Label52: TLabel;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label7: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    Label_Matricula: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    Label1: TLabel;
    Label31: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    Label33: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox4: TDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBComboBox6: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBMemo_OBS: TDBMemo;
    DBComboBox15: TDBComboBox;
    DBDateEdit_DN: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBDateEdit_DC: TDBDateEdit;
    DBComboBox1: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit17: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBEdit7: TDBEdit;
    DBComboBox5: TDBComboBox;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    Bevel2: TBevel;
    DBText13: TDBText;
    Label59: TLabel;
    DBText14: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label39: TLabel;
    Label62: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    Label63: TLabel;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBGrid_Dependentes_PF: TDBGrid;
    BtnDep_Novo_PF: TBitBtn;
    BtnDep_Salvar_PF: TBitBtn;
    BtnDep_Excluir_PF: TBitBtn;
    BtnDep_Cancelar_PF: TBitBtn;
    BtnDep_Anterior_PF: TBitBtn;
    BtnDep_Proximo_PF: TBitBtn;
    BtnDep_Sair_PF: TBitBtn;
    BtnDep_Voltar_PF: TBitBtn;
    TabSheet6: TTabSheet;
    Panel8: TPanel;
    DBText17: TDBText;
    Label64: TLabel;
    Bevel4: TBevel;
    DBText18: TDBText;
    Label65: TLabel;
    DBGrid_Hist_Parcelas_PF: TDBGrid;
    DataSource3: TDataSource;
    DBEdit32: TDBEdit;
    Label66: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SbNovoClick(Sender: TObject);
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SbAtualizaClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure SbAnteriorClick(Sender: TObject);
    procedure SbProximoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DadosdoConjuge1Click(Sender: TObject);
    procedure DadosFinanceiros1Click(Sender: TObject);
    procedure SbLocalizarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBMemo_OBSKeyPress(Sender: TObject; var Key: Char);

    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SbInserirFotoClick(Sender: TObject);

    procedure Btn_ApagarImagemClick(Sender: TObject);
    procedure SalvarImagemdaLogomarca1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);


    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox14Exit(Sender: TObject);

    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBDateEdit_DNExit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBDateEdit_DCExit(Sender: TObject);
    procedure DataSource2StateChange(Sender: TObject);
    procedure BtnDep_SairClick(Sender: TObject);
    procedure BtnDep_SalvarClick(Sender: TObject);
    procedure BtnDep_ExcluirClick(Sender: TObject);
    procedure BtnDep_CancelarClick(Sender: TObject);
    procedure BtnDep_AnteriorClick(Sender: TObject);
    procedure BtnDep_ProximoClick(Sender: TObject);
    procedure BtnDep_VoltarClick(Sender: TObject);
    procedure DBMemo_OBSEnter(Sender: TObject);
    procedure DBComboBox5Exit(Sender: TObject);
    procedure DBMemo_OBSExit(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure SbFechaClick(Sender: TObject);
    procedure DBComboBox6Change(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBGrid_Hist_ParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBComboBox9Exit(Sender: TObject);
    procedure DBComboBox15Click(Sender: TObject);
    procedure DBComboBox1Click(Sender: TObject);
    procedure DBComboBox4Click(Sender: TObject);
    procedure DBComboBox2Click(Sender: TObject);
    procedure DBComboBox9Click(Sender: TObject);
    procedure DBComboBox3Click(Sender: TObject);
    procedure DBComboBox5Click(Sender: TObject);
    procedure DBComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox9KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBDateEdit_DCEExit(Sender: TObject);
    procedure DBEdit24Enter(Sender: TObject);
    procedure PageControl2Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure PageControl2Change(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBGrid_Hist_Parcelas_PFDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBComboBox13Click(Sender: TObject);
    procedure DBComboBox10Click(Sender: TObject);
    procedure DBComboBox14Click(Sender: TObject);
    procedure DBComboBox16Click(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure BtnDep_Novo_PFClick(Sender: TObject);
    procedure BtnDep_Salvar_PFClick(Sender: TObject);
    procedure BtnDep_Excluir_PFClick(Sender: TObject);
    procedure BtnDep_Cancelar_PFClick(Sender: TObject);
    procedure BtnDep_Anterior_PFClick(Sender: TObject);
    procedure BtnDep_Proximo_PFClick(Sender: TObject);
    procedure BtnDep_Voltar_PFClick(Sender: TObject);
    procedure BtnDep_Sair_PFClick(Sender: TObject);
    procedure BtnDep_NovoClick(Sender: TObject);
    procedure DataSource3StateChange(Sender: TObject);
    procedure DBGrid_Dependentes_PFCellClick(Column: TColumn);
    procedure DBGrid_Dependentes_PFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_DependentesCellClick(Column: TColumn);
    procedure DBGrid_DependentesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function InformarMOtivo(var Motivo: string): boolean;
    procedure Fotografia;
  public
    { Public declarations }
    procedure LoadFileToDB(const FilePath: string);
    Function MatriculaDV(const mat: String): String;
    procedure Tipo_Cadastro;
  end;

var
  FrmClientes: TFrmClientes;
  CODIGO_CLI, CODIGO_DEP, Novo_Cad, Novo_CadDep: String;

implementation

uses UnDm, UnLocalizar, UnPrincipal, UnFotos;

{$R *.dfm}

procedure TFrmClientes.FormShow(Sender: TObject);
begin
FrmClientes.Top:=39;
FrmClientes.Left:=0;
Fotografia;
Tipo_Cadastro;
IBQuery_Contador.Close;
IBQuery_Contador.Open;
Dm.IBDS_PROMOTOR.Close;
Dm.IBDS_PROMOTOR.Open;
DBComboBox5.Items.Clear;
    Dm.IBDS_PROMOTOR.First;
    if not Dm.IBDS_PROMOTOR.Eof then
    repeat
    { seus comandos para a tabela }
    DBComboBox5.Items.Add(Dm.IBDS_PROMOTORAPELIDO_PROMOTOR.AsString);
    Dm.IBDS_PROMOTOR.Next;
    until Dm.IBDS_PROMOTOR.Eof;
//if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
//begin
//FrmClientes.Caption:= FrmClientes.Caption;
//Exit;
//end else
//FrmClientes.Caption:= FrmClientes.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmClientes.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmClientes.DataSource1StateChange(Sender: TObject);
begin
 SbNovo.Enabled:= DataSource1.State in [dsBrowse];
 NovoCadastro1.Enabled:= DataSource1.State in [dsBrowse];
 SbExcluir.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CLIENTES.RecordCount > 0);
 //Btn_ApagarImagem.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ALUNOS.RecordCount > 0);
 //SbInserirFoto.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ALUNOS.RecordCount > 0);
 SbAtualiza.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CLIENTES.RecordCount > 0);
 SbSalvar.Enabled:= DataSource1.State in [dsInsert,dsEdit];
 SbLocalizar.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CLIENTES.RecordCount > 0);
 Localizar1.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CLIENTES.RecordCount > 0);
 SbCancelar.Enabled:= DataSource1.State in [dsInsert,dsEdit];
// SbPrimeiro.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ALUNOS.BOF);
 SbAnterior.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_CLIENTES.BOF);
 SbProximo.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_CLIENTES.EOF);
 // SbUltimo.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ALUNOS.EOF);
 end;

procedure TFrmClientes.SbNovoClick(Sender: TObject);
begin
if (DataSource2.State = dsInsert) or (DataSource2.State = dsEdit) or (DataSource3.State = dsInsert) or (DataSource3.State = dsEdit)then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
//if not (MessageDlg('O Cadastro é Pessoa Física?', mtWarning, [mbYes,mbNo,mbCancel], 0) in [mrYes,mrNo]) then
if MessageBox(0,'O Cadastro é Pessoa Física?','Pergunta',mb_yesno+mb_iconquestion)=6 then
begin
PageControl2.Visible:= True;
PageControl1.Visible:= False;
//showmessage('física');
IBQuery_Codigo.Close;
IBQuery_Codigo.Open;
Novo_Cad:= '1';
Dm.IBDS_CLIENTES.Last;
Dm.IBDS_CLIENTES.Append;
CODIGO_CLI:=FrmPrincipal.RetZero(Dm.IBDS_CLIENTESCOD_CLIE.asString, 4);
Dm.IBDS_CLIENTES.FieldByName('CODIGO').asString:= CODIGO_CLI;
Dm.IBDS_CLIENTES.FieldByName('DATA_CADASTRO').AsFloat:= Data;
Dm.IBDS_CLIENTES.FieldByName('TC').AsString:= 'PF';
Fotografia;
Tipo_Cadastro;
DBEdit2.SetFocus;
Exit;
end else
PageControl2.Visible:= False;
PageControl1.Visible:= True;
//showmessage('jurídica');
IBQuery_Codigo.Close;
IBQuery_Codigo.Open;
Novo_Cad:= '1';
Dm.IBDS_CLIENTES.Last;
Dm.IBDS_CLIENTES.Append;
CODIGO_CLI:=FrmPrincipal.RetZero(Dm.IBDS_CLIENTESCOD_CLIE.asString, 4);
Dm.IBDS_CLIENTES.FieldByName('CODIGO').asString:= CODIGO_CLI;
Dm.IBDS_CLIENTES.FieldByName('DATA_CADASTRO').AsFloat:= Data;
Dm.IBDS_CLIENTES.FieldByName('TC').AsString:= 'PJ';
Fotografia;
Tipo_Cadastro;
DBEdit13.SetFocus;
end;

procedure TFrmClientes.SbSalvarClick(Sender: TObject);
begin
IBQuery_Codigo.Close;
IBQuery_Codigo.Open;
if Dm.IBDS_CLIENTES.FieldByName('TC').AsString = 'PF' then
begin
if DBEdit2.Text = '' then
begin
ShowMessage('Preencha o campo "'+LabeL2.Caption+'"');
PageControl2.ActivePageIndex:=0;
DBEdit2.SetFocus;
Exit;
end else
if DBComboBox2.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label11.Caption+'"');
PageControl2.ActivePageIndex:=0;
DBComboBox2.SetFocus;
Exit;
end else
if DBComboBox9.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label26.Caption+'"');
PageControl2.ActivePageIndex:=0;
DBComboBox9.SetFocus;
Exit;
end else
if DBComboBox3.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label18.Caption+'"');
PageControl2.ActivePageIndex:=0;
DBComboBox3.SetFocus;
Exit;
end else
if DBComboBox5.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label31.Caption+'"');
PageControl2.ActivePageIndex:=0;
DBComboBox5.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if DataSource1.State = dsInsert then
begin
if not IBQuery_Codigo.Locate('CODIGO', CODIGO_CLI, []) then
begin
Dm.IBDS_CLIENTES.FieldByName('USUARIO').AsString:= Usuario;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CLIENTES.Post;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Fotografia;
Tipo_Cadastro;
Tipo_Cadastro;
SbNovo.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o código: "'+CODIGO_CLI+'" já está lançado, informe outro.');
PageControl2.ActivePageIndex:=0;
Dm.IBDS_CLIENTES.Edit;
Screen.Cursor := crDefault;
SbCancelar.SetFocus;
Exit;
end else
Dm.IBDS_CLIENTES.FieldByName('USUARIO').AsString:= Usuario;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CLIENTES.Post;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Fotografia;
Tipo_Cadastro;
SbNovo.SetFocus;
Exit;
end else


if DBEdit13.Text = '' then
begin
ShowMessage('Preencha o campo "'+LabeL35.Caption+'"');
PageControl1.ActivePageIndex:=0;
DBEdit13.SetFocus;
Exit;
end else
if DBEdit14.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label36.Caption+'"');
PageControl1.ActivePageIndex:=0;
DBEdit14.SetFocus;
Exit;
end else
if DBEdit25.Text = '  .   .   /    -  ' then
begin
ShowMessage('Preencha o campo "'+Label50.Caption+'"');
PageControl1.ActivePageIndex:=0;
DBEdit25.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if DataSource1.State = dsInsert then
begin
if not IBQuery_Codigo.Locate('CODIGO', CODIGO_CLI, []) then
begin
Dm.IBDS_CLIENTES.FieldByName('USUARIO').AsString:= Usuario;
Dm.IBDS_CLIENTES.FieldByName('NOME_CLIENTE').AsString:= DBEdit13.Text;
Dm.IBDS_CLIENTES.FieldByName('CPF').AsString:= DBEdit25.Text;
Dm.IBDS_CLIENTES.FieldByName('RG').AsString:= DBEdit26.Text;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CLIENTES.Post;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Fotografia;
Tipo_Cadastro;
Tipo_Cadastro;
SbNovo.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o código: "'+CODIGO_CLI+'" já está lançado, informe outro.');
PageControl1.ActivePageIndex:=0;
Dm.IBDS_CLIENTES.Edit;
Screen.Cursor := crDefault;
SbCancelar.SetFocus;
Exit;
end else
Dm.IBDS_CLIENTES.FieldByName('USUARIO').AsString:= Usuario;
Dm.IBDS_CLIENTES.FieldByName('NOME_CLIENTE').AsString:= DBEdit13.Text;
Dm.IBDS_CLIENTES.FieldByName('CPF').AsString:= DBEdit25.Text;
Dm.IBDS_CLIENTES.FieldByName('RG').AsString:= DBEdit26.Text;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CLIENTES.Post;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Fotografia;
Tipo_Cadastro;
SbNovo.SetFocus;
end;

procedure TFrmClientes.SbExcluirClick(Sender: TObject);
var
M:String;
begin
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
if Dm.IBDS_DEPENDECODIGO.Value <> '' then
begin
ShowMessage('Para excluir este cliente é preciso excluir seus dependentes. Esta ação é irreversível.');
Exit;
end;
if MessageBox(0,'Você tem certeza que deseja excluir este cadastro?'
+#10+#10+'ATENÇÃO: A remoção deste cadastro implicará na exclusão de todas as informações. Esta ação é reversível.'
+#10+#10+'"SIM" para excluir.'
+#10+'"Não" para cancelar.','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
//=====MOVE
Screen.Cursor := crHourGlass;
if Dm.IBDS_INATIVOS.Locate('CODIGO', Dm.IBDS_CLIENTESCODIGO.Value, []) and (Dm.IBDS_INATIVOSCODIGO.Value = Dm.IBDS_CLIENTESCODIGO.Value) then
begin
Dm.IBDS_INATIVOS.Delete;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmClientes);
Fotografia;
Tipo_Cadastro;
end else
Dm.IBDS_INATIVOS.Last;
Dm.IBDS_INATIVOS.Append;
Dm.IBDS_INATIVOS.FieldByName('COD_CLIE').AsString:= Dm.IBDS_CLIENTES.FieldByName('COD_CLIE').AsString;
Dm.IBDS_INATIVOS.FieldByName('CODIGO').AsString:= Dm.IBDS_CLIENTES.FieldByName('CODIGO').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_CADASTRO').AsString:= Dm.IBDS_CLIENTES.FieldByName('DATA_CADASTRO').AsString;
Dm.IBDS_INATIVOS.FieldByName('NOME_CLIENTE').AsString:= Dm.IBDS_CLIENTES.FieldByName('NOME_CLIENTE').AsString;
Dm.IBDS_INATIVOS.FieldByName('RELIGIAO').AsString:= Dm.IBDS_CLIENTES.FieldByName('RELIGIAO').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESTADO_CIVIL').AsString:= Dm.IBDS_CLIENTES.FieldByName('ESTADO_CIVIL').AsString;
Dm.IBDS_INATIVOS.FieldByName('SEXO').AsString:= Dm.IBDS_CLIENTES.FieldByName('SEXO').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_NASCIMENTO').AsString:= Dm.IBDS_CLIENTES.FieldByName('DATA_NASCIMENTO').AsString;
Dm.IBDS_INATIVOS.FieldByName('RG').AsString:= Dm.IBDS_CLIENTES.FieldByName('RG').AsString;
Dm.IBDS_INATIVOS.FieldByName('CPF').AsString:= Dm.IBDS_CLIENTES.FieldByName('CPF').AsString;
Dm.IBDS_INATIVOS.FieldByName('TE').AsString:= Dm.IBDS_CLIENTES.FieldByName('TE').AsString;
Dm.IBDS_INATIVOS.FieldByName('ENDERECO').AsString:= Dm.IBDS_CLIENTES.FieldByName('ENDERECO').AsString;
Dm.IBDS_INATIVOS.FieldByName('PONTO_REFERENCIA').AsString:= Dm.IBDS_CLIENTES.FieldByName('PONTO_REFERENCIA').AsString;
Dm.IBDS_INATIVOS.FieldByName('BAIRRO').AsString:= Dm.IBDS_CLIENTES.FieldByName('BAIRRO').AsString;
Dm.IBDS_INATIVOS.FieldByName('CIDADE').AsString:= Dm.IBDS_CLIENTES.FieldByName('CIDADE').AsString;
Dm.IBDS_INATIVOS.FieldByName('CEP').AsString:= Dm.IBDS_CLIENTES.FieldByName('CEP').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESTADO').AsString:= Dm.IBDS_CLIENTES.FieldByName('ESTADO').AsString;
Dm.IBDS_INATIVOS.FieldByName('UF').AsString:= Dm.IBDS_CLIENTES.FieldByName('UF').AsString;
Dm.IBDS_INATIVOS.FieldByName('TELEFONE').AsString:= Dm.IBDS_CLIENTES.FieldByName('TELEFONE').AsString;
Dm.IBDS_INATIVOS.FieldByName('PAGAMENTO_MENSAL').AsString:= Dm.IBDS_CLIENTES.FieldByName('PAGAMENTO_MENSAL').AsString;
Dm.IBDS_INATIVOS.FieldByName('DIA_VENCIMENTO').AsString:= Dm.IBDS_CLIENTES.FieldByName('DIA_VENCIMENTO').AsString;
Dm.IBDS_INATIVOS.FieldByName('MODELOS').AsString:= Dm.IBDS_CLIENTES.FieldByName('MODELOS').AsString;
Dm.IBDS_INATIVOS.FieldByName('OBS').Value:= Dm.IBDS_CLIENTES.FieldByName('OBS').Value;
Dm.IBDS_INATIVOS.FieldByName('FOTO').Value:= Dm.IBDS_CLIENTES.FieldByName('FOTO').Value;
Dm.IBDS_INATIVOS.FieldByName('TC').AsString:= Dm.IBDS_CLIENTES.FieldByName('TC').AsString;
Dm.IBDS_INATIVOS.FieldByName('NOME_EMPRESARIAL').AsString:= Dm.IBDS_CLIENTES.FieldByName('NOME_EMPRESARIAL').AsString;
Dm.IBDS_INATIVOS.FieldByName('NOME_FANTASIA').AsString:= Dm.IBDS_CLIENTES.FieldByName('NOME_FANTASIA').AsString;
Dm.IBDS_INATIVOS.FieldByName('CNPJ').AsString:= Dm.IBDS_CLIENTES.FieldByName('CNPJ').AsString;
Dm.IBDS_INATIVOS.FieldByName('IE').AsString:= Dm.IBDS_CLIENTES.FieldByName('IE').AsString;
Dm.IBDS_INATIVOS.FieldByName('NOME_RESPONSAVEL').AsString:= Dm.IBDS_CLIENTES.FieldByName('NOME_RESPONSAVEL').AsString;
Dm.IBDS_INATIVOS.FieldByName('RAMO_ATIVIDADE').AsString:= Dm.IBDS_CLIENTES.FieldByName('RAMO_ATIVIDADE').AsString;
Dm.IBDS_INATIVOS.FieldByName('FAX').AsString:= Dm.IBDS_CLIENTES.FieldByName('FAX').AsString;
Dm.IBDS_INATIVOS.FieldByName('EMAIL').AsString:= Dm.IBDS_CLIENTES.FieldByName('EMAIL').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_MOVIDO').AsDateTime:= Data;
Dm.IBDS_INATIVOS.FieldByName('USUARIO').AsString:= Usuario;
Screen.Cursor := crDefault;
if InformarMOtivo(M) then
Dm.IBDS_INATIVOS.FieldByName('RAZAO_MOVIDO').AsString:= M;
if Dm.IBDS_INATIVOS.FieldByName('RAZAO_MOVIDO').AsString = '' then
begin
MessageBox(FrmClientes.Handle,'Cadastro atual não excluído, porque não foi informado um motivo, tente novamente','Aviso',0+48);
PageControl1.ActivePageIndex:= 0;
Dm.IBDS_CLIENTES.Cancel;
Dm.IBDS_CLIENTES.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Dm.IBDS_INATIVOS.Cancel;
Dm.IBDS_INATIVOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Fotografia;
Tipo_Cadastro;
Exit;
end else
//=====salva nos inativos
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_INATIVOS.Post;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// atualiza inativos
Dm.IBDS_INATIVOS.Append;
Dm.IBDS_INATIVOS.Cancel;
Dm.IBDS_INATIVOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Dm.IBDS_INATIVOS.Refresh;
//=====DELETA
Dm.IBDS_CLIENTES.Delete;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmClientes);
Screen.Cursor := crDefault;
MessageBox(FrmClientes.Handle,'O cadastro atual foi movido para: "Inativos".','Aviso',0+48);
Fotografia;
Tipo_Cadastro;
end;
end;

procedure TFrmClientes.SbAtualizaClick(Sender: TObject);
begin
Dm.IBDS_CLIENTES.close;
Dm.IBDS_CLIENTES.Open;
Dm.IBDS_CLIENTES.Refresh;
Dm.IBDS_DEPENDE.close;
Dm.IBDS_DEPENDE.Open;
Dm.IBDS_DEPENDE.Refresh;
Fotografia;
Tipo_Cadastro;
end;

procedure TFrmClientes.SbCancelarClick(Sender: TObject);
begin
if Novo_Cad <> '1' then
begin
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_CLIENTES.Cancel;
Dm.IBDS_CLIENTES.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
SbNovo.SetFocus;
Fotografia;
Tipo_Cadastro;
Exit;
end;
end else
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste novo cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_CLIENTES.Cancel;
Dm.IBDS_CLIENTES.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Novo_Cad:= '';
SbNovo.SetFocus;
Fotografia;
Tipo_Cadastro;
end;
end;

procedure TFrmClientes.SbAnteriorClick(Sender: TObject);
begin
if (DataSource2.State = dsInsert) or (DataSource2.State = dsEdit) then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
Dm.IBDS_CLIENTES.Prior;
DataSource1StateChange(FrmClientes);
Tipo_Cadastro;
Fotografia;
if Dm.IBDS_CLIENTES.FieldByName('TC').AsString = 'PF' then
begin
PageControl2Change(Nil);
Exit;
end else
PageControl1Change(Nil);
end;

procedure TFrmClientes.SbProximoClick(Sender: TObject);
begin
if (DataSource2.State = dsInsert) or (DataSource2.State = dsEdit) then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
Dm.IBDS_CLIENTES.Next;
DataSource1StateChange(FrmClientes);
Tipo_Cadastro;
Fotografia;
if Dm.IBDS_CLIENTES.FieldByName('TC').AsString = 'PF' then
begin
PageControl2Change(Nil);
Exit;
end else
PageControl1Change(Nil);
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmClientes.DadosdoConjuge1Click(Sender: TObject);
begin
    if Dm.IBDS_CLIENTESCODIGO.Value = '' then
    begin
    ShowMessage('É preciso cadastrar um cliente titular.');
    SbNovo.SetFocus;
    Exit;
    end else
    if DataSource1.State = dsInsert then
    begin
    ShowMessage('É preciso salvar o cadastro do cliente titular.');
    Sbsalvar.SetFocus;
    Exit;
    end else

end;

procedure TFrmClientes.DadosFinanceiros1Click(Sender: TObject);
begin
    if Dm.IBDS_CLIENTESCODIGO.Value = '' then
    begin
    ShowMessage('É preciso cadastrar um cliente titular.');
    SbNovo.SetFocus;
    Exit;
    end else
    if DataSource1.State = dsInsert then
    begin
    ShowMessage('É preciso salvar o cadastro do cliente titular.');
    Sbsalvar.SetFocus;
    Exit;
    end else

end;

procedure TFrmClientes.SbLocalizarClick(Sender: TObject);
begin
  FrmLocalizar:= TFrmLocalizar.Create(Application);
try
  FrmLocalizar.ShowModal;
finally
  FrmLocalizar.Free;
end;
Fotografia;
Tipo_Cadastro;
end;

function TFrmClientes.InformarMOtivo(var Motivo: string): boolean;
var
  Form: TForm; { Variável para o Form }
  Medt1: TMaskEdit; { Variável para o MaskEdit }
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Caption := 'Exclusão de Cadastro';
  Form.Position := poMainFormCenter;
  Form.Width := 287;
  Form.Height := 136;
  { Coloca um Label }
  with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Informe o motivo da exclusão:';
  Left := 8;
  Top := 16;
  end;
  { Coloca o Edit }
  Medt1 := TMaskEdit.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 8;
  Top := 32;
  Width := 264;
  BevelInner:= bvLowered;
  BevelKind:= bkTile;
  BevelOuter:= bvRaised;
  BorderStyle:= bsNone;
  CharCase:=ecUpperCase;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  MaxLength:= 25;
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 96;
  Top := 72;
  Kind := bkOK; { Botão Ok }
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  MOtivo := Medt1.Text;
  Result := true;
  end;
  finally
  Form.Free;
  end;
end;

procedure TFrmClientes.PageControl1Change(Sender: TObject);
begin
case PageControl1.TabIndex of
    0: begin

    end;
    1: begin
    if DataSource1.State = dsEdit then
    begin
    PageControl1.ActivePageIndex:= 0;
    ShowMessage('É preciso salvar ou cancelar a edição no cadastro do cliente titular.');
    SbSalvar.SetFocus;
    Exit;
    end else
        // SELECIONA OS DEPENDENTES
 Screen.Cursor := crHourGlass;
 IBQuery_Dependentes.Close;
 IBQuery_Dependentes.SQL.Clear;
 IBQuery_Dependentes.SQL.Add('select * from DEPENDE ');
 IBQuery_Dependentes.SQL.Add('where CODIGO = :Cod ');
 IBQuery_Dependentes.ParamByName('Cod').AsString:= Dm.IBDS_CLIENTESCODIGO.AsString;
 IBQuery_Dependentes.SQL.Add('order by COD_DEPE');
 IBQuery_Dependentes.Prepare;
 IBQuery_Dependentes.Open;
  Screen.Cursor := crDefault;
    if IBQuery_DependentesCOD_DEPE.AsString = '' then
    begin
    DBGrid_Dependentes.Visible:= False;
    BtnDep_Novo.Caption:= 'Novo';
    BtnDep_Salvar.Visible:= True;
    BtnDep_Excluir.Visible:= True;
    BtnDep_Cancelar.Visible:= True;
    BtnDep_Anterior.Visible:= True;
    BtnDep_Proximo.Visible:= True;
    BtnDep_Voltar.Visible:= True;
  // SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
  BtnDep_Novo.SetFocus;
    Exit;
    end else
    DBGrid_Dependentes.Visible:= True;
    DBGrid_Dependentes.Height:= 212;
    DBGrid_Dependentes.Top:= 72;
    DBGrid_Dependentes.Left:= 8;
    BtnDep_Novo.Caption:= 'Alterar';
    BtnDep_Salvar.Visible:= False;
    BtnDep_Excluir.Visible:= False;
    BtnDep_Cancelar.Visible:= False;
    BtnDep_Anterior.Visible:= False;
    BtnDep_Proximo.Visible:= False;
    BtnDep_Voltar.Visible:= False;
    BtnDep_Novo.SetFocus;
    end;
    2: begin
    Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_HistParcelas.Close;
 IBQuery_HistParcelas.SQL.Clear;
 IBQuery_HistParcelas.SQL.Add('select * from CARNE ');
 IBQuery_HistParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_HistParcelas.ParamByName('Cod').AsString:= Dm.IBDS_CLIENTESCODIGO.asString;
 IBQuery_HistParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_HistParcelas.Prepare;
 IBQuery_HistParcelas.Open;
Screen.Cursor := crDefault;
    end;
end;
end;

procedure TFrmClientes.DBMemo_OBSKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= Upcase(Key);
if ((key = chr(13)) and (DBMemo_OBS.Lines.Count = 10)) then key:= chr(27);
if DBMemo_OBS.Lines.Count > 10 then
begin
DBMemo_OBS.Lines.Delete(10);
key:= chr(0);
end;
end;

procedure TFrmClientes.DataSource1DataChange(Sender: TObject; Field: TField);
var
  MS: TMemoryStream;
  J1: TJPEGImage;
begin
  Try{Finall}
    If Dm.IBDS_CLIENTESFOTO.IsNull
      then Image1.Picture.Assign(nil)
      else begin
        J1 := TJPEGImage.Create;
        MS := TMemoryStream.Create;
        try
          Dm.IBDS_CLIENTESFOTO.SaveToStream(MS);
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
if  Dm.IBDS_CLIENTES.FieldByName('FOTO').asString = '' then
begin
Image2.Visible:=True;
end
else
Image2.Visible:=False;
end;

procedure TFrmClientes.LoadFileToDB(const FilePath: string);
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
      Dm.IBDS_CLIENTESFOTO.LoadFromStream(MS);
    Except
      On e:Exception do begin
       ShowMessage
            (e.Message + ^M + 'enquanto tentava carregar '+FilePath);
        With Dm.IBDS_CLIENTES do if not (State in [dsInactive, dsBrowse])
         then
         MessageBox(FrmClientes.handle,'Houve um erro ao carregar a imagem selecionada. A imagem não será salva no cadastro atual. Tente novamente.','Informação',0+64);
       Abort;
       end;
       end;
    MS.Free;
    J1.Free;
end;

function TFrmClientes.MatriculaDV(const mat: String): String;
//Código atualizado e adaptado by: Erivando Ramos - sosinforamos@bol.com.br
var
vvalor, vinicial: String;
v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, vcalc, varl, vres, vpar, vimp: Integer;
begin
Result := mat;
if Result = '' then
begin
showmessage('O valor não pode ser nulo');
Exit;
end
else
vvalor:= Result;
vinicial:= vvalor;
varl:= (length(vvalor));
if varl < 14 then
begin
showmessage('O valor deve conter 14 dígitos');
Result:= '';
Exit;
end
else
begin
v1:= StrToInt(Copy(vvalor,1,1));
v2:= StrToInt(Copy(vvalor,2,1));
v3:= StrToInt(Copy(vvalor,3,1));
v4:= StrToInt(Copy(vvalor,4,1));
v5:= StrToInt(Copy(vvalor,5,1));
v6:= StrToInt(Copy(vvalor,6,1));
v7:= StrToInt(Copy(vvalor,7,1));
v8:= StrToInt(Copy(vvalor,8,1));
v9:= StrToInt(Copy(vvalor,9,1));
v10:= StrToInt(Copy(vvalor,10,1));
v11:= StrToInt(Copy(vvalor,11,1));
v12:= StrToInt(Copy(vvalor,12,1));
v13:= StrToInt(Copy(vvalor,13,1));
v14:= StrToInt(Copy(vvalor,14,1));
vimp:= v1+v3+v5+v7+v9+v11+v13;
vpar:= (v2+v4+v6+v8+v10+v12+v14)*3;
vcalc:= (vimp)+(vpar);
vres:= 100000000-vcalc;
vvalor:= IntToStr(vres);
vres:= StrToInt(Copy(vvalor,8,1));
Result:= vinicial+'-'+IntToStr(vres);
end;
end;

procedure TFrmClientes.SbInserirFotoClick(Sender: TObject);
begin
  FrmFotos:= TFrmFotos.Create(Application);
try
  FrmFotos.ShowModal;
finally
  FrmFotos.Free;
end;
Fotografia;
Tipo_Cadastro;
end;

procedure TFrmClientes.Btn_ApagarImagemClick(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('FOTO').Clear;
Image1.Picture.Graphic:= nil;
Image2.Visible:=True;
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CLIENTES.Post;
Dm.IBDS_CLIENTES.ApplyUpdates;
DM.IBTransaction.CommitRetaining;
Fotografia;
end;

procedure TFrmClientes.SalvarImagemdaLogomarca1Click(Sender: TObject);
begin
OpenPictureDialog1.FileName:= Label_Matricula.Caption+'.jpg';
 if OpenPictureDialog1.Execute then
Image1.Picture.SaveToFile(OpenPictureDialog1.FileName);
end;

procedure TFrmClientes.DBEdit10Exit(Sender: TObject);
var
a, b, c: String;
begin
Dm.IBDS_CLIENTES.Edit;
if DBEdit10.Text = '' then
begin
DBEdit11.Text:= '';
DBEdit12.Text:= '';
Dm.IBDS_CLIENTES.FieldByName('UF').asString:= '';
Exit;
end else
IBQuery_CEP.SQL.Clear;
a:='Select * from CEPS ';
b:='Where NOME_CID Like:Consulta ';
c:='Order By NOME_CID';
IBQuery_CEP.SQL.Add(a+b+c);
IBQuery_CEP.Params[0].AsString;
IBQuery_CEP.ParamByName('Consulta').AsString:=DBEdit10.Text+'%';
IBQuery_CEP.Close;
IBQuery_CEP.Open;
Dm.IBDS_CLIENTES.FieldByName('CEP').asString:= IBQuery_CEPCEP_CID.AsString;
Dm.IBDS_CLIENTES.FieldByName('ESTADO').asString:= IBQuery_CEPESTADO.AsString;
Dm.IBDS_CLIENTES.FieldByName('UF').asString:= IBQuery_CEPUF.AsString;
end;

procedure TFrmClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmClientes.DBComboBox14Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 0;
DBEdit2.SetFocus;
end;

procedure TFrmClientes.Fotografia;
begin
if Dm.IBDS_CLIENTES.FieldByName('FOTO').Value = '' then
begin
SbInserirFoto.Caption:= '&Imagem';
end else
SbInserirFoto.Caption:= 'Alte&rar';
if SbInserirFoto.Caption = 'Alte&rar' then
begin
Btn_ApagarImagem.Enabled:= True;
end else
Btn_ApagarImagem.Enabled:= False;
end;

procedure TFrmClientes.DBEdit9Exit(Sender: TObject);
begin
if DataSource1.State = dsInsert then
begin
Dm.IBDS_CLIENTES.FieldByName('CIDADE').asString:= Dm.IBDS_EMPRESA.FieldByName('CIDADE').asString;
end;
end;

procedure TFrmClientes.DBEdit3Enter(Sender: TObject);
begin
DBDateEdit_DN.Visible:= True;
DBDateEdit_DN.TabOrder:= 6;
DBEdit3.TabOrder:= 23;
DBDateEdit_DN.SetFocus;
end;

procedure TFrmClientes.DBDateEdit_DNExit(Sender: TObject);
begin
DBDateEdit_DN.Visible:= False;
DBDateEdit_DN.TabOrder:= 23;
DBEdit3.TabOrder:= 6;
end;

procedure TFrmClientes.DBEdit1Enter(Sender: TObject);
begin
DBDateEdit_DC.Visible:= True;
DBDateEdit_DC.TabOrder:= 1;
DBEdit1.TabOrder:= 22;
DBDateEdit_DC.SetFocus;
end;

procedure TFrmClientes.DBDateEdit_DCExit(Sender: TObject);
begin
DBDateEdit_DC.Visible:= False;
DBDateEdit_DC.TabOrder:= 22;
DBEdit1.TabOrder:= 1;
end;

procedure TFrmClientes.DataSource2StateChange(Sender: TObject);
begin
BtnDep_Novo.Enabled:= DataSource2.State in [dsBrowse];
BtnDep_Excluir.Enabled:= (DataSource2.State in [dsBrowse]) and (Dm.IBDS_DEPENDE.RecordCount > 0);
BtnDep_Salvar.Enabled:= DataSource2.State in [dsInsert,dsEdit];
BtnDep_Cancelar.Enabled:= DataSource2.State in [dsInsert,dsEdit];
BtnDep_Anterior.Enabled:= (DataSource2.State in [dsBrowse]) and ( NOT Dm.IBDS_DEPENDE.BOF);
BtnDep_Proximo.Enabled:= (DataSource2.State in [dsBrowse]) and ( NOT Dm.IBDS_DEPENDE.EOF);
end;

procedure TFrmClientes.BtnDep_SairClick(Sender: TObject);
begin
if (DataSource2.State = dsInsert) or (DataSource2.State = dsEdit) then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
PageControl1.ActivePageIndex:= 2;
end;

procedure TFrmClientes.BtnDep_SalvarClick(Sender: TObject);
begin
 IBQuery_Dependentes.Close;
 IBQuery_Dependentes.SQL.Clear;
 IBQuery_Dependentes.SQL.Add('select * from DEPENDE ');
 IBQuery_Dependentes.SQL.Add('order by COD_DEPE');
 IBQuery_Dependentes.Prepare;
 IBQuery_Dependentes.Open;
if DBEdit15.Text = '' then
begin
ShowMessage('Preencha o campo "'+LabeL27.Caption+'"');
PageControl1.ActivePageIndex:= 2;
DBEdit15.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if DataSource1.State = dsInsert then
begin
if not IBQuery_Dependentes.Locate('COD_DEPE', Dm.IBDS_DEPENDE.FieldByName('COD_DEPE').Value, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_DEPENDE.Post;
Dm.IBDS_DEPENDE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
BtnDep_Novo.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o código: "'+Dm.IBDS_DEPENDE.FieldByName('COD_DEPE').AsString+'" já está lançado, informe outro.');
PageControl1.ActivePageIndex:=1;
Dm.IBDS_DEPENDE.Edit;
Screen.Cursor := crDefault;
BtnDep_Cancelar.SetFocus;
Exit;
end else
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_DEPENDE.Post;
Dm.IBDS_DEPENDE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
BtnDep_Novo.SetFocus;
end;

procedure TFrmClientes.BtnDep_ExcluirClick(Sender: TObject);
begin
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
if MessageBox(0,'Você tem certeza que deseja excluir este dependente?'
+#10+#10+'ATENÇÃO: A remoção deste cadastro implicará na exclusão deste dependente.'
+#10+#10+'"SIM" para excluir.'
+#10+'"Não" para cancelar.','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_DEPENDE.Delete;
Dm.IBDS_DEPENDE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource2StateChange(FrmClientes);
end;
end;

procedure TFrmClientes.BtnDep_CancelarClick(Sender: TObject);
begin
if Novo_CadDep <> '1' then
begin
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
BtnDep_Novo.SetFocus;
DBGrid_Dependentes.Visible:= False;
Exit;
end;
end else
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste novo cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
BtnDep_Novo.SetFocus;
DBGrid_Dependentes.Visible:= False;
end;
end;

procedure TFrmClientes.BtnDep_AnteriorClick(Sender: TObject);
begin
if Dm.IBDS_CLIENTESCODIGO.asString <> DBText2.Caption then
begin
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
  end else
Dm.IBDS_DEPENDE.Prior;
DataSource2StateChange(FrmClientes);
end;

procedure TFrmClientes.BtnDep_ProximoClick(Sender: TObject);
begin
if Dm.IBDS_CLIENTESCODIGO.asString <> DBText2.Caption then
begin
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
  end else
Dm.IBDS_DEPENDE.Next;
DataSource2StateChange(FrmClientes);
end;

procedure TFrmClientes.BtnDep_VoltarClick(Sender: TObject);
begin
if (DataSource2.State = dsInsert) or (DataSource2.State = dsEdit) then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
DBGrid_Dependentes.Visible:= True;
DBGrid_Dependentes.Height:= 212;
    DBGrid_Dependentes.Top:= 72;
    DBGrid_Dependentes.Left:= 8;
    BtnDep_Novo.Caption:= 'Alterar';
    BtnDep_Salvar.Visible:= False;
    BtnDep_Excluir.Visible:= False;
    BtnDep_Cancelar.Visible:= False;
    BtnDep_Anterior.Visible:= False;
    BtnDep_Proximo.Visible:= False;
    // SELECIONA OS DEPENDENTES
 Screen.Cursor := crHourGlass;
 IBQuery_Dependentes.Close;
 IBQuery_Dependentes.SQL.Clear;
 IBQuery_Dependentes.SQL.Add('select * from DEPENDE ');
 IBQuery_Dependentes.SQL.Add('where CODIGO = :Cod ');
 IBQuery_Dependentes.ParamByName('Cod').AsString:= Dm.IBDS_CLIENTESCODIGO.AsString;
 IBQuery_Dependentes.SQL.Add('order by COD_DEPE');
 IBQuery_Dependentes.Prepare;
 IBQuery_Dependentes.Open;
  Screen.Cursor := crDefault;
BtnDep_Voltar.Visible:= False;
  DBGrid_Dependentes.SetFocus;
end;

procedure TFrmClientes.DBMemo_OBSEnter(Sender: TObject);
begin
FrmClientes.KeyPreview:= False;
end;

procedure TFrmClientes.DBComboBox5Exit(Sender: TObject);
begin
//if DataSource1.State = dsInsert then
//begin
//PageControl1.ActivePageIndex:= 2;
//PageControl1Change(Nil);
//Exit;
//end else
//PageControl1.ActivePageIndex:= 2;
//PageControl1Change(Nil);
//BtnDep_Novo.SetFocus;
end;

procedure TFrmClientes.DBMemo_OBSExit(Sender: TObject);
begin
FrmClientes.KeyPreview:= True;
end;

procedure TFrmClientes.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
AllowChange:=(not Dm.IBDS_CLIENTES.IsEmpty) and (not (Dm.IBDS_CLIENTES.state=dsinsert));
end;

procedure TFrmClientes.SbFechaClick(Sender: TObject);
begin
if (DataSource1.State = dsInsert) or (DataSource1.State = dsEdit) then
begin
Dm.IBDS_CLIENTES.Cancel;
Dm.IBDS_CLIENTES.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
if (DataSource2.State = dsInsert) or (DataSource2.State = dsEdit) then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
Close;
end;

procedure TFrmClientes.DBComboBox6Change(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('UF').AsString:= DBComboBox6.Text;
end;

procedure TFrmClientes.DBEdit2Exit(Sender: TObject);
begin
if DataSource1.State = dsInsert then
begin
 IBQuery_Codigo.Close;
 IBQuery_Codigo.SQL.Clear;
 IBQuery_Codigo.SQL.Add('select CODIGO, NOME_CLIENTE from CLIENTES ');
 IBQuery_Codigo.SQL.Add('order by CODIGO');
 IBQuery_Codigo.Prepare;
 IBQuery_Codigo.Open;
 if IBQuery_Codigo.Locate('NOME_CLIENTE', DBEdit2.Text, []) then
begin
if MessageBox(0,'O cliente informado já existe. Deseja continuar?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
DBComboBox15.SetFocus;
Exit;
end else
Dm.IBDS_CLIENTES.FieldByName('NOME_CLIENTE').AsString:= '';
DBEdit2.SetFocus;
end;
end;
end;

procedure TFrmClientes.DBEdit15Exit(Sender: TObject);
begin
if DataSource2.State = dsInsert then
begin
if IBQuery_Dependentes.Locate('NOME_DEPENDENTE', DBEdit15.Text, []) then
begin
if MessageBox(0,'O dependente informado já existe. Deseja continuar?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin

Exit;
end else
Dm.IBDS_DEPENDE.FieldByName('NOME_DEPENDENTE').AsString:= '';
DBEdit15.SetFocus;
end;
end;
end;

procedure TFrmClientes.DBGrid_Hist_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
(*destaca campo SITUAÇÃO*)
   if Column.Field = IBQuery_HistParcelasDATA_VENCIMENTO then
     if (IBQuery_HistParcelasDATA_VENCIMENTO.AsCurrency < Data) and (IBQuery_HistParcelasDATA_PAGAMENTO.AsString <> '') then
     begin
       DBGrid_Hist_Parcelas.Canvas.Font.Style:= DBGrid_Hist_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_Hist_Parcelas.Canvas.Font.Color:= clBlue;
       DBGrid_Hist_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
       end else
            if (IBQuery_HistParcelasDATA_VENCIMENTO.AsCurrency < Data) and (IBQuery_HistParcelasDATA_PAGAMENTO.IsNull) then
     begin
       DBGrid_Hist_Parcelas.Canvas.Font.Style:= DBGrid_Hist_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_Hist_Parcelas.Canvas.Font.Color:= clRed;
       DBGrid_Hist_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
     end;
end;

procedure TFrmClientes.DBComboBox9Exit(Sender: TObject);
begin
if DBComboBox9.Text = '' then
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('DIA_VENCIMENTO').AsString:= '1';
end else
Dm.IBDS_CLIENTES.FieldByName('DIA_VENCIMENTO').AsString:= FrmPrincipal.RetZero(Dm.IBDS_CLIENTES.FieldByName('DIA_VENCIMENTO').AsString, 2);
end;

procedure TFrmClientes.DBComboBox15Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('RELIGIAO').AsString:= DBComboBox15.Text;
end;

procedure TFrmClientes.DBComboBox1Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('ESTADO_CIVIL').AsString:= DBComboBox1.Text;
end;

procedure TFrmClientes.DBComboBox4Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('SEXO').AsString:= DBComboBox4.Text;
end;

procedure TFrmClientes.DBComboBox2Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('PAGAMENTO_MENSAL').AsString:= DBComboBox2.Text;
end;

procedure TFrmClientes.DBComboBox9Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('DIA_VENCIMENTO').AsString:= DBComboBox9.Text;
end;

procedure TFrmClientes.DBComboBox3Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('MODELOS').AsString:= DBComboBox3.Text;
end;

procedure TFrmClientes.DBComboBox5Click(Sender: TObject);
begin
Dm.IBDS_PROMOTOR.Locate('APELIDO_PROMOTOR', DBComboBox5.Text, []);
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('CODIGO_P').AsString:= Dm.IBDS_PROMOTOR.FieldByName('CODIGO_P').AsString;
end;

procedure TFrmClientes.DBComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['A'..'Z',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmClientes.DBComboBox9KeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
IBQuery_Contador.Close;
end;

procedure TFrmClientes.Tipo_Cadastro;
begin
if Dm.IBDS_CLIENTES.FieldByName('TC').AsString = 'PF' then
begin
PageControl2.Visible:= True;
PageControl1.Visible:= False;
SbInserirFoto.Enabled:= True;
FrmClientes.Caption:= 'Clientes Pessoa Física'+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end else
if Dm.IBDS_CLIENTES.FieldByName('TC').AsString = 'PJ' then
begin
PageControl1.Visible:= True;
PageControl2.Visible:= False;
SbInserirFoto.Enabled:= False;
FrmClientes.Caption:= 'Clientes Pessoa Jurídica'+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end else

end;

procedure TFrmClientes.DBDateEdit_DCEExit(Sender: TObject);
begin
DBDateEdit_DCE.Visible:= False;
DBDateEdit_DCE.TabOrder:= 22;
DBEdit24.TabOrder:= 1;
end;

procedure TFrmClientes.DBEdit24Enter(Sender: TObject);
begin
DBDateEdit_DCE.Visible:= True;
DBDateEdit_DCE.TabOrder:= 1;
DBEdit24.TabOrder:= 22;
DBDateEdit_DCE.SetFocus;
end;

procedure TFrmClientes.PageControl2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
AllowChange:=(not Dm.IBDS_CLIENTES.IsEmpty) and (not (Dm.IBDS_CLIENTES.state=dsinsert));
end;

procedure TFrmClientes.PageControl2Change(Sender: TObject);
begin
case PageControl2.TabIndex of
    0: begin

    end;
    1: begin
    if DataSource1.State = dsEdit then
    begin
    PageControl1.ActivePageIndex:= 0;
    ShowMessage('É preciso salvar ou cancelar a edição no cadastro do cliente titular.');
    SbSalvar.SetFocus;
    Exit;
    end else
        // SELECIONA OS DEPENDENTES
 Screen.Cursor := crHourGlass;
 IBQuery_Dependentes.Close;
 IBQuery_Dependentes.SQL.Clear;
 IBQuery_Dependentes.SQL.Add('select * from DEPENDE ');
 IBQuery_Dependentes.SQL.Add('where CODIGO = :Cod ');
 IBQuery_Dependentes.ParamByName('Cod').AsString:= Dm.IBDS_CLIENTESCODIGO.AsString;
 IBQuery_Dependentes.SQL.Add('order by COD_DEPE');
 IBQuery_Dependentes.Prepare;
 IBQuery_Dependentes.Open;
  Screen.Cursor := crDefault;
    if IBQuery_DependentesCOD_DEPE.AsString = '' then
    begin
    DBGrid_Dependentes_PF.Visible:= False;
    BtnDep_Novo_PF.Caption:= 'Novo';
    BtnDep_Salvar_PF.Visible:= True;
    BtnDep_Excluir_PF.Visible:= True;
    BtnDep_Cancelar_PF.Visible:= True;
    BtnDep_Anterior_PF.Visible:= True;
    BtnDep_Proximo_PF.Visible:= True;
    BtnDep_Voltar_PF.Visible:= True;
  // SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
  BtnDep_Novo_PF.SetFocus;
    Exit;
    end else
    DBGrid_Dependentes_PF.Visible:= True;
    DBGrid_Dependentes_PF.Height:= 212;
    DBGrid_Dependentes_PF.Top:= 72;
    DBGrid_Dependentes_PF.Left:= 8;
    BtnDep_Novo_PF.Caption:= 'Alterar';
    BtnDep_Salvar_PF.Visible:= False;
    BtnDep_Excluir_PF.Visible:= False;
    BtnDep_Cancelar_PF.Visible:= False;
    BtnDep_Anterior_PF.Visible:= False;
    BtnDep_Proximo_PF.Visible:= False;
    BtnDep_Voltar_PF.Visible:= False;
    BtnDep_Novo_PF.SetFocus;
    end;
    2: begin
    Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_HistParcelas.Close;
 IBQuery_HistParcelas.SQL.Clear;
 IBQuery_HistParcelas.SQL.Add('select * from CARNE ');
 IBQuery_HistParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_HistParcelas.ParamByName('Cod').AsString:= Dm.IBDS_CLIENTESCODIGO.asString;
 IBQuery_HistParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_HistParcelas.Prepare;
 IBQuery_HistParcelas.Open;
Screen.Cursor := crDefault;
    end;
end;
end;

procedure TFrmClientes.DBEdit16Exit(Sender: TObject);
begin
if DataSource2.State = dsInsert then
begin
if IBQuery_Dependentes.Locate('NOME_DEPENDENTE', DBEdit16.Text, []) then
begin
if MessageBox(0,'O dependente informado já existe. Deseja continuar?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
DBEdit18.SetFocus;
Exit;
end else
Dm.IBDS_DEPENDE.FieldByName('NOME_DEPENDENTE').AsString:= '';
DBEdit16.SetFocus;
end;
end;
end;

procedure TFrmClientes.DBGrid_Hist_Parcelas_PFDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
(*destaca campo SITUAÇÃO*)
   if Column.Field = IBQuery_HistParcelasDATA_VENCIMENTO then
     if (IBQuery_HistParcelasDATA_VENCIMENTO.AsCurrency < Data) and (IBQuery_HistParcelasDATA_PAGAMENTO.AsString <> '') then
     begin
       DBGrid_Hist_Parcelas_PF.Canvas.Font.Style:= DBGrid_Hist_Parcelas_PF.Canvas.Font.Style + [fsBold];
       DBGrid_Hist_Parcelas_PF.Canvas.Font.Color:= clBlue;
       DBGrid_Hist_Parcelas_PF.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
       end else
            if (IBQuery_HistParcelasDATA_VENCIMENTO.AsCurrency < Data) and (IBQuery_HistParcelasDATA_PAGAMENTO.IsNull) then
     begin
       DBGrid_Hist_Parcelas_PF.Canvas.Font.Style:= DBGrid_Hist_Parcelas_PF.Canvas.Font.Style + [fsBold];
       DBGrid_Hist_Parcelas_PF.Canvas.Font.Color:= clRed;
       DBGrid_Hist_Parcelas_PF.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
     end;
end;

procedure TFrmClientes.DBEdit20Exit(Sender: TObject);
begin
if DataSource1.State = dsInsert then
begin
Dm.IBDS_CLIENTES.FieldByName('CIDADE').asString:= Dm.IBDS_EMPRESA.FieldByName('CIDADE').asString;
end;
end;

procedure TFrmClientes.DBEdit21Exit(Sender: TObject);
var
a, b, c: String;
begin
Dm.IBDS_CLIENTES.Edit;
if DBEdit21.Text = '' then
begin
DBEdit22.Text:= '';
DBEdit23.Text:= '';
Dm.IBDS_CLIENTES.FieldByName('UF').asString:= '';
Exit;
end else
IBQuery_CEP.SQL.Clear;
a:='Select * from CEPS ';
b:='Where NOME_CID Like:Consulta ';
c:='Order By NOME_CID';
IBQuery_CEP.SQL.Add(a+b+c);
IBQuery_CEP.Params[0].AsString;
IBQuery_CEP.ParamByName('Consulta').AsString:=DBEdit21.Text+'%';
IBQuery_CEP.Close;
IBQuery_CEP.Open;
Dm.IBDS_CLIENTES.FieldByName('CEP').asString:= IBQuery_CEPCEP_CID.AsString;
Dm.IBDS_CLIENTES.FieldByName('ESTADO').asString:= IBQuery_CEPESTADO.AsString;
Dm.IBDS_CLIENTES.FieldByName('UF').asString:= IBQuery_CEPUF.AsString;
end;

procedure TFrmClientes.DBComboBox13Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('PAGAMENTO_MENSAL').AsString:= DBComboBox13.Text;
end;

procedure TFrmClientes.DBComboBox10Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('DIA_VENCIMENTO').AsString:= DBComboBox10.Text;
end;

procedure TFrmClientes.DBComboBox14Click(Sender: TObject);
begin
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('MODELOS').AsString:= DBComboBox14.Text;
end;

procedure TFrmClientes.DBComboBox16Click(Sender: TObject);
begin
Dm.IBDS_PROMOTOR.Locate('APELIDO_PROMOTOR', DBComboBox16.Text, []);
Dm.IBDS_CLIENTES.Edit;
Dm.IBDS_CLIENTES.FieldByName('CODIGO_P').AsString:= Dm.IBDS_PROMOTOR.FieldByName('CODIGO_P').AsString;
end;

procedure TFrmClientes.DBMemo1Enter(Sender: TObject);
begin
FrmClientes.KeyPreview:= False;
end;

procedure TFrmClientes.DBMemo1Exit(Sender: TObject);
begin
FrmClientes.KeyPreview:= True;
end;

procedure TFrmClientes.BtnDep_Novo_PFClick(Sender: TObject);
begin
if BtnDep_Novo_PF.Caption = 'Novo' then
begin
DBGrid_Dependentes_PF.Visible:= False;
 IBQuery_Dependentes.Close;
 IBQuery_Dependentes.SQL.Clear;
 IBQuery_Dependentes.SQL.Add('select * from DEPENDE ');
 IBQuery_Dependentes.SQL.Add('order by COD_DEPE');
 IBQuery_Dependentes.Prepare;
 IBQuery_Dependentes.Open;
Novo_CadDep:= '1';
Dm.IBDS_DEPENDE.Last;
Dm.IBDS_DEPENDE.Append;
//Dm.IBDS_DEPENDE.FieldByName('COD_DEPE').asString:=FrmPrincipal.RetZero(Dm.IBDS_DEPENDECOD_DEPE.asString, 4);
Dm.IBDS_DEPENDE.FieldByName('CODIGO').asString:= Dm.IBDS_CLIENTESCODIGO.asString;
DBEdit16.SetFocus;
Exit;
end else
if BtnDep_Novo_PF.Caption = 'Alterar' then
begin
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
 Screen.Cursor := crDefault;

 Dm.IBDS_DEPENDE.Locate('COD_DEPE', CODIGO_DEP, []);

    DBGrid_Dependentes_PF.Visible:= False;
    BtnDep_Novo_PF.Caption:= 'Novo';
    BtnDep_Salvar_PF.Visible:= True;
    BtnDep_Excluir_PF.Visible:= True;
    BtnDep_Cancelar_PF.Visible:= True;
    BtnDep_Anterior_PF.Visible:= True;
    BtnDep_Proximo_PF.Visible:= True;
    BtnDep_Voltar_PF.Visible:= False;
BtnDep_Voltar_PF.Visible:= True;
BtnDep_Novo_PF.SetFocus;
end;
end;

procedure TFrmClientes.BtnDep_Salvar_PFClick(Sender: TObject);
begin
IBQuery_Dependentes.Close;
 IBQuery_Dependentes.SQL.Clear;
 IBQuery_Dependentes.SQL.Add('select * from DEPENDE ');
 IBQuery_Dependentes.SQL.Add('order by COD_DEPE');
 IBQuery_Dependentes.Prepare;
 IBQuery_Dependentes.Open;
if DBEdit15.Text = '' then
begin
ShowMessage('Preencha o campo "'+LabeL27.Caption+'"');
PageControl2.ActivePageIndex:= 2;
DBEdit16.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if DataSource1.State = dsInsert then
begin
if not IBQuery_Dependentes.Locate('COD_DEPE', Dm.IBDS_DEPENDE.FieldByName('COD_DEPE').Value, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_DEPENDE.Post;
Dm.IBDS_DEPENDE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
BtnDep_Novo_PF.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o código: "'+Dm.IBDS_DEPENDE.FieldByName('COD_DEPE').AsString+'" já está lançado, informe outro.');
PageControl2.ActivePageIndex:=1;
Dm.IBDS_DEPENDE.Edit;
Screen.Cursor := crDefault;
BtnDep_Cancelar_PF.SetFocus;
Exit;
end else
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_DEPENDE.Post;
Dm.IBDS_DEPENDE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
BtnDep_Novo_PF.SetFocus;
end;

procedure TFrmClientes.BtnDep_Excluir_PFClick(Sender: TObject);
begin
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
  Dm.IBDS_DEPENDE.Locate('COD_DEPE', CODIGO_DEP, []);
if MessageBox(0,'Você tem certeza que deseja excluir este dependente?'
+#10+#10+'ATENÇÃO: A remoção deste cadastro implicará na exclusão deste dependente.'
+#10+#10+'"SIM" para excluir.'
+#10+'"Não" para cancelar.','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_DEPENDE.Delete;
Dm.IBDS_DEPENDE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource3StateChange(FrmClientes);
end;
end;

procedure TFrmClientes.BtnDep_Cancelar_PFClick(Sender: TObject);
begin
if Novo_CadDep <> '1' then
begin
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
BtnDep_Novo_PF.SetFocus;
DBGrid_Dependentes_PF.Visible:= False;
Exit;
end;
end else
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste novo cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
BtnDep_Novo_PF.SetFocus;
DBGrid_Dependentes_PF.Visible:= False;
end;
end;

procedure TFrmClientes.BtnDep_Anterior_PFClick(Sender: TObject);
begin
if Dm.IBDS_CLIENTESCODIGO.asString <> DBText2.Caption then
begin
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
  end else
Dm.IBDS_DEPENDE.Prior;
DataSource3StateChange(FrmClientes);
end;

procedure TFrmClientes.BtnDep_Proximo_PFClick(Sender: TObject);
begin
if Dm.IBDS_CLIENTESCODIGO.asString <> DBText15.Caption then
begin
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;
  end else
Dm.IBDS_DEPENDE.Next;
DataSource3StateChange(FrmClientes);
end;

procedure TFrmClientes.BtnDep_Voltar_PFClick(Sender: TObject);
begin
if (DataSource2.State = dsInsert) or (DataSource2.State = dsEdit) then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
DBGrid_Dependentes_PF.Visible:= True;
DBGrid_Dependentes_PF.Height:= 212;
    DBGrid_Dependentes_PF.Top:= 72;
    DBGrid_Dependentes_PF.Left:= 8;
    BtnDep_Novo_PF.Caption:= 'Alterar';
    BtnDep_Salvar_PF.Visible:= False;
    BtnDep_Excluir_PF.Visible:= False;
    BtnDep_Cancelar_PF.Visible:= False;
    BtnDep_Anterior_PF.Visible:= False;
    BtnDep_Proximo_PF.Visible:= False;
    // SELECIONA OS DEPENDENTES
 Screen.Cursor := crHourGlass;
 IBQuery_Dependentes.Close;
 IBQuery_Dependentes.SQL.Clear;
 IBQuery_Dependentes.SQL.Add('select * from DEPENDE ');
 IBQuery_Dependentes.SQL.Add('where CODIGO = :Cod ');
 IBQuery_Dependentes.ParamByName('Cod').AsString:= Dm.IBDS_CLIENTESCODIGO.AsString;
 IBQuery_Dependentes.SQL.Add('order by COD_DEPE');
 IBQuery_Dependentes.Prepare;
 IBQuery_Dependentes.Open;
  Screen.Cursor := crDefault;
BtnDep_Voltar_PF.Visible:= False;
  DBGrid_Dependentes_PF.SetFocus;
end;

procedure TFrmClientes.BtnDep_Sair_PFClick(Sender: TObject);
begin
if (DataSource2.State = dsInsert) or (DataSource2.State = dsEdit) then
begin
Dm.IBDS_DEPENDE.Cancel;
Dm.IBDS_DEPENDE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
PageControl2.ActivePageIndex:= 2;
end;

procedure TFrmClientes.BtnDep_NovoClick(Sender: TObject);
begin
if BtnDep_Novo.Caption = 'Novo' then
begin
DBGrid_Dependentes.Visible:= False;
 IBQuery_Dependentes.Close;
 IBQuery_Dependentes.SQL.Clear;
 IBQuery_Dependentes.SQL.Add('select * from DEPENDE ');
 IBQuery_Dependentes.SQL.Add('order by COD_DEPE');
 IBQuery_Dependentes.Prepare;
 IBQuery_Dependentes.Open;
Novo_CadDep:= '1';
Dm.IBDS_DEPENDE.Last;
Dm.IBDS_DEPENDE.Append;
//Dm.IBDS_DEPENDE.FieldByName('COD_DEPE').asString:=FrmPrincipal.RetZero(Dm.IBDS_DEPENDECOD_DEPE.asString, 4);
Dm.IBDS_DEPENDE.FieldByName('CODIGO').asString:= Dm.IBDS_CLIENTESCODIGO.asString;
DBEdit15.SetFocus;
Exit;
end else
// SELECIONA OS DEPENDENTES para EDIÇÃO
 Screen.Cursor := crHourGlass;
 Dm.IBDS_DEPENDE.Close;
 Dm.IBDS_DEPENDE.SelectSQL.Clear;
 Dm.IBDS_DEPENDE.SelectSQL.Add('select * from DEPENDE ');
 Dm.IBDS_DEPENDE.SelectSQL.Add('where CODIGO = '+#39+Dm.IBDS_CLIENTESCODIGO.AsString+#39);
 Dm.IBDS_DEPENDE.SelectSQL.Add('order by COD_DEPE');
 Dm.IBDS_DEPENDE.Prepare;
 Dm.IBDS_DEPENDE.Open;
  Screen.Cursor := crDefault;

    DBGrid_Dependentes.Visible:= False;
    BtnDep_Novo.Caption:= 'Novo';
    BtnDep_Salvar.Visible:= True;
    BtnDep_Excluir.Visible:= True;
    BtnDep_Cancelar.Visible:= True;
    BtnDep_Anterior.Visible:= True;
    BtnDep_Proximo.Visible:= True;
    BtnDep_Voltar.Visible:= False;
BtnDep_Voltar.Visible:= True;
BtnDep_Novo.SetFocus;
end;

procedure TFrmClientes.DataSource3StateChange(Sender: TObject);
begin
BtnDep_Novo_PF.Enabled:= DataSource2.State in [dsBrowse];
BtnDep_Excluir_PF.Enabled:= (DataSource2.State in [dsBrowse]) and (Dm.IBDS_DEPENDE.RecordCount > 0);
BtnDep_Salvar_PF.Enabled:= DataSource2.State in [dsInsert,dsEdit];
BtnDep_Cancelar_PF.Enabled:= DataSource2.State in [dsInsert,dsEdit];
BtnDep_Anterior_PF.Enabled:= (DataSource2.State in [dsBrowse]) and ( NOT Dm.IBDS_DEPENDE.BOF);
BtnDep_Proximo_PF.Enabled:= (DataSource2.State in [dsBrowse]) and ( NOT Dm.IBDS_DEPENDE.EOF);
end;

procedure TFrmClientes.DBGrid_Dependentes_PFCellClick(Column: TColumn);
begin
CODIGO_DEP:= DBGrid_Dependentes_PF.Fields[1].text;
end;

procedure TFrmClientes.DBGrid_Dependentes_PFKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
CODIGO_DEP:= DBGrid_Dependentes_PF.Fields[1].text;
end;

procedure TFrmClientes.DBGrid_DependentesCellClick(Column: TColumn);
begin
if IBQuery_Dependentes.Active = False then
begin
Abort;
Exit;
end else
Dm.IBDS_DEPENDE.Locate('COD_DEPE', DBGrid_Dependentes.Fields[1].text, []);
end;

procedure TFrmClientes.DBGrid_DependentesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if IBQuery_Dependentes.Active = False then
begin
Abort;
Exit;
end else
Dm.IBDS_DEPENDE.Locate('COD_DEPE', DBGrid_Dependentes.Fields[1].text, []);
end;

end.
