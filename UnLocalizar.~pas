unit UnLocalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, Mask,
  ExtCtrls, Grids, DBGrids;

type
  TFrmLocalizar = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    Bevel1: TBevel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    Label5: TLabel;
    Edit1: TMaskEdit;
    RadioButton1: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    BitBtn2: TBitBtn;
    Bevel2: TBevel;
    RadioButton2: TRadioButton;
    DataSource2: TDataSource;
    IBQuery1CODIGO: TIBStringField;
    IBQuery1NOME_CLIENTE: TIBStringField;
    IBQuery1RG: TIBStringField;
    IBQuery1CPF: TIBStringField;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton33Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton33KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton3KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton2KeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocalizar: TFrmLocalizar;

implementation

uses UnDm, UnPrincipal;

{$R *.dfm}

procedure TFrmLocalizar.Edit1Change(Sender: TObject);
var a,b,c: String;
begin
Screen.Cursor := crHourglass;
If Edit1.Text = '' then
Begin
IBQuery1.SQL.Clear;
end else
if RadioButton1.Checked = True then begin
Edit1.MaxLength:=11;
IBQuery1.SQL.Clear;
a:='select CODIGO, CPF, NOME_CLIENTE, RG from CLIENTES ';
b:='Where CODIGO Like:Consulta ';
c:='Order By NOME_CLIENTE';
IBQuery1.SQL.Add(a+b+c);
IBQuery1.Params[0].AsString;
IBQuery1.ParamByName('Consulta').AsString:=Edit1.Text;
IBQuery1.Close;
IBQuery1.Open
end else
if RadioButton2.Checked = True then begin
Edit1.MaxLength:=49;
IBQuery1.SQL.Clear;
a:='select CODIGO, CPF, NOME_CLIENTE, RG from CLIENTES ';
b:='Where NOME_CLIENTE Like:Consulta ';
c:='Order By NOME_CLIENTE';
IBQuery1.SQL.Add(a+b+c);
IBQuery1.Params[0].AsString;
IBQuery1.ParamByName('Consulta').AsString:=Edit1.Text+'%';
IBQuery1.Close;
IBQuery1.Open
end else
if RadioButton3.Checked = True then begin
Edit1.MaxLength:=15;
IBQuery1.SQL.Clear;
a:='select CODIGO, CPF, NOME_CLIENTE, RG from CLIENTES ';
b:='Where CPF Like:Consulta ';
c:='Order By NOME_CLIENTE';
IBQuery1.SQL.Add(a+b+c);
IBQuery1.Params[0].AsString;
IBQuery1.ParamByName('Consulta').AsString:=Edit1.Text;
IBQuery1.Close;
IBQuery1.Open
end else
if RadioButton4.Checked = True then begin
Edit1.MaxLength:=24;
IBQuery1.SQL.Clear;
a:='select CODIGO, CPF, NOME_CLIENTE, RG from CLIENTES ';
b:='Where RG Like:Consulta ';
c:='Order By NOME_CLIENTE';
IBQuery1.SQL.Add(a+b+c);
IBQuery1.Params[0].AsString;
IBQuery1.ParamByName('Consulta').AsString:=Edit1.Text+'%';
IBQuery1.Close;
IBQuery1.Open
end;
Screen.Cursor := crDefault;
end;

procedure TFrmLocalizar.DBGrid1CellClick(Column: TColumn);
begin
if Edit1.text = '' then
begin
Abort;
Exit;
end else
DataSource2.DataSet.Locate('CODIGO', DBGrid1.Fields[0].text, []);
end;

procedure TFrmLocalizar.FormShow(Sender: TObject);
begin
FrmLocalizar.Top:= 182;
FrmLocalizar.Left:= 50;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmLocalizar.Caption:= FrmLocalizar.Caption;
Exit;
end else
FrmLocalizar.Caption:= FrmLocalizar.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
Edit1.SetFocus;
end;

procedure TFrmLocalizar.DBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFrmLocalizar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
DBGrid1.SetFocus;
If FrmPrincipal.Enabled = True then
begin
FrmPrincipal.BitBtn1.SetFocus;
Close;
end;
end;
end;

procedure TFrmLocalizar.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrmLocalizar.RadioButton1Click(Sender: TObject);
begin
Label5.Caption:='Informe o código do cliente:';
Edit1.Text:= '';
Edit1.MaxLength:= 11;
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.RadioButton33Click(Sender: TObject);
begin
Label5.Caption:='Informe o número do CPF do cliente:';
Edit1.Text:= '';
Edit1.MaxLength:= 15;
Edit1.EditMask:= '999.999.999-99;1;_';
end;

procedure TFrmLocalizar.RadioButton3Click(Sender: TObject);
begin
Label5.Caption:='Informe o número do RG do cliente:';
Edit1.Text:= '';
Edit1.MaxLength:= 24;
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.RadioButton4Click(Sender: TObject);
begin
Label5.Caption:='Informe o nº de matrícula do(a) sócio(a):';
Edit1.Text:= '';
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if RadioButton1.Checked = True then
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
end;
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if RadioButton1.Checked = True then
begin
Edit1.Text:= FrmPrincipal.RetZero(Edit1.Text, 4);
DBGrid1.SetFocus;
end else
DBGrid1.SetFocus;
end;
end;

procedure TFrmLocalizar.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.RadioButton33KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.RadioButton3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.RadioButton4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Edit1.text = '' then
begin
Abort;
Exit;
end else
DataSource2.DataSet.Locate('CODIGO', DBGrid1.Fields[0].text, []);
end;

procedure TFrmLocalizar.RadioButton2Click(Sender: TObject);
begin
Label5.Caption:='Informe o nome do cliente:';
Edit1.Text:= '';
Edit1.MaxLength:= 49;
Edit1.EditMask:='';
end;

procedure TFrmLocalizar.RadioButton2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Edit1.SetFocus;
  end;
end;

procedure TFrmLocalizar.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmLocalizar.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
if RadioButton2.Checked = True then
begin
  with Edit1 do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if Dm.IBDS_CLIENTES.Locate('NOME_CLIENTE', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := Dm.IBDS_CLIENTES.FieldByName('NOME_CLIENTE').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;
end;

procedure TFrmLocalizar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery1.RecNo) then // se for impar
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

end.




