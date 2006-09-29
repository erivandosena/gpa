unit UnAniversariantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, Grids, DBGrids, DateUtils;

type
  TFrmAniversariantes = class(TForm)
    Ds_Aniv: TDataSource;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    IBQuery_Anin: TIBQuery;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    BtnImprimir: TBitBtn;
    Btn_Fechar: TBitBtn;
    DBGrid1: TDBGrid;
    IBQuery_AninBAIRRO: TIBStringField;
    IBQuery_AninCEP: TIBStringField;
    IBQuery_AninCIDADE: TIBStringField;
    IBQuery_AninCODIGO: TIBStringField;
    IBQuery_AninDATA_NASCIMENTO: TDateTimeField;
    IBQuery_AninENDERECO: TIBStringField;
    IBQuery_AninESTADO: TIBStringField;
    IBQuery_AninNOME_CLIENTE: TIBStringField;
    IBQuery_AninPONTO_REFERENCIA: TIBStringField;
    IBQuery_AninRELIGIAO: TIBStringField;
    IBQuery_AninSEXO: TIBStringField;
    IBQuery_AninTELEFONE: TIBStringField;
    IBQuery_AninUF: TIBStringField;
    BtnImprimirCarta: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnImprimirCartaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAniversariantes: TFrmAniversariantes;
  Idade:Integer;

implementation

uses UnDm, UnPrincipal, UnRelAniv, UnRelCartaAniv;

{$R *.DFM}

procedure TFrmAniversariantes.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
ComboBox1.Text:= DateToStr(Date);
ComboBox1.Text:=Formatdatetime('MMMM',strtodate(ComboBox1.Text));
if ComboBox1.Text = 'JANEIRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 1;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'FEVEREIRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 2;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'MARÇO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 3;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'ABRIL' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 4;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'MAIO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 5;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'JUNHO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 6;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'JULHO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 7;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'AGOSTO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 8;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'SETEMBRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 9;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'OUTUBRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 10;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'NOVEMBRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 11;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'DEZEMBRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 12;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
   IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
end;
end;

procedure TFrmAniversariantes.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text = 'JANEIRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 1;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'FEVEREIRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 2;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'MARÇO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 3;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'ABRIL' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 4;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'MAIO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 5;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'JUNHO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 6;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'JULHO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 7;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'AGOSTO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 8;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'SETEMBRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 9;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'OUTUBRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 10;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'NOVEMBRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
  IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 11;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
  IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
  Exit;
  end else
if ComboBox1.Text = 'DEZEMBRO' then
begin
IBQuery_Anin.Close;
  IBQuery_Anin.SQL.Clear;
   IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
  IBQuery_Anin.SQL.Add('where extract(month from DATA_NASCIMENTO) = :Mes');
  IBQuery_Anin.ParamByName('Mes').AsInteger := 12;
  IBQuery_Anin.SQL.Add('order by DATA_NASCIMENTO');
   IBQuery_Anin.Prepare;
  IBQuery_Anin.Open;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
end;
end;

procedure TFrmAniversariantes.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmAniversariantes.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= 'J';
If (ComboBox1.Text = 'J') or (ComboBox1.Text <> 'J') then
begin
ComboBox1.Text:='ANEIRO';
end;
end;

procedure TFrmAniversariantes.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if DBGrid1.Fields[0].text = '' then
begin
Abort;
Exit;
end
else
Dm.Ds_CLIENTES.DataSet.Locate('CODIGO', DBGrid1.Fields[0].text, []);
Close;
FrmPrincipal.BitBtn1.SetFocus;
end;
end;

procedure TFrmAniversariantes.DBGrid1DblClick(Sender: TObject);
begin
if DBGrid1.Fields[0].text = '' then
begin
Abort;
Exit;
end
else
Dm.Ds_CLIENTES.DataSet.Locate('CODIGO', DBGrid1.Fields[0].text, []);
Close;
FrmPrincipal.BitBtn1.SetFocus;
end;

procedure TFrmAniversariantes.RadioButton1Click(Sender: TObject);
begin
IBQuery_Anin.Close;
IBQuery_Anin.SQL.Clear;
IBQuery_Anin.SQL.Add('select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, ESTADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE, UF from CLIENTES ');
IBQuery_Anin.SQL.Add('where EXTRACT(DAY FROM DATA_NASCIMENTO) = :DIA and EXTRACT(MONTH FROM DATA_NASCIMENTO) = :MES');
//e envie nos parâmetros o dia e a hora do sistema, dessa forma
IBQuery_Anin.ParamByName('DIA').AsInteger := StrToInt( FormatDateTime( 'DD',Data ) );
IBQuery_Anin.ParamByName('MES').AsInteger := StrToInt( FormatDateTime( 'MM',Data ) );
IBQuery_Anin.SQL.Add('Order By DATA_NASCIMENTO');
IBQuery_Anin.Prepare;
IBQuery_Anin.Open;
Screen.Cursor := crDefault;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
end;

procedure TFrmAniversariantes.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if DBGrid1.Fields[0].text = '' then
begin
Abort;
Exit;
end
else
Idade:= YearsBetween(StrToDate(DBGrid1.Fields[2].text), StrToDate(DateToStr(Date)));
Label2.Caption:=IntToStr(Idade)+' Anos';
end;

procedure TFrmAniversariantes.DBGrid1CellClick(Column: TColumn);
begin
if DBGrid1.Fields[0].text = '' then
begin
Abort;
Exit;
end
else
Idade:= YearsBetween(StrToDate(DBGrid1.Fields[2].text), StrToDate(DateToStr(Date)));
Label2.Caption:=IntToStr(Idade)+' Anos';
end;

procedure TFrmAniversariantes.FormShow(Sender: TObject);
begin
FrmAniversariantes.Top:=100;
FrmAniversariantes.Left:=0;
if DBGrid1.Fields[1].Text = '' then
begin
BtnImprimir.Enabled:= False;
Btn_Fechar.SetFocus;
end else
BtnImprimir.Enabled:= True;
DBGrid1.SetFocus;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmAniversariantes.Caption:= FrmAniversariantes.Caption;
Exit;
end else
FrmAniversariantes.Caption:= FrmAniversariantes.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmAniversariantes.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmAniversariantes.BtnImprimirClick(Sender: TObject);
begin
if FrmRelAniv <> Nil then Exit;
FrmRelAniv := TFrmRelAniv.Create(self);
FrmRelAniv.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelAniv.QuickRep1.Preview;
FrmRelAniv.Free;
FrmRelAniv := Nil;
end;

procedure TFrmAniversariantes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_Anin.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid1.Canvas.Brush.Color:= cl3DLight;
DBGrid1.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid1.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmAniversariantes.BtnImprimirCartaClick(Sender: TObject);
begin
if FrmRelCartaAniv <> Nil then Exit;
FrmRelCartaAniv := TFrmRelCartaAniv.Create(self);
FrmRelCartaAniv.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelCartaAniv.QuickRep1.Preview;
FrmRelCartaAniv.Free;
FrmRelCartaAniv := Nil;
end;

end.
