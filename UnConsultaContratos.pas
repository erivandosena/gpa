unit UnConsultaContratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, DBCtrls, ExtCtrls;

type
  TFrmConsultaContratos = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Btn_Exibir: TBitBtn;
    Btn_Todos: TBitBtn;
    Btn_Imprimir: TBitBtn;
    Btn_Fechar: TBitBtn;
    MEdit_CodINI: TMaskEdit;
    MEdit_CodFIM: TMaskEdit;
    DBGrid_Titular: TDBGrid;
    DBGrid_Dependente: TDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    IBQuery_Titular: TIBQuery;
    Ds_Titular: TDataSource;
    IBQuery_Dependente: TIBQuery;
    Ds_Dependente: TDataSource;
    Label6: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    DBText3: TDBText;
    IBQuery_TitularDIA_VENCIMENTO: TIBStringField;
    Label7: TLabel;
    MEdit_DiasVencer: TMaskEdit;
    Label8: TLabel;
    IBQuery_DependenteBAIRRO: TIBStringField;
    IBQuery_DependenteCIDADE: TIBStringField;
    IBQuery_DependenteCODIGO: TIBStringField;
    IBQuery_DependenteDATA_VENCIMENTO: TDateTimeField;
    IBQuery_DependenteDIA_VENCIMENTO: TIBStringField;
    IBQuery_DependenteENDERECO: TIBStringField;
    IBQuery_DependenteMES_REFERENCIA: TIBStringField;
    IBQuery_DependenteMODELOS: TIBStringField;
    IBQuery_DependenteNOME_CLIENTE: TIBStringField;
    IBQuery_DependenteNUMERO_DOC: TIBStringField;
    IBQuery_DependenteNUMERO_PARCELA: TIBStringField;
    IBQuery_DependentePAGAMENTO_MENSAL: TIBStringField;
    IBQuery_DependenteRG: TIBStringField;
    IBQuery_DependenteTE: TIBStringField;
    IBQuery_DependenteVALOR_MENSAL: TIBBCDField;
    IBQuery_DependenteF_1: TIntegerField;
    IBQuery_DependenteF_2: TIBBCDField;
    Label5: TLabel;
    MEdit_Cidade: TComboBox;
    IBQuery_TitularCIDADE: TIBStringField;
    DBText1: TDBText;
    IBQuery_DependenteCPF: TIBStringField;
    procedure Btn_ExibirClick(Sender: TObject);
    procedure DBGrid_TitularKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_TitularCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure Btn_TodosClick(Sender: TObject);
    procedure MEdit_CodINIExit(Sender: TObject);
    procedure MEdit_CodFIMExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure MEdit_DiasVencerExit(Sender: TObject);
    procedure MEdit_DiasVencerKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_CodFIMKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_CodINIKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_CidadeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Imprimir;
  end;

var
  FrmConsultaContratos: TFrmConsultaContratos;
  Exibe: Integer;

implementation

uses UnDm, UnPrincipal, UnRelConsultaContrato;

{$R *.dfm}

procedure TFrmConsultaContratos.Btn_ExibirClick(Sender: TObject);
begin
if (MEdit_CodINI.Text = '') and (MEdit_CodFIM.Text = '') then
begin
Btn_Todos.SetFocus;
Exit;
end else
if MEdit_DiasVencer.Text = '' then
begin
MEdit_DiasVencer.Text:= '30';
end else
Screen.Cursor := crHourGlass;
// INICIA SELE플O DE VENCIMENTOS
IBQuery_Titular.Close;
IBQuery_Titular.SQL.Clear;
IBQuery_Titular.SQL.Add('select distinct DIA_VENCIMENTO, CIDADE from PLANOS ');
IBQuery_Titular.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Titular.SQL.Add('order by DIA_VENCIMENTO');
IBQuery_Titular.Open;
// INICIA SELE플O DE MENSALIDADES
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select BAIRRO, CIDADE, CODIGO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, PAGAMENTO_MENSAL,CPF, RG, TE, VALOR_MENSAL, ');
// TOTAL DE MENSALIDADE
IBQuery_Dependente.SQL.Add('(select count (DIA_VENCIMENTO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+' ), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+' ) ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Dependente.SQL.Add('order by NOME_CLIENTE, DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
Exibe:= 1;
end;

procedure TFrmConsultaContratos.DBGrid_TitularKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Exibe = 1 then
begin
Screen.Cursor := crHourGlass;
// INICIA SELE플O DE MENSALIDADES
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select BAIRRO, CIDADE, CODIGO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, PAGAMENTO_MENSAL,CPF, RG, TE, VALOR_MENSAL, ');
// TOTAL DE MENSALIDADE
IBQuery_Dependente.SQL.Add('(select count (DIA_VENCIMENTO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+' ), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+' ) ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Dependente.SQL.Add('order by NOME_CLIENTE, DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end else
if Exibe = 2 then
begin
Screen.Cursor := crHourGlass;
// INICIA SELE플O DE MENSALIDADES
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select BAIRRO, CIDADE, CODIGO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, PAGAMENTO_MENSAL,CPF, RG, TE, VALOR_MENSAL, ');
// TOTAL DE MENSALIDADE
IBQuery_Dependente.SQL.Add('(select count (DIA_VENCIMENTO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+'), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+') ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Dependente.SQL.Add('order by NOME_CLIENTE, DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end;
end;

procedure TFrmConsultaContratos.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmConsultaContratos.FormShow(Sender: TObject);
var
  Qry : TIBQuery;
begin
FrmConsultaContratos.Top:=100;
FrmConsultaContratos.Left:=0;
Imprimir;
MEdit_CodINI.SetFocus;
Screen.Cursor := crHourGlass;
Qry := TIBQuery.Create(nil);
  with Qry do begin
    Active:= False;
    Database:= Dm.IBDatabase;
    SQL.Add('select distinct CIDADE from CLIENTES ');
    Open;
      end;
    MEdit_Cidade.Items.Clear;
    Qry.First;
    if not Qry.Eof then
    repeat
    { seus comandos para a tabela }
    MEdit_Cidade.Items.Add(Qry.FieldByName('CIDADE').AsString);
    Qry.Next;
    until Qry.Eof;
MEdit_Cidade.Sorted := True;
MEdit_Cidade.Text:= Dm.IBDS_EMPRESACIDADE.AsString;
Screen.Cursor := crDefault;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmConsultaContratos.Caption:= FrmConsultaContratos.Caption;
Exit;
end else
FrmConsultaContratos.Caption:= FrmConsultaContratos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmConsultaContratos.DBGrid_TitularCellClick(Column: TColumn);
begin
if Exibe = 1 then
begin
Screen.Cursor := crHourGlass;
// INICIA SELE플O DE MENSALIDADES
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select BAIRRO, CIDADE, CODIGO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, PAGAMENTO_MENSAL,CPF, RG, TE, VALOR_MENSAL, ');
// TOTAL DE MENSALIDADE
IBQuery_Dependente.SQL.Add('(select count (DIA_VENCIMENTO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+' ), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+' ) ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DIA_VENCIMENTO between '+#39+MEdit_CodINI.Text+#39+' and '+#39+MEdit_CodFIM.Text+#39+' and DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Dependente.SQL.Add('order by NOME_CLIENTE, DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end else
if Exibe = 2 then
begin
Screen.Cursor := crHourGlass;
// INICIA SELE플O DE MENSALIDADES
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select BAIRRO, CIDADE, CODIGO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, PAGAMENTO_MENSAL,CPF, RG, TE, VALOR_MENSAL, ');
// TOTAL DE MENSALIDADE
IBQuery_Dependente.SQL.Add('(select count (DIA_VENCIMENTO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+'), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+') ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Dependente.SQL.Add('order by NOME_CLIENTE, DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end;
end;

procedure TFrmConsultaContratos.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
IBQuery_Titular.Close;
IBQuery_Titular.Open;
IBQuery_Dependente.Close;
IBQuery_Dependente.Open;
end;

procedure TFrmConsultaContratos.Btn_TodosClick(Sender: TObject);
begin
MEdit_CodINI.Text:= '';
MEdit_CodFIM.Text:= '';
if MEdit_DiasVencer.Text = '' then
begin
MEdit_DiasVencer.Text:= '30';
end else
if MEdit_DiasVencer.Text = '' then
begin
MEdit_Cidade.Text:= Dm.IBDS_EMPRESACIDADE.AsString;
end else
Screen.Cursor := crHourGlass;
// INICIA SELE플O DE VENCIMENTOS
IBQuery_Titular.Close;
IBQuery_Titular.SQL.Clear;
IBQuery_Titular.SQL.Add('select distinct DIA_VENCIMENTO, CIDADE from PLANOS where CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Titular.SQL.Add('order by DIA_VENCIMENTO');
IBQuery_Titular.Open;
// INICIA SELE플O DE MENSALIDADES
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select BAIRRO, CIDADE, CODIGO, DATA_VENCIMENTO, DIA_VENCIMENTO, ENDERECO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUMERO_PARCELA, PAGAMENTO_MENSAL,CPF, RG, TE, VALOR_MENSAL, ');
// TOTAL DE MENSALIDADE
IBQuery_Dependente.SQL.Add('(select count (DIA_VENCIMENTO) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+'), ');
// VALOR TOTAL DAS MENSALIDADES
IBQuery_Dependente.SQL.Add('(select sum (VALOR_MENSAL) from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39+') ');
IBQuery_Dependente.SQL.Add('from CARNE ');
IBQuery_Dependente.SQL.Add('where DATA_VENCIMENTO < '+#39+FormatDateTime('mm/dd/yyyy', Data+StrToInt(MEdit_DiasVencer.Text))+#39+' and SITUACAO = '+#39+'A'+#39+' AND DIA_VENCIMENTO = '+#39+IBQuery_TitularDIA_VENCIMENTO.AsString+#39+' and CIDADE = '+#39+MEdit_Cidade.Text+#39);
IBQuery_Dependente.SQL.Add('order by NOME_CLIENTE, DATA_VENCIMENTO');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
Exibe:= 2;
end;

procedure TFrmConsultaContratos.Imprimir;
begin
if DBGrid_Titular.Fields[0].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
Btn_Fechar.SetFocus;
Exit;
end else
Btn_Imprimir.Enabled:= True;
DBGrid_Titular.SetFocus;
end;

procedure TFrmConsultaContratos.MEdit_CodINIExit(Sender: TObject);
begin
if MEdit_CodINI.Text = '' then
begin
MEdit_CodINI.Text:= '1';
end else
MEdit_CodINI.Text:= FrmPrincipal.RetZero(MEdit_CodINI.Text, 2);
end;

procedure TFrmConsultaContratos.MEdit_CodFIMExit(Sender: TObject);
begin
if MEdit_CodFIM.Text = '' then
begin
MEdit_CodFIM.Text:= '31';
end else
MEdit_CodFIM.Text:= FrmPrincipal.RetZero(MEdit_CodFIM.Text, 2);
end;

procedure TFrmConsultaContratos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmConsultaContratos.Btn_ImprimirClick(Sender: TObject);
begin
if FrmRelConsultaContrato <> Nil then Exit;
FrmRelConsultaContrato := TFrmRelConsultaContrato.Create(self);
FrmRelConsultaContrato.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelConsultaContrato.QuickRep1.Preview;
FrmRelConsultaContrato.Free;
FrmRelConsultaContrato := Nil;
end;

procedure TFrmConsultaContratos.MEdit_DiasVencerExit(Sender: TObject);
begin
if MEdit_DiasVencer.Text = '' then
begin
MEdit_DiasVencer.Text:= '30';
end;
end;

procedure TFrmConsultaContratos.MEdit_DiasVencerKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmConsultaContratos.MEdit_CodFIMKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmConsultaContratos.MEdit_CodINIKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmConsultaContratos.MEdit_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['A'..'Z',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmConsultaContratos.MEdit_CidadeExit(Sender: TObject);
begin
if MEdit_DiasVencer.Text = '' then
begin
MEdit_Cidade.Text:= Dm.IBDS_EMPRESACIDADE.AsString;
end;
end;

end.
