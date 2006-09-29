unit UnCarne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, ExtDlgs, DBCtrls, Jpeg, Mask, ComCtrls;

type
  TFrmCarne = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    DS_CarneALUNOS: TDataSource;
    IBQuery_CarneClientes: TIBQuery;
    DS_CarneParcelas: TDataSource;
    IBQuery_CarneParcelas: TIBQuery;
    Label11: TLabel;
    Label10: TLabel;
    DBGrid_GC_Parcelas: TDBGrid;
    DBGrid_GC_Alunos: TDBGrid;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Btn_Gerar: TBitBtn;
    CheckBox_Data: TCheckBox;
    CheckBox_Valor: TCheckBox;
    Btn_Selecionar: TBitBtn;
    BtnFechar: TBitBtn;
    UpDown1: TUpDown;
    CheckBox_Selecionado: TCheckBox;
    MEdit_CodigoCli: TMaskEdit;
    MEdit_Data: TMaskEdit;
    MEdit_Valor: TMaskEdit;
    MEdit_Fracao: TMaskEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Btn_ImprimirCarne: TBitBtn;
    MEdit_ContratoCli: TMaskEdit;
    MEdit_NomeCli: TMaskEdit;
    IBQuery_CarneClientesCOD_PLAN: TIntegerField;
    IBQuery_CarneClientesCONTRATO: TIntegerField;
    IBQuery_CarneClientesDATA_CONTRATO: TDateTimeField;
    IBQuery_CarneClientesNOME_CLIENTE: TIBStringField;
    IBQuery_CarneClientesCODIGO: TIBStringField;
    IBQuery_CarneClientesRG: TIBStringField;
    IBQuery_CarneClientesTE: TIBStringField;
    IBQuery_CarneClientesENDERECO: TIBStringField;
    IBQuery_CarneClientesBAIRRO: TIBStringField;
    IBQuery_CarneClientesCIDADE: TIBStringField;
    IBQuery_CarneClientesCEP: TIBStringField;
    IBQuery_CarneClientesESTADO: TIBStringField;
    IBQuery_CarneClientesUF: TIBStringField;
    IBQuery_CarneClientesPAGAMENTO_MENSAL: TIBStringField;
    IBQuery_CarneClientesDIA_VENCIMENTO: TIBStringField;
    IBQuery_CarneClientesMODELOS: TIBStringField;
    IBQuery_CarneClientesAPELIDO_PROMOTOR: TIBStringField;
    IBQuery_CarneClientesCODIGO_P: TIBStringField;
    IBQuery_CarneClientesTAXA_ADMIN: TIBBCDField;
    IBQuery_CarneClientesVALOR_MENSAL: TIBBCDField;
    IBQuery_CarneParcelasCOD_CARN: TIntegerField;
    IBQuery_CarneParcelasNUMERO_DOC: TIBStringField;
    IBQuery_CarneParcelasCONTRATO: TIntegerField;
    IBQuery_CarneParcelasDATA_CONTRATO: TDateTimeField;
    IBQuery_CarneParcelasNOME_CLIENTE: TIBStringField;
    IBQuery_CarneParcelasCODIGO: TIBStringField;
    IBQuery_CarneParcelasRG: TIBStringField;
    IBQuery_CarneParcelasTE: TIBStringField;
    IBQuery_CarneParcelasENDERECO: TIBStringField;
    IBQuery_CarneParcelasBAIRRO: TIBStringField;
    IBQuery_CarneParcelasCIDADE: TIBStringField;
    IBQuery_CarneParcelasCEP: TIBStringField;
    IBQuery_CarneParcelasESTADO: TIBStringField;
    IBQuery_CarneParcelasUF: TIBStringField;
    IBQuery_CarneParcelasNUMERO_PARCELA: TIBStringField;
    IBQuery_CarneParcelasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_CarneParcelasVALOR_MENSAL: TIBBCDField;
    IBQuery_CarneParcelasDATA_PAGAMENTO: TDateTimeField;
    IBQuery_CarneParcelasVALOR_PAGO: TIBBCDField;
    IBQuery_CarneParcelasOBS: TIBStringField;
    IBQuery_CarneParcelasMES_REFERENCIA: TIBStringField;
    IBQuery_CarneParcelasSITUACAO: TIBStringField;
    IBQuery_CarneParcelasANO_BASE: TIBStringField;
    IBQuery_CarneParcelasUSUARIO: TIBStringField;
    IBQuery_CarneParcelasPAGAMENTO_MENSAL: TIBStringField;
    IBQuery_CarneParcelasDIA_VENCIMENTO: TIBStringField;
    IBQuery_CarneParcelasMODELOS: TIBStringField;
    IBQuery_CarneClientesCPF: TIBStringField;
    IBQuery_CarneParcelasCPF: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_AlunosDblClick(Sender: TObject);
    procedure DBGrid_AlunosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_ParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Btn_MenuFecharClick(Sender: TObject);

    procedure DBGrid_GC_AlunosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_GC_AlunosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_GC_ParcelasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid_GC_AlunosDblClick(Sender: TObject);
    procedure Btn_SelecionarClick(Sender: TObject);
    procedure MEdit_CodigoCliExit(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure MEdit_CodigoCliKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_GerarClick(Sender: TObject);
    procedure MEdit_DataExit(Sender: TObject);
    procedure MEdit_ValorExit(Sender: TObject);
    procedure MEdit_FracaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_GC_AlunosCellClick(Column: TColumn);
    procedure Btn_ImprimirCarneClick(Sender: TObject);
    procedure MEdit_ContratoCliExit(Sender: TObject);
    procedure MEdit_FracaoExit(Sender: TObject);
    procedure MEdit_NomeCliExit(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaGeraGarne;
  public
    { Public declarations }
    function AjustaData(d,m,y: Integer): TDateTime;
  end;

var
  FrmCarne: TFrmCarne;
  Tipo, NumeroDeParcelas, Mensalidades: Integer;
  DataVencCarne: TDateTime;
  Mat, Doc: String;

implementation

uses UnDm, UnPrincipal, UnFrmDataGeral, UnLocalizar, UnRelCarne,
  UnClientes;

{$R *.dfm}

procedure TFrmCarne.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmCarne.FormShow(Sender: TObject);
begin
FrmCarne.Top:=0;
FrmCarne.Left:=0;
IBQuery_CarneClientes.Close;
IBQuery_CarneClientes.Open;
IBQuery_CarnePARCELAS.Close;
IBQuery_CarnePARCELAS.Open;
VerificaGeraGarne;
MEdit_CodigoCli.SetFocus;
end;

procedure TFrmCarne.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCarne.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmCarne.DBGrid_AlunosDblClick(Sender: TObject);
begin
  Close;
FrmClientes:= TFrmClientes.Create(Application);
try
  FrmClientes.ShowModal;
finally
  FrmClientes.Free;
end;
end;

procedure TFrmCarne.DBGrid_AlunosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_CarneClientes.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_GC_Alunos.Canvas.Brush.Color:= clMoneyGreen;
DBGrid_GC_Alunos.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_GC_Alunos.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCarne.DBGrid_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_CarneParcelas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_GC_Parcelas.Canvas.Brush.Color:= clSkyBlue;
DBGrid_GC_Parcelas.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_GC_Parcelas.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCarne.Btn_MenuFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCarne.DBGrid_GC_AlunosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_CarneClientes.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_GC_Alunos.Canvas.Brush.Color:= clMoneyGreen;
DBGrid_GC_Alunos.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_GC_Alunos.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCarne.DBGrid_GC_AlunosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_CLIENTES.Locate('CODIGO',IBQuery_CarneClientesCODIGO.AsString, []);
Screen.Cursor := crHourGlass;
 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_CarneParcelas.ParamByName('Cod').AsString:= IBQuery_CarneClientesCODIGO.AsString;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
end;

procedure TFrmCarne.DBGrid_GC_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_CarneParcelas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_GC_Parcelas.Canvas.Brush.Color:= clSkyBlue;
DBGrid_GC_Parcelas.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_GC_Parcelas.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCarne.DBGrid_GC_AlunosDblClick(Sender: TObject);
begin
  Close;
FrmClientes:= TFrmClientes.Create(Application);
try
  FrmClientes.ShowModal;
finally
  FrmClientes.Free;
end;
end;

procedure TFrmCarne.Btn_SelecionarClick(Sender: TObject);
begin
if (MEdit_CodigoCli.Text = '') and (MEdit_ContratoCli.Text = '') and (MEdit_NomeCli.Text = '') then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CarneClientes.Close;
 IBQuery_CarneClientes.SQL.Clear;
 IBQuery_CarneClientes.SQL.Add('select * from PLANOS ');
 IBQuery_CarneClientes.SQL.Add('order by NOME_CLIENTE');
 IBQuery_CarneClientes.Prepare;
 IBQuery_CarneClientes.Open;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_CarneParcelas.ParamByName('Cod').AsString:= IBQuery_CarneClientesCODIGO.AsString;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
Exit;
end else
if (MEdit_CodigoCli.Text = '') and (MEdit_ContratoCli.Text <> '') and (MEdit_NomeCli.Text = '') then
begin
if MEdit_ContratoCli.Text = '' then
begin
MEdit_ContratoCli.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
 IBQuery_CarneClientes.Close;
 IBQuery_CarneClientes.SQL.Clear;
 IBQuery_CarneClientes.SQL.Add('select * from PLANOS ');
 IBQuery_CarneClientes.SQL.Add('where CONTRATO = :Cli ');
 IBQuery_CarneClientes.ParamByName('Cli').AsString:= MEdit_ContratoCli.Text;
 IBQuery_CarneClientes.SQL.Add('order by NOME_CLIENTE');
 IBQuery_CarneClientes.Prepare;
 IBQuery_CarneClientes.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
Exit;
end else
if (MEdit_CodigoCli.Text = '') and (MEdit_ContratoCli.Text = '') and (MEdit_NomeCli.Text <> '') then
begin
if MEdit_NomeCli.Text = '' then
begin
MEdit_NomeCli.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
 IBQuery_CarneClientes.Close;
 IBQuery_CarneClientes.SQL.Clear;
 IBQuery_CarneClientes.SQL.Add('select * from PLANOS ');
 IBQuery_CarneClientes.SQL.Add('where NOME_CLIENTE = :Cli ');
 IBQuery_CarneClientes.ParamByName('Cli').AsString:= MEdit_NomeCli.Text;
 IBQuery_CarneClientes.SQL.Add('order by NOME_CLIENTE');
 IBQuery_CarneClientes.Prepare;
 IBQuery_CarneClientes.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
Exit;
end else
if (MEdit_CodigoCli.Text <> '') and (MEdit_ContratoCli.Text = '') then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CarneClientes.Close;
 IBQuery_CarneClientes.SQL.Clear;
 IBQuery_CarneClientes.SQL.Add('select * from PLANOS ');
 IBQuery_CarneClientes.SQL.Add('where CODIGO = :Cod ');
 IBQuery_CarneClientes.ParamByName('Cod').AsString:= MEdit_CodigoCli.Text;
 IBQuery_CarneClientes.SQL.Add('order by NOME_CLIENTE');
 IBQuery_CarneClientes.Prepare;
 IBQuery_CarneClientes.Open;
Screen.Cursor := crDefault;
MEdit_CodigoCli.Text:= '';
VerificaGeraGarne;
end;
end;

procedure TFrmCarne.MEdit_CodigoCliExit(Sender: TObject);
begin
if MEdit_CodigoCli.Text = '' then
begin
MEdit_ContratoCli.SetFocus;
Exit;
end else
MEdit_CodigoCli.Text:= FrmPrincipal.RetZero(MEdit_CodigoCli.Text, 4);
MEdit_ContratoCli.Text:= '';
MEdit_NomeCli.Text:= '';
Btn_Selecionar.SetFocus;
end;


procedure TFrmCarne.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCarne.MEdit_CodigoCliKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCarne.VerificaGeraGarne;
begin
if DBGrid_GC_Alunos.Fields[0].Text = '' then
begin
DBGrid_GC_Alunos.Enabled:= False;
DBGrid_GC_Parcelas.Enabled:= False;
BtnFechar.SetFocus;
Exit;
end else
DBGrid_GC_Alunos.Enabled:= True;
DBGrid_GC_Parcelas.Enabled:= True;
DBGrid_GC_Alunos.SetFocus;
//if DBGrid_GC_Parcelas.Fields[0].Text = '' then
//if (DBGrid_GC_Parcelas.Fields[0].Text = '') and (StrToInt(IBQuery_CarneParcelasANO_BASE.AsString) < StrToInt(AnoBase)) then
if not IBQuery_CarneParcelas.Locate('ANO_BASE', AnoBase, []) then
begin
Btn_Gerar.Caption:= 'Gerar Carnê';
Btn_ImprimirCarne.Enabled:= False;
Exit;
end else
Btn_Gerar.Caption:= 'Apagar Carnê';
Btn_ImprimirCarne.Enabled:= True;
end;

procedure TFrmCarne.Btn_GerarClick(Sender: TObject);
var
i: Integer;
begin
Dm.IBDS_CARNE.Close;
Dm.IBDS_CARNE.Open;
if CheckBox_Data.Checked = True then
begin
if MEdit_Data.Text = '  /  /    ' then
begin
MEdit_Data.SetFocus;
Exit;
end else
end;
if CheckBox_Selecionado.Checked = False then
begin
IBQuery_CarneClientes.First;
if not IBQuery_CarneClientes.Eof then
repeat
{ seus comandos para a tabela }
if Dm.IBDS_CARNE.Locate('CODIGO', IBQuery_CarneClientesCODIGO.AsString, []) then
begin
// APAGA AS PARCELAS DO CARNÊ
IBQuery_CarneParcelas.Close;
IBQuery_CarneParcelas.SQL.Clear;
IBQuery_CarneParcelas.SQL.Add('Delete from CARNE ');
IBQuery_CarneParcelas.SQL.Add('where CODIGO =:Cod and ANO_BASE =:AB');
IBQuery_CarneParcelas.ParamByName('Cod').AsString:= IBQuery_CarneClientesCODIGO.AsString;
IBQuery_CarneParcelas.ParamByName('AB').AsString:= AnoBase;
IBQuery_CarneParcelas.ExecSQL;
end;
IBQuery_CarneClientes.Next;
until IBQuery_CarneClientes.Eof;
//=============================================================
// FINALIZA A EXCLUSÃO E INICIA A GERAÇÃO DE CARNÊ PARA TODOS//
//=============================================================
IBQuery_CarneClientes.First;
if not IBQuery_CarneClientes.Eof then
repeat
{ seus comandos para a tabela }
if not Dm.IBDS_CARNE.Locate('CODIGO; ANO_BASE', VarArrayOf ([IBQuery_CarneClientesCODIGO.AsString, AnoBase]), []) then
begin
// GERA AS PARCELAS DO CARNÊ
NumeroDeParcelas:= StrToInt(MEdit_Fracao.Text);
Mensalidades:= NumeroDeParcelas;
for i:=1 to NumeroDeParcelas * 1  do begin
NumeroDeParcelas:=(i);
repeat
Dm.IBDS_CARNE.Append;
Dm.IBDS_CARNE.FieldByName('USUARIO').AsString:= Usuario;
Dm.IBDS_CARNENOME_CLIENTE.AsString:= IBQuery_CarneClientesNOME_CLIENTE.AsString;
Dm.IBDS_CARNECODIGO.AsString:= IBQuery_CarneClientesCODIGO.AsString;
Dm.IBDS_CARNECONTRATO.AsString:= IBQuery_CarneClientesCONTRATO.AsString;
Dm.IBDS_CARNEDATA_CONTRATO.AsString:= IBQuery_CarneClientesDATA_CONTRATO.AsString;
Dm.IBDS_CARNERG.AsString:= IBQuery_CarneClientesRG.AsString;
Dm.IBDS_CARNECPF.AsString:= IBQuery_CarneClientesCPF.AsString;
Dm.IBDS_CARNETE.AsString:= IBQuery_CarneClientesTE.AsString;
Dm.IBDS_CARNEENDERECO.AsString:= IBQuery_CarneClientesENDERECO.AsString;
Dm.IBDS_CARNEBAIRRO.AsString:= IBQuery_CarneClientesBAIRRO.AsString;
Dm.IBDS_CARNECIDADE.AsString:= IBQuery_CarneClientesCIDADE.AsString;
Dm.IBDS_CARNECEP.AsString:= IBQuery_CarneClientesCEP.AsString;
Dm.IBDS_CARNEESTADO.AsString:= IBQuery_CarneClientesESTADO.AsString;
Dm.IBDS_CARNEUF.AsString:=IBQuery_CarneClientesUF.AsString;
Dm.IBDS_CARNENUMERO_PARCELA.AsString:= IntToStr((i))+'/'+IntToStr(Mensalidades);
if CheckBox_Valor.Checked = True then
begin
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= StrToFloat(MEdit_Valor.Text);
end else
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= IBQuery_CarneClientesVALOR_MENSAL.AsFloat;
DecodeDate (Data, Ano, Mes, Dia);
Dia:= StrToInt(IBQuery_CarneClientesDIA_VENCIMENTO.AsString);
Mes:= Mes;
Ano:= Ano;
if CheckBox_Data.Checked = True then
begin
DataVencCarne:= StrToDate(MEdit_Data.Text);
end else
DataVencCarne:= AjustaData(Dia,Mes,Ano);
Dm.IBDS_CARNEDATA_VENCIMENTO.AsDateTime:= IncMonth(DataVencCarne,(i)-1);
Dm.IBDS_CARNEMES_REFERENCIA.AsString:= Uppercase(FormatDateTime('mmmm/yyyy',StrtoDate(Dm.IBDS_CARNEDATA_VENCIMENTO.AsString)));
Doc:= IBQuery_CarneClientesCODIGO.AsString+IBQuery_CarneClientesCONTRATO.AsString+FrmPrincipal.RetZero(IntToStr((i)), 2);
Doc:= FrmPrincipal.RetZero(Doc, 10);
Dm.IBDS_CARNENUMERO_DOC.AsString:= Doc;
Dm.IBDS_CARNE.FieldByName('VALOR_PAGO').AsFloat:= 0;
Dm.IBDS_CARNESITUACAO.AsString:= 'A';
Dm.IBDS_CARNEANO_BASE.AsString:= AnoBase;
Dm.IBDS_CARNEDIA_VENCIMENTO.AsString:= IBQuery_CarneClientesDIA_VENCIMENTO.AsString;
Dm.IBDS_CARNEMODELOS.AsString:= IBQuery_CarneClientesMODELOS.AsString;
Dm.IBDS_CARNEPAGAMENTO_MENSAL.AsString:= IBQuery_CarneClientesPAGAMENTO_MENSAL.AsString;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
until
i= NumeroDeParcelas;
end;
end;
IBQuery_CarneClientes.Next;
until IBQuery_CarneClientes.Eof;
IBQuery_CarneClientes.First;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_CarneParcelas.ParamByName('Cod').AsString:= IBQuery_CarneClientesCODIGO.AsString;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
Exit;
end else
if Dm.IBDS_CARNE.Locate('CODIGO', IBQuery_CarneClientesCODIGO.AsString, []) then
begin
// APAGA AS PARCELAS DO CARNÊ
IBQuery_CarneParcelas.Close;
IBQuery_CarneParcelas.SQL.Clear;
IBQuery_CarneParcelas.SQL.Add('Delete from CARNE ');
IBQuery_CarneParcelas.SQL.Add('where CODIGO =:Cod and ANO_BASE =:AB');
IBQuery_CarneParcelas.ParamByName('Cod').AsString:= IBQuery_CarneClientesCODIGO.AsString;
IBQuery_CarneParcelas.ParamByName('AB').AsString:= AnoBase;
IBQuery_CarneParcelas.ExecSQL;
end;
//=============================================================
// FINALIZA A EXCLUSÃO E INICIA A GERAÇÃO DE CARNÊ POR ALUNO //
//=============================================================
//if not Dm.IBDS_CARNE.Locate('CODIGO', IBQuery_CarneClientesCODIGO.AsString, []) then
if not Dm.IBDS_CARNE.Locate('CODIGO; ANO_BASE', VarArrayOf ([IBQuery_CarneClientesCODIGO.AsString, AnoBase]), []) then
begin
// GERA AS PARCELAS DO CARNÊ
NumeroDeParcelas:= StrToInt(MEdit_Fracao.Text);
Mensalidades:= NumeroDeParcelas;
for i:=1 to NumeroDeParcelas * 1  do begin
NumeroDeParcelas:=(i);
repeat
Dm.IBDS_CARNE.Append;
Dm.IBDS_CARNE.FieldByName('USUARIO').AsString:= Usuario;
Dm.IBDS_CARNENOME_CLIENTE.AsString:= IBQuery_CarneClientesNOME_CLIENTE.AsString;
Dm.IBDS_CARNECODIGO.AsString:= IBQuery_CarneClientesCODIGO.AsString;
Dm.IBDS_CARNECONTRATO.AsString:= IBQuery_CarneClientesCONTRATO.AsString;
Dm.IBDS_CARNEDATA_CONTRATO.AsString:= IBQuery_CarneClientesDATA_CONTRATO.AsString;
Dm.IBDS_CARNERG.AsString:= IBQuery_CarneClientesRG.AsString;
Dm.IBDS_CARNECPF.AsString:= IBQuery_CarneClientesCPF.AsString;
Dm.IBDS_CARNETE.AsString:= IBQuery_CarneClientesTE.AsString;
Dm.IBDS_CARNEENDERECO.AsString:= IBQuery_CarneClientesENDERECO.AsString;
Dm.IBDS_CARNEBAIRRO.AsString:= IBQuery_CarneClientesBAIRRO.AsString;
Dm.IBDS_CARNECIDADE.AsString:= IBQuery_CarneClientesCIDADE.AsString;
Dm.IBDS_CARNECEP.AsString:= IBQuery_CarneClientesCEP.AsString;
Dm.IBDS_CARNEESTADO.AsString:= IBQuery_CarneClientesESTADO.AsString;
Dm.IBDS_CARNEUF.AsString:=IBQuery_CarneClientesUF.AsString;
Dm.IBDS_CARNENUMERO_PARCELA.AsString:= IntToStr((i))+'/'+IntToStr(Mensalidades);
if CheckBox_Valor.Checked = True then
begin
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= StrToFloat(MEdit_Valor.Text);
end else
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= IBQuery_CarneClientesVALOR_MENSAL.AsFloat;
DecodeDate (Data, Ano, Mes, Dia);
Dia:= StrToInt(IBQuery_CarneClientesDIA_VENCIMENTO.AsString);
Mes:= Mes;
Ano:= Ano;
if CheckBox_Data.Checked = True then
begin
DataVencCarne:= StrToDate(MEdit_Data.Text);
end else
DataVencCarne:= AjustaData(Dia,Mes,Ano);
Dm.IBDS_CARNEDATA_VENCIMENTO.AsDateTime:= IncMonth(DataVencCarne,(i)-1);
Dm.IBDS_CARNEMES_REFERENCIA.AsString:= Uppercase(FormatDateTime('mmmm/yyyy',StrtoDate(Dm.IBDS_CARNEDATA_VENCIMENTO.AsString)));
Doc:= IBQuery_CarneClientesCODIGO.AsString+IBQuery_CarneClientesCONTRATO.AsString+FrmPrincipal.RetZero(IntToStr((i)), 2);
Doc:= FrmPrincipal.RetZero(Doc, 10);
Dm.IBDS_CARNENUMERO_DOC.AsString:= Doc;
Dm.IBDS_CARNE.FieldByName('VALOR_PAGO').AsFloat:= 0;
Dm.IBDS_CARNESITUACAO.AsString:= 'A';
Dm.IBDS_CARNEANO_BASE.AsString:= AnoBase;
Dm.IBDS_CARNEDIA_VENCIMENTO.AsString:= IBQuery_CarneClientesDIA_VENCIMENTO.AsString;
Dm.IBDS_CARNEMODELOS.AsString:= IBQuery_CarneClientesMODELOS.AsString;
Dm.IBDS_CARNEPAGAMENTO_MENSAL.AsString:= IBQuery_CarneClientesPAGAMENTO_MENSAL.AsString;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
until
i= NumeroDeParcelas;
end;
end;
 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_CarneParcelas.ParamByName('Cod').AsString:= IBQuery_CarneClientesCODIGO.AsString;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
end;

procedure TFrmCarne.MEdit_DataExit(Sender: TObject);
begin
if MEdit_Data.Text = '  /  /    ' then
begin
MEdit_Valor.SetFocus;
Exit;
end else
try
StrToDate(MEdit_Data.Text);
except
on EConvertError do begin
ShowMessage ('Data Inválida!');
MEdit_Data.Text:= '';
end;
end;
end;

procedure TFrmCarne.MEdit_ValorExit(Sender: TObject);
begin
if MEdit_Valor.Text = '' then
begin
MEdit_Valor.Text:= '0';
end else
MEdit_Valor.Text:= FormatFloat('###,###,##0.00', StrToFloat(MEdit_Valor.Text));
end;

procedure TFrmCarne.MEdit_FracaoKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCarne.DBGrid_GC_AlunosCellClick(Column: TColumn);
begin
Dm.IBDS_CLIENTES.Locate('CODIGO',IBQuery_CarneClientesCODIGO.AsString, []);
Screen.Cursor := crHourGlass;
 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where CODIGO = :Cod ');
 IBQuery_CarneParcelas.ParamByName('Cod').AsString:= IBQuery_CarneClientesCODIGO.AsString;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
end;

procedure TFrmCarne.Btn_ImprimirCarneClick(Sender: TObject);
begin
if FrmRelCarne <> Nil then Exit;
FrmRelCarne := TFrmRelCarne.Create(self);
FrmRelCarne.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCarne.QuickRep1.Preview;
FrmRelCarne.Free;
FrmRelCarne:= Nil;
end;

procedure TFrmCarne.MEdit_ContratoCliExit(Sender: TObject);
begin
MEdit_CodigoCli.Text:= '';
MEdit_NomeCli.Text:= '';
Btn_Selecionar.SetFocus;
end;

function TFrmCarne.AjustaData(d, m, y: Integer): TDateTime;
// Corrige a data ajustando o ultimo dia do mes
const
mj: array[1..12] of Integer=(31,28,31,30,31,30,31,31,30,31,30,31);
var
add: Integer;
begin
while(true) do
     begin
     y := y+(m-1) div 12;
     m := (m-1) mod 12 +1;
     if m <= 0 then
        begin
        Inc(m,12);
        Dec(y);
        end;
     if ((y mod 4 = 0) and ((y mod 100<>0) or (y mod 400=0))) and (m=2) then
        begin
        add :=1; //add one day in February
        end
     else
        begin
        add := 0;
        end;
     if (d > 0) and (d <=(mj[m]+add)) then
        begin
        break;
        end;
     if d > 0 then
        begin
        Dec(d,mj[m]+add); Inc(m);
        end
     else
        begin
        Inc(d,mj[m]+add); Dec(m);
        end;
     end;
Result:=EncodeDate(y,m,d);
end;

procedure TFrmCarne.MEdit_FracaoExit(Sender: TObject);
begin
if MEdit_Fracao.Text = '' then
begin
MEdit_Fracao.Text:= '1';
end;
end;

procedure TFrmCarne.MEdit_NomeCliExit(Sender: TObject);
begin
MEdit_CodigoCli.Text:= '';
MEdit_ContratoCli.Text:= '';
Btn_Selecionar.SetFocus;
end;

end.
