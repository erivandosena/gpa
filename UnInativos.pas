unit UnInativos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, ExtDlgs, DBCtrls, Jpeg;

type
  TFrmInativos = class(TForm)
    SemImagem: TImage;
    DBGrid_Inativos: TDBGrid;
    Btn_Fechar: TBitBtn;
    Btn_Todos: TBitBtn;
    Btn_Restaurar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    IBQuery_INATIVOS: TIBQuery;
    IBQuery_INATIVOSFOTO: TBlobField;
    IBQuery_INATIVOSCODIGO: TIBStringField;
    IBQuery_INATIVOSNOME_CLIENTE: TIBStringField;
    IBQuery_INATIVOSRG: TIBStringField;
    IBQuery_INATIVOSTE: TIBStringField;
    IBQuery_INATIVOSDATA_CADASTRO: TDateTimeField;
    IBQuery_INATIVOSTELEFONE: TIBStringField;
    IBQuery_INATIVOSDATA_MOVIDO: TDateTimeField;
    IBQuery_INATIVOSRAZAO_MOVIDO: TIBStringField;
    DS_INATIVOS: TDataSource;
    IBQuery_CLIENTES: TIBQuery;
    IBQuery_CLIENTESCODIGO: TIBStringField;
    IBQuery_INATIVOSUSUARIO: TIBStringField;
    IBQuery_INATIVOSCPF: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Btn_TodosClick(Sender: TObject);
    procedure Btn_RestaurarClick(Sender: TObject);
    procedure DBGrid_InativosKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_InativosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid_InativosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_InativosCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInativos: TFrmInativos;
  Restaurado: Integer;

implementation

uses UnDm, UnPrincipal;

{$R *.dfm}

procedure TFrmInativos.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmInativos.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmInativos.Btn_TodosClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
 IBQuery_INATIVOS.Close;
 IBQuery_INATIVOS.SQL.Clear;
 IBQuery_INATIVOS.SQL.Add('select CODIGO, CPF, DATA_CADASTRO, FOTO, NOME_CLIENTE, RG, TE, TELEFONE, DATA_MOVIDO, USUARIO, RAZAO_MOVIDO from INATIVOS ');
 IBQuery_INATIVOS.SQL.Add('order by CODIGO');
 IBQuery_INATIVOS.Prepare;
 IBQuery_INATIVOS.Open;
Screen.Cursor := crDefault;
if DBGrid_Inativos.Fields[1].Text = '' then
begin
Btn_Todos.Enabled:= False;
Btn_Restaurar.Enabled:= False;
DBGrid_Inativos.Enabled:= False;
Exit;
end else
Btn_Todos.Enabled:= True;
Btn_Restaurar.Enabled:= True;
DBGrid_Inativos.Enabled:= True;
Screen.Cursor := crDefault;
end;

procedure TFrmInativos.Btn_RestaurarClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
IBQuery_CLIENTES.Open;
IBQuery_CLIENTES.First;
if not IBQuery_CLIENTES.Locate('CODIGO', DBGrid_Inativos.Fields[1].Text, []) and (IBQuery_INATIVOSCODIGO.Value <> IBQuery_CLIENTESCODIGO.Value) then
begin
Restaurado:= 1;
Dm.IBDS_CLIENTES.Last;
Dm.IBDS_CLIENTES.Append;
Dm.IBDS_CLIENTES.FieldByName('COD_CLIE').AsString:= Dm.IBDS_INATIVOS.FieldByName('COD_CLIE').AsString;
Dm.IBDS_CLIENTES.FieldByName('CODIGO').AsString:= Dm.IBDS_INATIVOS.FieldByName('CODIGO').AsString;
Dm.IBDS_CLIENTES.FieldByName('DATA_CADASTRO').AsString:= Dm.IBDS_INATIVOS.FieldByName('DATA_CADASTRO').AsString;
Dm.IBDS_CLIENTES.FieldByName('NOME_CLIENTE').AsString:= Dm.IBDS_INATIVOS.FieldByName('NOME_CLIENTE').AsString;
Dm.IBDS_CLIENTES.FieldByName('RELIGIAO').AsString:= Dm.IBDS_INATIVOS.FieldByName('RELIGIAO').AsString;
Dm.IBDS_CLIENTES.FieldByName('ESTADO_CIVIL').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESTADO_CIVIL').AsString;
Dm.IBDS_CLIENTES.FieldByName('SEXO').AsString:= Dm.IBDS_INATIVOS.FieldByName('SEXO').AsString;
Dm.IBDS_CLIENTES.FieldByName('DATA_NASCIMENTO').AsString:= Dm.IBDS_INATIVOS.FieldByName('DATA_NASCIMENTO').AsString;
Dm.IBDS_CLIENTES.FieldByName('RG').AsString:= Dm.IBDS_INATIVOS.FieldByName('RG').AsString;
Dm.IBDS_CLIENTES.FieldByName('CPF').AsString:= Dm.IBDS_INATIVOS.FieldByName('CPF').AsString;
Dm.IBDS_CLIENTES.FieldByName('TE').AsString:= Dm.IBDS_INATIVOS.FieldByName('TE').AsString;
Dm.IBDS_CLIENTES.FieldByName('ENDERECO').AsString:= Dm.IBDS_INATIVOS.FieldByName('ENDERECO').AsString;
Dm.IBDS_CLIENTES.FieldByName('PONTO_REFERENCIA').AsString:= Dm.IBDS_INATIVOS.FieldByName('PONTO_REFERENCIA').AsString;
Dm.IBDS_CLIENTES.FieldByName('BAIRRO').AsString:= Dm.IBDS_INATIVOS.FieldByName('BAIRRO').AsString;
Dm.IBDS_CLIENTES.FieldByName('CIDADE').AsString:= Dm.IBDS_INATIVOS.FieldByName('CIDADE').AsString;
Dm.IBDS_CLIENTES.FieldByName('CEP').AsString:= Dm.IBDS_INATIVOS.FieldByName('CEP').AsString;
Dm.IBDS_CLIENTES.FieldByName('ESTADO').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESTADO').AsString;
Dm.IBDS_CLIENTES.FieldByName('UF').AsString:= Dm.IBDS_INATIVOS.FieldByName('UF').AsString;
Dm.IBDS_CLIENTES.FieldByName('TELEFONE').AsString:= Dm.IBDS_INATIVOS.FieldByName('TELEFONE').AsString;
Dm.IBDS_CLIENTES.FieldByName('PAGAMENTO_MENSAL').AsString:= Dm.IBDS_INATIVOS.FieldByName('PAGAMENTO_MENSAL').AsString;
Dm.IBDS_CLIENTES.FieldByName('DIA_VENCIMENTO').AsString:= Dm.IBDS_INATIVOS.FieldByName('DIA_VENCIMENTO').AsString;
Dm.IBDS_CLIENTES.FieldByName('MODELOS').AsString:= Dm.IBDS_INATIVOS.FieldByName('MODELOS').AsString;
Dm.IBDS_CLIENTES.FieldByName('OBS').Value:= Dm.IBDS_INATIVOS.FieldByName('OBS').Value;
Dm.IBDS_CLIENTES.FieldByName('FOTO').Value:= Dm.IBDS_INATIVOS.FieldByName('FOTO').Value;
Dm.IBDS_CLIENTES.FieldByName('TC').AsString:= Dm.IBDS_INATIVOS.FieldByName('TC').AsString;
Dm.IBDS_CLIENTES.FieldByName('NOME_EMPRESARIAL').AsString:= Dm.IBDS_INATIVOS.FieldByName('NOME_EMPRESARIAL').AsString;
Dm.IBDS_CLIENTES.FieldByName('NOME_FANTASIA').AsString:= Dm.IBDS_INATIVOS.FieldByName('NOME_FANTASIA').AsString;
Dm.IBDS_CLIENTES.FieldByName('CNPJ').AsString:= Dm.IBDS_INATIVOS.FieldByName('CNPJ').AsString;
Dm.IBDS_CLIENTES.FieldByName('IE').AsString:= Dm.IBDS_INATIVOS.FieldByName('IE').AsString;
Dm.IBDS_CLIENTES.FieldByName('NOME_RESPONSAVEL').AsString:= Dm.IBDS_INATIVOS.FieldByName('NOME_RESPONSAVEL').AsString;
Dm.IBDS_CLIENTES.FieldByName('RAMO_ATIVIDADE').AsString:= Dm.IBDS_INATIVOS.FieldByName('RAMO_ATIVIDADE').AsString;
Dm.IBDS_CLIENTES.FieldByName('FAX').AsString:= Dm.IBDS_INATIVOS.FieldByName('FAX').AsString;
Dm.IBDS_CLIENTES.FieldByName('EMAIL').AsString:= Dm.IBDS_INATIVOS.FieldByName('EMAIL').AsString;
// salva alunos
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CLIENTES.Post;
Dm.IBDS_CLIENTES.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// apaga inativos
Dm.IBDS_INATIVOS.Delete;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
IBQuery_CLIENTES.Close;
// atualiza inativos
Screen.Cursor := crHourGlass;
 IBQuery_INATIVOS.Close;
 IBQuery_INATIVOS.SQL.Clear;
 IBQuery_INATIVOS.SQL.Add('select CODIGO, CPF, DATA_CADASTRO, FOTO, NOME_CLIENTE, RG, TE, TELEFONE, DATA_MOVIDO, USUARIO, RAZAO_MOVIDO from INATIVOS ');
 IBQuery_INATIVOS.SQL.Add('order by CODIGO');
 IBQuery_INATIVOS.Prepare;
 IBQuery_INATIVOS.Open;
Screen.Cursor := crDefault;
MessageBox(FrmInativos.Handle,'Os dados foram restaurados para: "Cadastro de Clientes".','Aviso',0+48);
if DBGrid_Inativos.Fields[1].Text = '' then
begin
Btn_Todos.Enabled:= False;
Btn_Restaurar.Enabled:= False;
DBGrid_Inativos.Enabled:= False;
Btn_Fechar.SetFocus;
Exit;
end else
Btn_Todos.Enabled:= True;
Btn_Restaurar.Enabled:= True;
DBGrid_Inativos.Enabled:= True;
Exit;
end else
IBQuery_CLIENTES.Close;
Screen.Cursor := crDefault;
MessageBox(FrmInativos.Handle,'Dados não restaurados, porque o cadsatro está ativo, tente excluí-lo em "Cadastro de Clientes".','Aviso',0+48);
Restaurado:= 0;
end;

procedure TFrmInativos.DBGrid_InativosKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Btn_RestaurarClick(Nil);
end;
end;

procedure TFrmInativos.DBGrid_InativosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_INATIVOS.Locate('CODIGO', DBGrid_Inativos.Fields[1].Text, []);
end;

procedure TFrmInativos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
// atualiza alunos
if Restaurado = 1 then
begin
Screen.Cursor := crHourGlass;
// fecha conexões
Dm.IBQ_SENHA.Close;
Dm.IBDS_USUARIOS.Close;
Dm.IBDS_EMPRESA.Close;
Dm.IBDS_CLIENTES.Close;
Dm.IBDS_DEPENDE.Close;
Dm.IBDS_INATIVOS.Close;
Dm.IBDS_CEPS.Close;
Dm.IBDS_PROMOTOR.Close;
Dm.IBDatabase.Connected:=False;
Dm.IBTransaction.Active:=False;
// abre conexões
Dm.IBDatabase.Connected:=True;
Dm.IBTransaction.Active:=True;
Dm.IBQ_SENHA.Open;
Dm.IBDS_USUARIOS.Open;
Dm.IBDS_EMPRESA.Open;
Dm.IBDS_CLIENTES.Open;
Dm.IBDS_DEPENDE.Open;
Dm.IBDS_INATIVOS.Open;
Dm.IBDS_CEPS.Open;
Dm.IBDS_PROMOTOR.Open;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmInativos.DBGrid_InativosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Img: TImage;
begin
if not odd(IBQuery_INATIVOS.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Inativos.Canvas.Brush.Color:= cl3DLight;
DBGrid_Inativos.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Inativos.DefaultDrawDataCell(rect,column.Field,State);
end;
  (*pinta o campo foto*)
if Column.Field = IBQuery_INATIVOSFOTO then
begin
if IBQuery_INATIVOSFOTO.Value <> '' then
begin
IBQuery_INATIVOSFOTO.SaveToFile('C:\Windows\Temp\inat.jpg');
FrmPrincipal.ConverterJPegParaBmp('C:\Windows\Temp\inat.jpg');
end else
SemImagem.Picture.SaveToFile('C:\Windows\Temp\inat.bmp');
    if not (gdSelected in State) then // se não for a célula selecionada
    DBGrid_Inativos.Canvas.FillRect(Rect); // limpa a célula
    Img:= TImage.Create(Self);
    with TPicture.Create do
    begin
if DBGrid_Inativos.Fields[1].Text = '' then
begin
Assign(SemImagem.Picture.Bitmap);
end else
Img.Picture.LoadFromFile('C:\Windows\Temp\inat.bmp');
if IBQuery_INATIVOSFOTO.Value = '' then
begin
 Assign(SemImagem.Picture.Bitmap);
end else
    Assign(Img.Picture.Bitmap);
    DBGrid_Inativos.Canvas.StretchDraw(Rect,Bitmap);  // desenha imagem
    Free;
    end;
end;
end;

procedure TFrmInativos.FormShow(Sender: TObject);
begin
FrmInativos.Top:=100;
FrmInativos.Left:=0;
Restaurado:= 0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmInativos.Caption:= FrmInativos.Caption;
end else
FrmInativos.Caption:= FrmInativos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
Screen.Cursor := crHourGlass;
 IBQuery_INATIVOS.Close;
 IBQuery_INATIVOS.SQL.Clear;
 IBQuery_INATIVOS.SQL.Add('select CODIGO, CPF, DATA_CADASTRO, FOTO, NOME_CLIENTE, RG, TE, TELEFONE, DATA_MOVIDO, USUARIO, RAZAO_MOVIDO from INATIVOS ');
 IBQuery_INATIVOS.SQL.Add('order by CODIGO');
 IBQuery_INATIVOS.Prepare;
 IBQuery_INATIVOS.Open;
Screen.Cursor := crDefault;
if DBGrid_Inativos.Fields[1].Text = '' then
begin
Btn_Todos.Enabled:= False;
Btn_Restaurar.Enabled:= False;
DBGrid_Inativos.Enabled:= False;
Btn_Fechar.SetFocus;
Exit;
end else
Btn_Todos.Enabled:= True;
Btn_Restaurar.Enabled:= True;
DBGrid_Inativos.Enabled:= True;
end;

procedure TFrmInativos.DBGrid_InativosCellClick(Column: TColumn);
begin
Dm.IBDS_INATIVOS.Locate('CODIGO', DBGrid_Inativos.Fields[1].Text, []);
end;

end.
