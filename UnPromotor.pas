unit UnPromotor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, Mask, Grids, DBGrids,
  StdCtrls, DBCtrls, Buttons, ExtCtrls;

type
  TFrmPromotor = class(TForm)
    Panel1: TPanel;
    BtnExcluir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnSalvar: TBitBtn;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BtnAlterar: TBitBtn;
    Bevel2: TBevel;
    BtnFechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    IBQueryApelidoPRO: TIBQuery;
    Panel4: TPanel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    BtnAnterior: TBitBtn;
    BtnProximo: TBitBtn;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPromotor: TFrmPromotor;
  CODIGO_PRO, Novo_Cad: String;


implementation

uses UnDm, UnUsuarios, UnPrincipal;

{$R *.dfm}

procedure TFrmPromotor.BtnNovoClick(Sender: TObject);
begin
IBQueryApelidoPRO.Close;
IBQueryApelidoPRO.Open;
Novo_Cad:= '1';
Dm.IBDS_PROMOTOR.Last;
Dm.IBDS_PROMOTOR.Append;
CODIGO_PRO:=FrmPrincipal.RetZero(Dm.IBDS_PROMOTORCOD_PROM.asString, 3);
Dm.IBDS_PROMOTOR.FieldByName('CODIGO_P').asString:= CODIGO_PRO;
DBEdit1.SetFocus;
end;

procedure TFrmPromotor.BtnSalvarClick(Sender: TObject);
begin
IBQueryApelidoPRO.Close;
IBQueryApelidoPRO.Open;
if DBEdit2.Text = '' then
begin
ShowMessage('Preencha o campo "'+LabeL2.Caption+'"');
DBEdit2.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if DataSource1.State = dsInsert then
begin
if not IBQueryApelidoPRO.Locate('APELIDO_PROMOTOR ', DBEdit2.Text, []) then
begin
Dm.IBDS_PROMOTOR.FieldByName('USUARIO').AsString:= Usuario;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_PROMOTOR.Post;
Dm.IBDS_PROMOTOR.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
BtnNovo.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o apelido "'+DBEdit2.Text+'" já pertence a outro promotor, informe outro.');
Dm.IBDS_PROMOTOR.Edit;
Screen.Cursor := crDefault;
BtnCancelar.SetFocus;
Exit;
end else
Dm.IBDS_PROMOTOR.FieldByName('USUARIO').AsString:= Usuario;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_PROMOTOR.Post;
Dm.IBDS_PROMOTOR.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
BtnNovo.SetFocus;
end;

procedure TFrmPromotor.BtnExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Você tem certeza que deseja excluir este promotor?'
+#10+#10+'ATENÇÃO: A remoção deste cadastro implicará na exclusão deste promotor.'
+#10+#10+'"SIM" para excluir.'
+#10+'"Não" para cancelar.','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_PROMOTOR.Delete;
Dm.IBDS_PROMOTOR.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmPromotor);
end;


if MessageBox(0,'Deseja realmente excluir este cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
  begin
end
else
Dm.IBDS_PROMOTOR.Delete;
Dm.IBDS_PROMOTOR.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmUsuarios);
end;

procedure TFrmPromotor.BtnCancelarClick(Sender: TObject);
begin
Dm.IBDS_PROMOTOR.Cancel;
Dm.IBDS_PROMOTOR.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;

procedure TFrmPromotor.BtnAlterarClick(Sender: TObject);
begin
Dm.IBDS_PROMOTOR.Edit;
DBEdit1.SetFocus;
end;

procedure TFrmPromotor.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPromotor.DataSource1StateChange(Sender: TObject);
begin
 BtnNovo.Enabled           := DataSource1.State in [dsBrowse];
 BtnExcluir.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_PROMOTOR.RecordCount > 0);
 DBGrid1.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_PROMOTOR.RecordCount > 0);
 BtnAlterar.Enabled       := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_PROMOTOR.RecordCount > 0);
 BtnSalvar.Enabled          := DataSource1.State in [dsInsert,dsEdit];
 BtnCancelar.Enabled        := DataSource1.State in [dsInsert,dsEdit];
// SbPrimeiro.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ALUNOS.BOF);
BtnAnterior.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_PROMOTOR.BOF);
BtnProximo.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_PROMOTOR.EOF);
 // SbUltimo.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ALUNOS.EOF);
 end;

procedure TFrmPromotor.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;
end;

procedure TFrmPromotor.FormShow(Sender: TObject);
begin
FrmPromotor.Top:= 88;
FrmPromotor.Left:=181;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmPromotor.Caption:= FrmPromotor.Caption;
Exit;
end else
FrmPromotor.Caption:= FrmPromotor.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmPromotor.BtnAnteriorClick(Sender: TObject);
begin
Dm.IBDS_PROMOTOR.Prior;
DataSource1StateChange(FrmPromotor);
end;

procedure TFrmPromotor.BtnProximoClick(Sender: TObject);
begin
Dm.IBDS_PROMOTOR.Next;
DataSource1StateChange(FrmPromotor);
end;

procedure TFrmPromotor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
