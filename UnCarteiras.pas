unit UnCarteiras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, DBCtrls, ExtCtrls;

type
  TFrmCarteiras = class(TForm)
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
    IBQuery_TitularCIDADE: TIBStringField;
    IBQuery_TitularCODIGO: TIBStringField;
    IBQuery_TitularENDERECO: TIBStringField;
    IBQuery_TitularESTADO: TIBStringField;
    IBQuery_TitularNOME_CLIENTE: TIBStringField;
    IBQuery_TitularRG: TIBStringField;
    IBQuery_TitularTE: TIBStringField;
    IBQuery_TitularF_1: TIntegerField;
    IBQuery_Dependente: TIBQuery;
    IntegerField2: TIntegerField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    Ds_Dependente: TDataSource;
    IBQuery_DependenteCODIGO: TIBStringField;
    IBQuery_DependenteF_1: TIntegerField;
    Label5: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    IBQuery_TitularCPF: TIBStringField;
    CBox_Carteira: TCheckBox;
    IBQuery_TitularTC: TIBStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Imprimir;
  end;

var
  FrmCarteiras: TFrmCarteiras;
  Exibe: Integer;

implementation

uses UnDm, UnPrincipal, UnRelCarteiras, UnRelCarteirasPJ;

{$R *.dfm}

procedure TFrmCarteiras.Btn_ExibirClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Titular.Close;
IBQuery_Titular.SQL.Clear;
IBQuery_Titular.SQL.Add('select CIDADE, CODIGO, CPF, ENDERECO, ESTADO, NOME_CLIENTE, RG, TE, TC, ');
// TOTAL DE ACESSOS
IBQuery_Titular.SQL.Add('(select count (CODIGO) from CLIENTES ');
IBQuery_Titular.SQL.Add('where CODIGO >= '+#39+MEdit_CodINI.Text+#39+' and CODIGO <= '+#39+MEdit_CodFIM.Text+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Titular.SQL.Add('from CLIENTES ');
IBQuery_Titular.SQL.Add('where CODIGO >= '+#39+MEdit_CodINI.Text+#39+' and CODIGO <= '+#39+MEdit_CodFIM.Text+#39);
// PARÂMETROS
IBQuery_Titular.SQL.Add('order by NOME_CLIENTE');
IBQuery_Titular.Open;

// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select COD_DEPE, CODIGO, NOME_DEPENDENTE, PARENTESCO, ');
// TOTAL DE ACESSOS
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO >= '+#39+MEdit_CodINI.Text+#39+' and CODIGO <= '+#39+MEdit_CodFIM.Text+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Dependente.SQL.Add('from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO >= '+#39+MEdit_CodINI.Text+#39+' and CODIGO <= '+#39+MEdit_CodFIM.Text+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
// PARÂMETROS
IBQuery_Dependente.SQL.Add('order by NOME_DEPENDENTE');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
Exibe:= 1;
end;

procedure TFrmCarteiras.DBGrid_TitularKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Exibe = 1 then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select COD_DEPE, CODIGO, NOME_DEPENDENTE, PARENTESCO, ');
// TOTAL DE ACESSOS
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO >= '+#39+MEdit_CodINI.Text+#39+' and CODIGO <= '+#39+MEdit_CodFIM.Text+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Dependente.SQL.Add('from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO >= '+#39+MEdit_CodINI.Text+#39+' and CODIGO <= '+#39+MEdit_CodFIM.Text+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
// PARÂMETROS
IBQuery_Dependente.SQL.Add('order by NOME_DEPENDENTE');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end else
if Exibe = 2 then
begin
// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select COD_DEPE, CODIGO, NOME_DEPENDENTE, PARENTESCO, ');
// TOTAL DE ACESSOS
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Dependente.SQL.Add('from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
// PARÂMETROS
IBQuery_Dependente.SQL.Add('order by NOME_DEPENDENTE');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end;
end;

procedure TFrmCarteiras.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCarteiras.FormShow(Sender: TObject);
begin
FrmCarteiras.Top:=100;
FrmCarteiras.Left:=0;
Imprimir;
MEdit_CodINI.SetFocus;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmCarteiras.Caption:= FrmCarteiras.Caption;
Exit;
end else
FrmCarteiras.Caption:= FrmCarteiras.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmCarteiras.DBGrid_TitularCellClick(Column: TColumn);
begin
if Exibe = 1 then
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select COD_DEPE, CODIGO, NOME_DEPENDENTE, PARENTESCO, ');
// TOTAL DE ACESSOS
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO >= '+#39+MEdit_CodINI.Text+#39+' and CODIGO <= '+#39+MEdit_CodFIM.Text+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Dependente.SQL.Add('from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO >= '+#39+MEdit_CodINI.Text+#39+' and CODIGO <= '+#39+MEdit_CodFIM.Text+#39+' AND CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
// PARÂMETROS
IBQuery_Dependente.SQL.Add('order by NOME_DEPENDENTE');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end else
if Exibe = 2 then
begin
// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select COD_DEPE, CODIGO, NOME_DEPENDENTE, PARENTESCO, ');
// TOTAL DE ACESSOS
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Dependente.SQL.Add('from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
// PARÂMETROS
IBQuery_Dependente.SQL.Add('order by NOME_DEPENDENTE');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
end;
end;

procedure TFrmCarteiras.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
IBQuery_Titular.Close;
IBQuery_Titular.Open;
IBQuery_Dependente.Close;
IBQuery_Dependente.Open;
end;

procedure TFrmCarteiras.Btn_TodosClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
// INICIA SELEÇÃO
IBQuery_Titular.Close;
IBQuery_Titular.SQL.Clear;
IBQuery_Titular.SQL.Add('select CIDADE, CODIGO, CPF, ENDERECO, ESTADO, NOME_CLIENTE, RG, TE, TC, ');
// TOTAL DE ACESSOS
IBQuery_Titular.SQL.Add('(select count (CODIGO) from CLIENTES )');
// FINALIZA SELEÇÃO
IBQuery_Titular.SQL.Add('from CLIENTES ');
// PARÂMETROS
IBQuery_Titular.SQL.Add('order by NOME_CLIENTE');
IBQuery_Titular.Open;

// INICIA SELEÇÃO
IBQuery_Dependente.Close;
IBQuery_Dependente.SQL.Clear;
IBQuery_Dependente.SQL.Add('select COD_DEPE, CODIGO, NOME_DEPENDENTE, PARENTESCO, ');
// TOTAL DE ACESSOS
IBQuery_Dependente.SQL.Add('(select count (CODIGO) from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39+') ');
// FINALIZA SELEÇÃO
IBQuery_Dependente.SQL.Add('from DEPENDE ');
IBQuery_Dependente.SQL.Add('where CODIGO = '+#39+IBQuery_TitularCODIGO.AsString+#39);
// PARÂMETROS
IBQuery_Dependente.SQL.Add('order by NOME_DEPENDENTE');
IBQuery_Dependente.Open;
Screen.Cursor := crDefault;
Imprimir;
Exibe:= 2;
end;

procedure TFrmCarteiras.Imprimir;
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

procedure TFrmCarteiras.MEdit_CodINIExit(Sender: TObject);
begin
MEdit_CodINI.Text:= FrmPrincipal.RetZero(MEdit_CodINI.Text, 4);
end;

procedure TFrmCarteiras.MEdit_CodFIMExit(Sender: TObject);
begin
MEdit_CodFIM.Text:= FrmPrincipal.RetZero(MEdit_CodFIM.Text, 4);
end;

procedure TFrmCarteiras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmCarteiras.Btn_ImprimirClick(Sender: TObject);
begin
if CBox_Carteira.Checked = False then
begin
if (IBQuery_Titular.FieldByName('TC').AsString = 'PJ') then
begin
ShowMessage('Informe um cliente pessoa física.');
CBox_Carteira.SetFocus;
Exit;
end else
if FrmRelCarteiras <> Nil then Exit;
FrmRelCarteiras := TFrmRelCarteiras.Create(self);
FrmRelCarteiras.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCarteiras.QuickRep1.Preview;
FrmRelCarteiras.Free;
FrmRelCarteiras := Nil;
Exit;
end else
if (IBQuery_Titular.FieldByName('TC').AsString = 'PF') then
begin
ShowMessage('Não é possível carteira individual para este cliente.');
CBox_Carteira.SetFocus;
Exit;
end else
if FrmRelCarteirasPJ <> Nil then Exit;
FrmRelCarteirasPJ := TFrmRelCarteirasPJ.Create(self);
FrmRelCarteirasPJ.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCarteirasPJ.QuickRep1.Preview;
FrmRelCarteirasPJ.Free;
FrmRelCarteirasPJ := Nil;
end;

end.
