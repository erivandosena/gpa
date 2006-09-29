unit UnDm;

interface

uses
  SysUtils, IBServices, DB, IBCustomDataSet, IBQuery, IBDatabase, Classes, Dialogs;

type
  TDm = class(TDataModule)
    IBDatabase: TIBDatabase;
    IBTransaction: TIBTransaction;
    Ds_CLIENTES: TDataSource;
    Ds_USUARIOS: TDataSource;
    IBDS_USUARIOS: TIBDataSet;
    IBQ_SENHA: TIBQuery;
    DSSENHA: TDataSource;
    IBQ_SENHASENHA: TIBStringField;
    IBQ_SENHANOME_USUARIO: TIBStringField;
    IBDS_EMPRESA: TIBDataSet;
    Ds_EMPRESA: TDataSource;
    IBDS_CLIENTES: TIBDataSet;
    IBQ_CODCLIE: TIBQuery;
    IBDS_INATIVOS: TIBDataSet;
    Ds_INATIVOS: TDataSource;
    IBConfigService: TIBConfigService;
    IBDS_CEPS: TIBDataSet;
    Ds_CEPS: TDataSource;
    IBDS_USUARIOSNOME_USUARIO: TIBStringField;
    IBDS_USUARIOSSENHA: TIBStringField;
    IBDS_USUARIOSANTERIOR: TIBStringField;
    IBDS_CEPSCODIGO: TIntegerField;
    IBDS_CEPSNOME_CID: TIBStringField;
    IBDS_CEPSCEP_CID: TIBStringField;
    IBDS_CEPSESTADO: TIBStringField;
    IBDS_CEPSUF: TIBStringField;
    IBQuery_DmINATIVOS: TIBQuery;
    IBQuery_DmCLIENTES: TIBQuery;
    IBDS_CARNE: TIBDataSet;
    Ds_IBDS_CARNE: TDataSource;
    IBQ_CODCARN: TIBQuery;
    IBDS_EMPRESANOME_EMPRESARIAL: TIBStringField;
    IBDS_EMPRESANOME_FANTASIA: TIBStringField;
    IBDS_EMPRESACNPJ: TIBStringField;
    IBDS_EMPRESAIE: TIBStringField;
    IBDS_EMPRESASLOGAN: TIBStringField;
    IBDS_EMPRESAENDERECO: TIBStringField;
    IBDS_EMPRESABAIRRO: TIBStringField;
    IBDS_EMPRESACEP: TIBStringField;
    IBDS_EMPRESACIDADE: TIBStringField;
    IBDS_EMPRESAESTADO: TIBStringField;
    IBDS_EMPRESAUF: TIBStringField;
    IBDS_EMPRESATELEFONE: TIBStringField;
    IBDS_EMPRESAFAX: TIBStringField;
    IBDS_EMPRESAEMAIL: TIBStringField;
    IBDS_EMPRESAWEBSITE: TIBStringField;
    IBDS_EMPRESASOCIO_1: TIBStringField;
    IBDS_EMPRESASOCIO_2: TIBStringField;
    IBDS_EMPRESAGERENTE: TIBStringField;
    IBDS_EMPRESALOGO_EMPRESA: TBlobField;
    IBDS_EMPRESAJUROS: TFloatField;
    IBDS_EMPRESAMULTA: TFloatField;
    IBDS_EMPRESATAXA_ADMIN: TIBBCDField;
    IBDS_EMPRESAVALOR_SM: TIBBCDField;
    IBDS_CLIENTESCOD_CLIE: TIntegerField;
    IBDS_CLIENTESCODIGO: TIBStringField;
    IBDS_CLIENTESDATA_CADASTRO: TDateTimeField;
    IBDS_CLIENTESNOME_CLIENTE: TIBStringField;
    IBDS_CLIENTESRELIGIAO: TIBStringField;
    IBDS_CLIENTESESTADO_CIVIL: TIBStringField;
    IBDS_CLIENTESSEXO: TIBStringField;
    IBDS_CLIENTESDATA_NASCIMENTO: TDateTimeField;
    IBDS_CLIENTESRG: TIBStringField;
    IBDS_CLIENTESTE: TIBStringField;
    IBDS_CLIENTESENDERECO: TIBStringField;
    IBDS_CLIENTESBAIRRO: TIBStringField;
    IBDS_CLIENTESCIDADE: TIBStringField;
    IBDS_CLIENTESCEP: TIBStringField;
    IBDS_CLIENTESESTADO: TIBStringField;
    IBDS_CLIENTESUF: TIBStringField;
    IBDS_CLIENTESTELEFONE: TIBStringField;
    IBDS_CLIENTESPAGAMENTO_MENSAL: TIBStringField;
    IBDS_CLIENTESDIA_VENCIMENTO: TIBStringField;
    IBDS_CLIENTESMODELOS: TIBStringField;
    IBDS_CLIENTESOBS: TMemoField;
    IBDS_CLIENTESPONTO_REFERENCIA: TIBStringField;
    IBDS_CLIENTESFOTO: TBlobField;
    IBDS_INATIVOSCOD_CLIE: TIntegerField;
    IBDS_INATIVOSCODIGO: TIBStringField;
    IBDS_INATIVOSDATA_CADASTRO: TDateTimeField;
    IBDS_INATIVOSNOME_CLIENTE: TIBStringField;
    IBDS_INATIVOSRELIGIAO: TIBStringField;
    IBDS_INATIVOSESTADO_CIVIL: TIBStringField;
    IBDS_INATIVOSSEXO: TIBStringField;
    IBDS_INATIVOSDATA_NASCIMENTO: TDateTimeField;
    IBDS_INATIVOSRG: TIBStringField;
    IBDS_INATIVOSTE: TIBStringField;
    IBDS_INATIVOSENDERECO: TIBStringField;
    IBDS_INATIVOSPONTO_REFERENCIA: TIBStringField;
    IBDS_INATIVOSBAIRRO: TIBStringField;
    IBDS_INATIVOSCIDADE: TIBStringField;
    IBDS_INATIVOSCEP: TIBStringField;
    IBDS_INATIVOSESTADO: TIBStringField;
    IBDS_INATIVOSUF: TIBStringField;
    IBDS_INATIVOSTELEFONE: TIBStringField;
    IBDS_INATIVOSPAGAMENTO_MENSAL: TIBStringField;
    IBDS_INATIVOSDIA_VENCIMENTO: TIBStringField;
    IBDS_INATIVOSMODELOS: TIBStringField;
    IBDS_INATIVOSOBS: TMemoField;
    IBDS_INATIVOSFOTO: TBlobField;
    IBDS_INATIVOSDATA_MOVIDO: TDateTimeField;
    IBDS_INATIVOSRAZAO_MOVIDO: TIBStringField;
    IBQuery_DmINATIVOSCOD_CLIE: TIntegerField;
    IBQuery_DmCLIENTESCOD_CLIE: TIntegerField;
    IBQ_CODDEPE: TIBQuery;
    Ds_DEPENDE: TDataSource;
    IBDS_DEPENDE: TIBDataSet;
    IBDS_DEPENDECOD_DEPE: TIntegerField;
    IBDS_DEPENDECODIGO: TIBStringField;
    IBDS_DEPENDENOME_DEPENDENTE: TIBStringField;
    IBDS_DEPENDEPARENTESCO: TIBStringField;
    IBDS_CLIENTESAPELIDO_PROMOTOR: TIBStringField;
    IBDS_CLIENTESCODIGO_P: TIBStringField;
    IBDS_PROMOTOR: TIBDataSet;
    Ds_PROMOTOR: TDataSource;
    IBQ_CODPROM: TIBQuery;
    IBDS_PROMOTORCOD_PROM: TIntegerField;
    IBDS_PROMOTORCODIGO_P: TIBStringField;
    IBDS_PROMOTORNOME_PROMOTOR: TIBStringField;
    IBDS_PROMOTORAPELIDO_PROMOTOR: TIBStringField;
    IBDS_CARNECOD_CARN: TIntegerField;
    IBDS_CARNENUMERO_DOC: TIBStringField;
    IBDS_CARNECONTRATO: TIntegerField;
    IBDS_CARNEDATA_CONTRATO: TDateTimeField;
    IBDS_CARNENOME_CLIENTE: TIBStringField;
    IBDS_CARNECODIGO: TIBStringField;
    IBDS_CARNERG: TIBStringField;
    IBDS_CARNETE: TIBStringField;
    IBDS_CARNEENDERECO: TIBStringField;
    IBDS_CARNEBAIRRO: TIBStringField;
    IBDS_CARNECIDADE: TIBStringField;
    IBDS_CARNECEP: TIBStringField;
    IBDS_CARNEESTADO: TIBStringField;
    IBDS_CARNEUF: TIBStringField;
    IBDS_CARNENUMERO_PARCELA: TIBStringField;
    IBDS_CARNEDATA_VENCIMENTO: TDateTimeField;
    IBDS_CARNEVALOR_MENSAL: TIBBCDField;
    IBDS_CARNEDATA_PAGAMENTO: TDateTimeField;
    IBDS_CARNEVALOR_PAGO: TIBBCDField;
    IBDS_CARNEOBS: TIBStringField;
    IBDS_PLANOS: TIBDataSet;
    Ds_PLANOS: TDataSource;
    IBQ_CODPLAN: TIBQuery;
    IBDS_PLANOSCOD_PLAN: TIntegerField;
    IBDS_PLANOSCONTRATO: TIntegerField;
    IBDS_PLANOSDATA_CONTRATO: TDateTimeField;
    IBDS_PLANOSNOME_CLIENTE: TIBStringField;
    IBDS_PLANOSCODIGO: TIBStringField;
    IBDS_PLANOSRG: TIBStringField;
    IBDS_PLANOSTE: TIBStringField;
    IBDS_PLANOSENDERECO: TIBStringField;
    IBDS_PLANOSBAIRRO: TIBStringField;
    IBDS_PLANOSCIDADE: TIBStringField;
    IBDS_PLANOSCEP: TIBStringField;
    IBDS_PLANOSESTADO: TIBStringField;
    IBDS_PLANOSUF: TIBStringField;
    IBDS_PLANOSPAGAMENTO_MENSAL: TIBStringField;
    IBDS_PLANOSDIA_VENCIMENTO: TIBStringField;
    IBDS_PLANOSMODELOS: TIBStringField;
    IBDS_PLANOSAPELIDO_PROMOTOR: TIBStringField;
    IBDS_PLANOSCODIGO_P: TIBStringField;
    IBDS_PLANOSTAXA_ADMIN: TIBBCDField;
    IBDS_PLANOSVALOR_MENSAL: TIBBCDField;
    IBDS_CARNEMES_REFERENCIA: TIBStringField;
    IBDS_EMPRESAINSTRUCAO_CARNE_CLI: TIBStringField;
    IBDS_EMPRESAINSTRUCAO_CARNE_COM1: TIBStringField;
    IBDS_EMPRESAINSTRUCAO_CARNE_COM2: TIBStringField;
    IBDS_EMPRESAINSTRUCAO_CARNE_COM3: TIBStringField;
    IBDS_USUARIOSUSUARIO: TIBStringField;
    IBDS_EMPRESAUSUARIO: TIBStringField;
    IBDS_CLIENTESUSUARIO: TIBStringField;
    IBDS_INATIVOSUSUARIO: TIBStringField;
    IBDS_DEPENDEUSUARIO: TIBStringField;
    IBDS_PROMOTORUSUARIO: TIBStringField;
    IBDS_PLANOSUSUARIO: TIBStringField;
    IBDS_CARNESITUACAO: TIBStringField;
    IBDS_CARNEANO_BASE: TIBStringField;
    IBDS_CARNEUSUARIO: TIBStringField;
    IBDS_CARNEPAGAMENTO_MENSAL: TIBStringField;
    IBDS_CARNEDIA_VENCIMENTO: TIBStringField;
    IBDS_CARNEMODELOS: TIBStringField;
    IBDS_INATIVOSTC: TIBStringField;
    IBDS_INATIVOSNOME_EMPRESARIAL: TIBStringField;
    IBDS_INATIVOSNOME_FANTASIA: TIBStringField;
    IBDS_INATIVOSCNPJ: TIBStringField;
    IBDS_INATIVOSIE: TIBStringField;
    IBDS_INATIVOSNOME_RESPONSAVEL: TIBStringField;
    IBDS_INATIVOSRAMO_ATIVIDADE: TIBStringField;
    IBDS_CLIENTESTC: TIBStringField;
    IBDS_CLIENTESNOME_EMPRESARIAL: TIBStringField;
    IBDS_CLIENTESNOME_FANTASIA: TIBStringField;
    IBDS_CLIENTESCNPJ: TIBStringField;
    IBDS_CLIENTESIE: TIBStringField;
    IBDS_CLIENTESNOME_RESPONSAVEL: TIBStringField;
    IBDS_CLIENTESRAMO_ATIVIDADE: TIBStringField;
    IBDS_INATIVOSFAX: TIBStringField;
    IBDS_INATIVOSEMAIL: TIBStringField;
    IBDS_CLIENTESFAX: TIBStringField;
    IBDS_CLIENTESEMAIL: TIBStringField;
    IBDS_CLIENTESCPF: TIBStringField;
    IBDS_INATIVOSCPF: TIBStringField;
    IBDS_PLANOSCPF: TIBStringField;
    IBDS_CARNECPF: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure IBDS_CLIENTESAfterInsert(DataSet: TDataSet);
    procedure IBDS_CARNEAfterInsert(DataSet: TDataSet);
    procedure IBDS_DEPENDEAfterInsert(DataSet: TDataSet);
    procedure IBDS_PROMOTORAfterInsert(DataSet: TDataSet);
    procedure IBDS_PLANOSAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
begin
IBConfigService.DatabaseName:='IGPA.GDB';
IBConfigService.Params.add('user_name=SYSDBA');
IBConfigService.Params.add('password=masterkey');
Try
   begin
     IBconfigService.Active:=true;
     IBConfigService.SetAsyncMode(False);
     //ATIVADA OPERAÇÃO EM MODO SINCRONO - "Forced Write - Gravação Forçada"
     IBconfigService.Active:=false;
   end;
 except
    Begin
     ShowMessage('Não foi possível ativar modo de operação Síncrono');
    end;
 end;// try
IBQ_SENHA.Open;
IBDS_USUARIOS.Open;
IBDS_EMPRESA.Open;
IBDS_CLIENTES.Open;
IBDS_DEPENDE.Open;
IBDS_INATIVOS.Open;
IBDS_CEPS.Open;
IBDS_PROMOTOR.Open;
end;

procedure TDm.DataModuleDestroy(Sender: TObject);
begin
IBQ_SENHA.Close;
IBDS_USUARIOS.Close;
IBDS_EMPRESA.Close;
IBDS_CLIENTES.Close;
IBDS_DEPENDE.Close;
IBDS_INATIVOS.Close;
IBDS_CEPS.Close;
IBDS_PROMOTOR.Close;
end;

procedure TDm.IBDS_CLIENTESAfterInsert(DataSet: TDataSet);
var
nNum: Integer;
begin
 IBQ_CODCLIE.Open;
 IBQ_CODCLIE.First;
IBQuery_DmINATIVOS.Open;
 IBQuery_DmINATIVOS.Last;
if IBQuery_DmINATIVOS.Fields[0].AsString = '' then
begin
IBQuery_DmINATIVOS.Close;
// normal
If IBQ_CODCLIE.EOF Then
nNum := 0
Else
nNum := IBQ_CODCLIE.Fields[0].AsInteger;
IBQ_CODCLIE.Close;
Inc( nNum );
IBDS_CLIENTESCOD_CLIE.AsInteger:= nNum;
Exit;
end else
// verificacao
   IBQuery_DmINATIVOS.Open;
   IBQuery_DmINATIVOS.Last;
     IBQuery_DmCLIENTES.Open;
     IBQuery_DmCLIENTES.First;
if IBQ_CODCLIE.EOF then
begin
nNum:= IBQ_CODCLIE.Fields[0].AsInteger;
end else
nNum:= IBQuery_DmINATIVOS.Fields[0].AsInteger;
  IBQ_CODCLIE.Close;
  IBQuery_DmINATIVOS.Close;
    Inc(nNum);
if IBQuery_DmCLIENTES.Locate('COD_CLIE', nNum, []) and (nNum = IBQuery_DmCLIENTESCOD_CLIE.AsInteger) then
begin
IBQuery_DmCLIENTES.Last;
 nNum:=IBQuery_DmCLIENTESCOD_CLIE.AsInteger;
 IBQuery_DmCLIENTES.Close;
  Inc(nNum);
IBDS_CLIENTESCOD_CLIE.AsInteger:= nNum;
    Exit;
end else
IBDS_CLIENTESCOD_CLIE.AsInteger:= nNum;
end;

procedure TDm.IBDS_CARNEAfterInsert(DataSet: TDataSet);
var
  nNum: Integer;
begin
  IBQ_CODCARN.Open;
  IBQ_CODCARN.First;
  If IBQ_CODCARN.EOF Then
    nNum := 0
  Else
    nNum := IBQ_CODCARN.Fields[0].AsInteger;
  IBQ_CODCARN.Close;
  Inc( nNum );
IBDS_CARNECOD_CARN.AsInteger := nNum;
end;

procedure TDm.IBDS_DEPENDEAfterInsert(DataSet: TDataSet);
var
  nNum: Integer;
begin
  IBQ_CODDEPE.Open;
  IBQ_CODDEPE.First;
  If IBQ_CODDEPE.EOF Then
    nNum := 0
  Else
    nNum := IBQ_CODDEPE.Fields[0].AsInteger;
  IBQ_CODDEPE.Close;
  Inc( nNum );
IBDS_DEPENDECOD_DEPE.AsInteger := nNum;
Dm.IBDS_DEPENDE.FieldByName('CODIGO').asString:= Dm.IBDS_CLIENTESCODIGO.asString;
end;

procedure TDm.IBDS_PROMOTORAfterInsert(DataSet: TDataSet);
var
  nNum: Integer;
begin
  IBQ_CODPROM.Open;
  IBQ_CODPROM.First;
  If IBQ_CODPROM.EOF Then
    nNum := 0
  Else
    nNum := IBQ_CODPROM.Fields[0].AsInteger;
  IBQ_CODPROM.Close;
  Inc( nNum );
IBDS_PROMOTORCOD_PROM.AsInteger := nNum;
end;

procedure TDm.IBDS_PLANOSAfterInsert(DataSet: TDataSet);
var
  nNum: Integer;
begin
  IBQ_CODPLAN.Open;
  IBQ_CODPLAN.First;
  If IBQ_CODPLAN.EOF Then
    nNum := 0
  Else
    nNum := IBQ_CODPLAN.Fields[0].AsInteger;
  IBQ_CODPLAN.Close;
  Inc( nNum );
IBDS_PLANOSCOD_PLAN.AsInteger := nNum;
end;

end.
