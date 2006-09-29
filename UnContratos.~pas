unit UnContratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery;

type
  TFrmContratos = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    DBGrid_Contratos: TDBGrid;
    BtnFechar: TBitBtn;
    DS_Contratos: TDataSource;
    DBGrid_Clientes: TDBGrid;
    DS_GeraContratos: TDataSource;
    Btn_Gerar: TBitBtn;
    IBQuery_Contratos: TIBQuery;
    IBQuery_ContratosAPELIDO_PROMOTOR: TIBStringField;
    IBQuery_ContratosCODIGO: TIBStringField;
    IBQuery_ContratosCODIGO_P: TIBStringField;
    IBQuery_ContratosMODELOS: TIBStringField;
    IBQuery_ContratosNOME_CLIENTE: TIBStringField;
    IBQuery_ContratosPAGAMENTO_MENSAL: TIBStringField;
    IBQuery_ContratosDIA_VENCIMENTO: TIBStringField;
    IBQuery_GeraContratos: TIBQuery;
    IBQuery_GeraContratosCOD_PLAN: TIntegerField;
    IBQuery_GeraContratosCONTRATO: TIntegerField;
    IBQuery_GeraContratosDATA_CONTRATO: TDateTimeField;
    IBQuery_GeraContratosNOME_CLIENTE: TIBStringField;
    IBQuery_GeraContratosCODIGO: TIBStringField;
    IBQuery_GeraContratosRG: TIBStringField;
    IBQuery_GeraContratosTE: TIBStringField;
    IBQuery_GeraContratosENDERECO: TIBStringField;
    IBQuery_GeraContratosBAIRRO: TIBStringField;
    IBQuery_GeraContratosCIDADE: TIBStringField;
    IBQuery_GeraContratosCEP: TIBStringField;
    IBQuery_GeraContratosESTADO: TIBStringField;
    IBQuery_GeraContratosUF: TIBStringField;
    IBQuery_GeraContratosPAGAMENTO_MENSAL: TIBStringField;
    IBQuery_GeraContratosDIA_VENCIMENTO: TIBStringField;
    IBQuery_GeraContratosMODELOS: TIBStringField;
    IBQuery_GeraContratosAPELIDO_PROMOTOR: TIBStringField;
    IBQuery_GeraContratosCODIGO_P: TIBStringField;
    IBQuery_GeraContratosTAXA_ADMIN: TIBBCDField;
    IBQuery_GeraContratosVALOR_MENSAL: TIBBCDField;
    IBQuery_ContratosBAIRRO: TIBStringField;
    IBQuery_ContratosCEP: TIBStringField;
    IBQuery_ContratosCIDADE: TIBStringField;
    IBQuery_ContratosENDERECO: TIBStringField;
    IBQuery_ContratosESTADO: TIBStringField;
    IBQuery_ContratosRG: TIBStringField;
    IBQuery_ContratosTE: TIBStringField;
    IBQuery_ContratosUF: TIBStringField;
    MEdit_Data: TMaskEdit;
    CheckBox_Data: TCheckBox;
    Btn_EstornarContrato: TBitBtn;
    IBQuery_EstornaContrato: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    MEdit_PagMen: TMaskEdit;
    MEdit_DiaVen: TMaskEdit;
    MEdit_Modelo: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox_GO: TCheckBox;
    Btn_Atualizar: TBitBtn;
    Bevel1: TBevel;
    Label33: TLabel;
    IBQuery_ContratosDATA_CADASTRO: TDateTimeField;
    Bevel2: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    BtnOk: TBitBtn;
    Edit1: TMaskEdit;
    Edit2: TMaskEdit;
    IBQuery_ContratosCPF: TIBStringField;
    IBQuery_GeraContratosCPF: TIBStringField;
    IBQuery_EstornaContratoCPF: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure DBGrid_ClientesDblClick(Sender: TObject);
    procedure DBGrid_ClientesCellClick(Column: TColumn);
    procedure DBGrid_ClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_ClientesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ContratosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_ContratosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Btn_GerarClick(Sender: TObject);
    procedure MEdit_DataExit(Sender: TObject);
    procedure Btn_EstornarContratoClick(Sender: TObject);
    procedure Btn_AtualizarClick(Sender: TObject);
    procedure MEdit_PagMenKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_DiaVenKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_ModeloKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnOkClick(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaGerar;
  end;

var
  FrmContratos: TFrmContratos;
  Planilha: Integer;

implementation

uses UnPrincipal, UnLocalizar, UnDm, UnClientes, UnFrmDataGeral;

{$R *.dfm}

procedure TFrmContratos.FormShow(Sender: TObject);
begin
FrmContratos.Top:=0;
FrmContratos.Left:=0;
Dm.IBDS_PLANOS.Close;
Dm.IBDS_PLANOS.Open;

Screen.Cursor := crHourGlass;
// SELECIONA OS CLIENTES PARA GERAR CONTRATOS
 IBQuery_Contratos.Close;
 IBQuery_Contratos.SQL.Clear;
 IBQuery_Contratos.SQL.Add('select APELIDO_PROMOTOR, BAIRRO, CEP, CIDADE, CODIGO, CODIGO_P, CPF, DIA_VENCIMENTO, ENDERECO, ESTADO, MODELOS, NOME_CLIENTE, PAGAMENTO_MENSAL, RG, TE, UF, DATA_CADASTRO from CLIENTES C ');
 IBQuery_Contratos.SQL.Add('where not exists ( select * from PLANOS where CODIGO = C.CODIGO) ');
 IBQuery_Contratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_Contratos.Prepare;
 IBQuery_Contratos.Open;
Screen.Cursor := crDefault;
AtualizaGerar;
end;

procedure TFrmContratos.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmContratos.DBGrid_ClientesDblClick(Sender: TObject);
begin
  Close;
FrmClientes:= TFrmClientes.Create(Application);
try
  FrmClientes.ShowModal;
finally
  FrmClientes.Free;
end;
end;

procedure TFrmContratos.DBGrid_ClientesCellClick(Column: TColumn);
begin
Dm.IBDS_CLIENTES.Locate('CODIGO',IBQuery_ContratosCODIGO.AsString, []);
MEdit_PagMen.Text:= IBQuery_ContratosPAGAMENTO_MENSAL.AsString;
MEdit_DiaVen.Text:= IBQuery_ContratosDIA_VENCIMENTO.AsString;
MEdit_Modelo.Text:= IBQuery_ContratosMODELOS.AsString;
end;

procedure TFrmContratos.DBGrid_ClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_CLIENTES.Locate('CODIGO',IBQuery_ContratosCODIGO.AsString, []);
MEdit_PagMen.Text:= IBQuery_ContratosPAGAMENTO_MENSAL.AsString;
MEdit_DiaVen.Text:= IBQuery_ContratosDIA_VENCIMENTO.AsString;
MEdit_Modelo.Text:= IBQuery_ContratosMODELOS.AsString;
end;

procedure TFrmContratos.DBGrid_ClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_Contratos.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Clientes.Canvas.Brush.Color:= clMoneyGreen;
DBGrid_Clientes.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Clientes.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmContratos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmContratos.DBGrid_ContratosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_GeraContratos.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Contratos.Canvas.Brush.Color:= clSkyBlue;
DBGrid_Contratos.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Contratos.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmContratos.DBGrid_ContratosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_CLIENTES.Locate('CODIGO',IBQuery_ContratosCODIGO.AsString, []);
end;

procedure TFrmContratos.FormCreate(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
// SELECIONA OS CONTRATOS GERADOS
 IBQuery_GeraContratos.Close;
 IBQuery_GeraContratos.SQL.Clear;
 IBQuery_GeraContratos.SQL.Add('select * from PLANOS ');
 IBQuery_GeraContratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_GeraContratos.Prepare;
 IBQuery_GeraContratos.Open;
Screen.Cursor := crDefault;
end;

procedure TFrmContratos.Btn_GerarClick(Sender: TObject);
var
Salario, Porcento, Resultado: Real;
begin
if MEdit_PagMen.Text = '' then
begin
MEdit_PagMen.SetFocus;
Exit;
end else
if MEdit_DiaVen.Text = '' then
begin
MEdit_DiaVen.SetFocus;
Exit;
end else
if MEdit_Modelo.Text = '' then
begin
MEdit_Modelo.SetFocus;
Exit;
end else

Dm.IBDS_PLANOS.Close;
Dm.IBDS_PLANOS.Open;

Dm.IBDS_PLANOS.Append;
Dm.IBDS_PLANOSCONTRATO.AsString:= FrmPrincipal.RetZero(Dm.IBDS_PLANOSCOD_PLAN.AsString, 4);
Dm.IBDS_PLANOSNOME_CLIENTE.AsString:= IBQuery_ContratosNOME_CLIENTE.AsString;
Dm.IBDS_PLANOSCODIGO.AsString:= IBQuery_ContratosCODIGO.AsString;
if CheckBox_Data.Checked = True then
begin
Dm.IBDS_PLANOSDATA_CONTRATO.AsDateTime:= StrToDate(MEdit_Data.Text);
end else
Dm.IBDS_PLANOSDATA_CONTRATO.AsDateTime:= IBQuery_ContratosDATA_CADASTRO.AsDateTime;
Dm.IBDS_PLANOSRG.AsString:= IBQuery_ContratosRG.AsString;
Dm.IBDS_PLANOSCPF.AsString:= IBQuery_ContratosCPF.AsString;
Dm.IBDS_PLANOSTE.AsString:= IBQuery_ContratosTE.AsString;
Dm.IBDS_PLANOSENDERECO.AsString:= IBQuery_ContratosENDERECO.AsString;
Dm.IBDS_PLANOSBAIRRO.AsString:= IBQuery_ContratosBAIRRO.AsString;
Dm.IBDS_PLANOSCIDADE.AsString:= IBQuery_ContratosCIDADE.AsString;
Dm.IBDS_PLANOSCEP.AsString:= IBQuery_ContratosCEP.AsString;
Dm.IBDS_PLANOSESTADO.AsString:= IBQuery_ContratosESTADO.AsString;
Dm.IBDS_PLANOSUF.AsString:=IBQuery_ContratosUF.AsString;
Dm.IBDS_PLANOSAPELIDO_PROMOTOR.AsString:=IBQuery_ContratosAPELIDO_PROMOTOR.AsString;
Dm.IBDS_PLANOSCODIGO_P.AsString:=IBQuery_ContratosCODIGO_P.AsString;
Dm.IBDS_PLANOSPAGAMENTO_MENSAL.AsString:=MEdit_PagMen.Text;
Dm.IBDS_PLANOSDIA_VENCIMENTO.AsString:=MEdit_DiaVen.Text;
Dm.IBDS_PLANOSMODELOS.AsString:=MEdit_Modelo.Text;
Dm.IBDS_PLANOSTAXA_ADMIN.AsFloat:=Dm.IBDS_EMPRESATAXA_ADMIN.AsFloat;
Salario:= Dm.IBDS_EMPRESAVALOR_SM.AsFloat;
Porcento:= StrToFloat(MEdit_PagMen.Text);
Resultado:= Salario * Porcento / 100;


Dm.IBDS_PLANOSVALOR_MENSAL.AsFloat:= Resultado;
Dm.IBDS_PLANOS.FieldByName('USUARIO').AsString:= Usuario;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_PLANOS.Post;
Dm.IBDS_PLANOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

// SELECIONA OS CONTRATOS GERADOS
 IBQuery_GeraContratos.Close;
 IBQuery_GeraContratos.SQL.Clear;
 IBQuery_GeraContratos.SQL.Add('select * from PLANOS ');
 IBQuery_GeraContratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_GeraContratos.Prepare;
 IBQuery_GeraContratos.Open;
Screen.Cursor := crDefault;

Screen.Cursor := crHourGlass;
// SELECIONA OS CLIENTES PARA GERAR CONTRATOS
 IBQuery_Contratos.Close;
 IBQuery_Contratos.SQL.Clear;
 IBQuery_Contratos.SQL.Add('select APELIDO_PROMOTOR, BAIRRO, CEP, CIDADE, CODIGO, CODIGO_P, CPF, DIA_VENCIMENTO, ENDERECO, ESTADO, MODELOS, NOME_CLIENTE, PAGAMENTO_MENSAL, RG, TE, UF, DATA_CADASTRO from CLIENTES C ');
 IBQuery_Contratos.SQL.Add('where not exists ( select * from PLANOS where CODIGO = C.CODIGO) ');
 IBQuery_Contratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_Contratos.Prepare;
 IBQuery_Contratos.Open;
Screen.Cursor := crDefault;
AtualizaGerar;
CheckBox_Data.Checked:= False;
MEdit_PagMen.Text:= '';
MEdit_DiaVen.Text:= '';
MEdit_Modelo.Text:= '';
MEdit_Data.Text:= '';
if DBGrid_Clientes.Fields[0].Text <> '' then
begin
DBGrid_Clientes.SetFocus;
DBGrid_ClientesCellClick(Nil);
end;
end;

procedure TFrmContratos.MEdit_DataExit(Sender: TObject);
begin
if Btn_Gerar.Enabled = False then
begin
Abort;
Exit;
end else
if MEdit_Data.Text = '  /  /    ' then
begin
Btn_Gerar.SetFocus;
Exit;
end else
try
StrToDate(MEdit_Data.Text);
except
on EConvertError do begin
ShowMessage ('Data Inválida!');
MEdit_Data.Text:= '';
MEdit_Data.SetFocus;
end;
end;
end;

procedure TFrmContratos.Btn_EstornarContratoClick(Sender: TObject);
begin
Edit1.Text:= '';
Edit2.Text:= '';
// APAGA O CONTRATO SELECIONADO PARA ESTORNO
Screen.Cursor := crHourGlass;
IBQuery_EstornaContrato.Close;
IBQuery_EstornaContrato.SQL.Clear;
IBQuery_EstornaContrato.SQL.Add('Delete from PLANOS ');
IBQuery_EstornaContrato.SQL.Add('where CONTRATO =:Cont');
IBQuery_EstornaContrato.ParamByName('Cont').AsString:= IBQuery_GeraContratosCONTRATO.AsString;
IBQuery_EstornaContrato.ExecSQL;

// SELECIONA OS CONTRATOS GERADOS
 IBQuery_GeraContratos.Close;
 IBQuery_GeraContratos.SQL.Clear;
 IBQuery_GeraContratos.SQL.Add('select * from PLANOS ');
 IBQuery_GeraContratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_GeraContratos.Prepare;
 IBQuery_GeraContratos.Open;

// SELECIONA OS CLIENTES PARA GERAR CONTRATOS
 IBQuery_Contratos.Close;
 IBQuery_Contratos.SQL.Clear;
 IBQuery_Contratos.SQL.Add('select APELIDO_PROMOTOR, BAIRRO, CEP, CIDADE, CODIGO, CODIGO_P, CPF, DIA_VENCIMENTO, ENDERECO, ESTADO, MODELOS, NOME_CLIENTE, PAGAMENTO_MENSAL, RG, TE, UF, DATA_CADASTRO from CLIENTES C ');
 IBQuery_Contratos.SQL.Add('where not exists ( select * from PLANOS where CODIGO = C.CODIGO) ');
 IBQuery_Contratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_Contratos.Prepare;
 IBQuery_Contratos.Open;
Screen.Cursor := crDefault;
AtualizaGerar;
end;

procedure TFrmContratos.atualizaGerar;
begin
if DBGrid_Clientes.Fields[0].Text = '' then
begin
DBGrid_Clientes.Enabled:= False;
Btn_Gerar.Enabled:= False;
BtnFechar.SetFocus;
Exit;
end else
DBGrid_Clientes.Enabled:= True;
Btn_Gerar.Enabled:= True;
DBGrid_Clientes.SetFocus;
if DBGrid_Contratos.Fields[0].Text = '' then
begin
DBGrid_Contratos.Enabled:= False;
Btn_EstornarContrato.Enabled:= False;
Exit;
end else
DBGrid_Contratos.Enabled:= True;
Btn_EstornarContrato.Enabled:= True;
end;

procedure TFrmContratos.Btn_AtualizarClick(Sender: TObject);
begin
if CheckBox_GO.Checked = True then
begin
Screen.Cursor := crHourGlass;
// SELECIONA OS CLIENTES PARA GERAR CONTRATOS
 IBQuery_Contratos.Close;
 IBQuery_Contratos.SQL.Clear;
 IBQuery_Contratos.SQL.Add('select APELIDO_PROMOTOR, BAIRRO, CEP, CIDADE, CODIGO, CODIGO_P, CPF, DIA_VENCIMENTO, ENDERECO, ESTADO, MODELOS, NOME_CLIENTE, PAGAMENTO_MENSAL, RG, TE, UF, DATA_CADASTRO from CLIENTES C ');
 IBQuery_Contratos.SQL.Add('where CODIGO = :Cod ');
 IBQuery_Contratos.ParamByName('Cod').AsString:= IBQuery_GeraContratosCODIGO.AsString;
 IBQuery_Contratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_Contratos.Prepare;
 IBQuery_Contratos.Open;
Screen.Cursor := crDefault;

// SELECIONA OS CONTRATOS GERADOS
 IBQuery_GeraContratos.Close;
 IBQuery_GeraContratos.SQL.Clear;
 IBQuery_GeraContratos.SQL.Add('select * from PLANOS ');
 IBQuery_GeraContratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_GeraContratos.Prepare;
 IBQuery_GeraContratos.Open;
Screen.Cursor := crDefault;

AtualizaGerar;
Exit;
end else
// SELECIONA OS CONTRATOS GERADOS
 IBQuery_GeraContratos.Close;
 IBQuery_GeraContratos.SQL.Clear;
 IBQuery_GeraContratos.SQL.Add('select * from PLANOS ');
 IBQuery_GeraContratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_GeraContratos.Prepare;
 IBQuery_GeraContratos.Open;
Screen.Cursor := crDefault;


Screen.Cursor := crHourGlass;
// SELECIONA OS CLIENTES PARA GERAR CONTRATOS
 IBQuery_Contratos.Close;
 IBQuery_Contratos.SQL.Clear;
 IBQuery_Contratos.SQL.Add('select APELIDO_PROMOTOR, BAIRRO, CEP, CIDADE, CODIGO, CODIGO_P, CPF, DIA_VENCIMENTO, ENDERECO, ESTADO, MODELOS, NOME_CLIENTE, PAGAMENTO_MENSAL, RG, TE, UF, DATA_CADASTRO from CLIENTES C ');
 IBQuery_Contratos.SQL.Add('where not exists ( select * from PLANOS where CODIGO = C.CODIGO) ');
 IBQuery_Contratos.SQL.Add('order by NOME_CLIENTE');
 IBQuery_Contratos.Prepare;
 IBQuery_Contratos.Open;
Screen.Cursor := crDefault;
AtualizaGerar;
end;

procedure TFrmContratos.MEdit_PagMenKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmContratos.MEdit_DiaVenKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmContratos.MEdit_ModeloKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['A'..'Z',#8,#13,#32] ) then
begin
key:=#0;
end;
end;

procedure TFrmContratos.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmContratos.BtnOkClick(Sender: TObject);
begin
Screen.Cursor := crHourglass;
Edit1.Text:= '';
if not IBQuery_GeraContratos.Locate('CODIGO',Edit2.Text,[]) then
begin
ShowMessage('O contrato Nº: "'+Edit2.Text+'" está incompleto. Tente novamente.');
Screen.Cursor := crDefault;
Edit2.SetFocus;
Exit;
end else
Btn_EstornarContrato.SetFocus;
Screen.Cursor := crDefault;
end;

procedure TFrmContratos.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
  with Edit1 do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if IBQuery_GeraContratos.Locate('NOME_CLIENTE', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := IBQuery_GeraContratos.FieldByName('NOME_CLIENTE').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmContratos.Edit1Exit(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Abort;
Exit;
end else
Screen.Cursor := crHourglass;
Edit2.Text:= '';
if not IBQuery_GeraContratos.Locate('NOME_CLIENTE',Edit1.Text,[]) then
begin
ShowMessage('O nome "'+Edit1.Text+'" está incompleto ou não existe contrato. Tente novamente.');
Screen.Cursor := crDefault;
Edit1.SetFocus;
Exit;
end else
Btn_EstornarContrato.SetFocus;
Screen.Cursor := crDefault;
end;

procedure TFrmContratos.Edit2Exit(Sender: TObject);
begin
if Edit2.Text = '' then
begin
Abort;
Exit;
end else
Edit2.Text:= FrmPrincipal.RetZero(Edit2.Text, 4);
if Edit2.Text = '' then
begin
BtnOk.Enabled:=False;
end else
BtnOk.Enabled:=True;
if BtnOk.Enabled = True then
begin
BtnOk.SetFocus;
BtnOkClick(Nil);
end;
end;

end.
