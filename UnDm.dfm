object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 202
  Top = 113
  Height = 383
  Width = 583
  object IBDatabase: TIBDatabase
    DatabaseName = 'C:\Arquivos de programas\Inforamos\GPA\Informac\IGPA.GDB'
    Params.Strings = (
      'user_name=INFORAMOS'
      'password=eri21033001')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    Left = 40
    Top = 8
  end
  object IBTransaction: TIBTransaction
    DefaultDatabase = IBDatabase
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version')
    Left = 112
    Top = 8
  end
  object Ds_CLIENTES: TDataSource
    DataSet = IBDS_CLIENTES
    Left = 224
    Top = 128
  end
  object Ds_USUARIOS: TDataSource
    DataSet = IBDS_USUARIOS
    Left = 32
    Top = 128
  end
  object IBDS_USUARIOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  NOME_USUARIO = :OLD_NOME_USUARIO')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      '  (NOME_USUARIO, SENHA, ANTERIOR, USUARIO)'
      'values'
      '  (:NOME_USUARIO, :SENHA, :ANTERIOR, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  NOME_USUARIO,'
      '  SENHA,'
      '  ANTERIOR,'
      '  USUARIO'
      'from USUARIOS '
      'where'
      '  NOME_USUARIO = :NOME_USUARIO')
    SelectSQL.Strings = (
      'select * from USUARIOS'
      'order by NOME_USUARIO')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  NOME_USUARIO = :NOME_USUARIO,'
      '  SENHA = :SENHA,'
      '  ANTERIOR = :ANTERIOR,'
      '  USUARIO = :USUARIO'
      'where'
      '  NOME_USUARIO = :OLD_NOME_USUARIO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 32
    Top = 72
    object IBDS_USUARIOSNOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      Origin = '"USUARIOS"."NOME_USUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_USUARIOSSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      Size = 15
    end
    object IBDS_USUARIOSANTERIOR: TIBStringField
      FieldName = 'ANTERIOR'
      Origin = '"USUARIOS"."ANTERIOR"'
      Size = 15
    end
    object IBDS_USUARIOSUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"USUARIOS"."USUARIO"'
    end
  end
  object IBQ_SENHA: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from USUARIOS')
    Left = 280
    Top = 8
    object IBQ_SENHANOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      Origin = '"USUARIOS"."NOME_USUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
    end
    object IBQ_SENHASENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      FixedChar = True
      Size = 15
    end
  end
  object DSSENHA: TDataSource
    DataSet = IBQ_SENHA
    Left = 352
    Top = 8
  end
  object IBDS_EMPRESA: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from EMPRESA'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into EMPRESA'
      
        '  (NOME_EMPRESARIAL, NOME_FANTASIA, CNPJ, IE, SLOGAN, ENDERECO, ' +
        'BAIRRO, '
      
        '   CEP, CIDADE, ESTADO, UF, TELEFONE, FAX, EMAIL, WEBSITE, SOCIO' +
        '_1, SOCIO_2, '
      
        '   GERENTE, LOGO_EMPRESA, JUROS, MULTA, TAXA_ADMIN, VALOR_SM, IN' +
        'STRUCAO_CARNE_CLI, '
      
        '   INSTRUCAO_CARNE_COM1, INSTRUCAO_CARNE_COM2, INSTRUCAO_CARNE_C' +
        'OM3, USUARIO)'
      'values'
      
        '  (:NOME_EMPRESARIAL, :NOME_FANTASIA, :CNPJ, :IE, :SLOGAN, :ENDE' +
        'RECO, :BAIRRO, '
      
        '   :CEP, :CIDADE, :ESTADO, :UF, :TELEFONE, :FAX, :EMAIL, :WEBSIT' +
        'E, :SOCIO_1, '
      
        '   :SOCIO_2, :GERENTE, :LOGO_EMPRESA, :JUROS, :MULTA, :TAXA_ADMI' +
        'N, :VALOR_SM, '
      
        '   :INSTRUCAO_CARNE_CLI, :INSTRUCAO_CARNE_COM1, :INSTRUCAO_CARNE' +
        '_COM2, '
      '   :INSTRUCAO_CARNE_COM3, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  NOME_EMPRESARIAL,'
      '  NOME_FANTASIA,'
      '  CNPJ,'
      '  IE,'
      '  SLOGAN,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CEP,'
      '  CIDADE,'
      '  ESTADO,'
      '  UF,'
      '  TELEFONE,'
      '  FAX,'
      '  EMAIL,'
      '  WEBSITE,'
      '  SOCIO_1,'
      '  SOCIO_2,'
      '  GERENTE,'
      '  LOGO_EMPRESA,'
      '  JUROS,'
      '  MULTA,'
      '  TAXA_ADMIN,'
      '  VALOR_SM,'
      '  INSTRUCAO_CARNE_CLI,'
      '  INSTRUCAO_CARNE_COM1,'
      '  INSTRUCAO_CARNE_COM2,'
      '  INSTRUCAO_CARNE_COM3,'
      '  USUARIO'
      'from EMPRESA '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select * from EMPRESA')
    ModifySQL.Strings = (
      'update EMPRESA'
      'set'
      '  NOME_EMPRESARIAL = :NOME_EMPRESARIAL,'
      '  NOME_FANTASIA = :NOME_FANTASIA,'
      '  CNPJ = :CNPJ,'
      '  IE = :IE,'
      '  SLOGAN = :SLOGAN,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  ESTADO = :ESTADO,'
      '  UF = :UF,'
      '  TELEFONE = :TELEFONE,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL,'
      '  WEBSITE = :WEBSITE,'
      '  SOCIO_1 = :SOCIO_1,'
      '  SOCIO_2 = :SOCIO_2,'
      '  GERENTE = :GERENTE,'
      '  LOGO_EMPRESA = :LOGO_EMPRESA,'
      '  JUROS = :JUROS,'
      '  MULTA = :MULTA,'
      '  TAXA_ADMIN = :TAXA_ADMIN,'
      '  VALOR_SM = :VALOR_SM,'
      '  INSTRUCAO_CARNE_CLI = :INSTRUCAO_CARNE_CLI,'
      '  INSTRUCAO_CARNE_COM1 = :INSTRUCAO_CARNE_COM1,'
      '  INSTRUCAO_CARNE_COM2 = :INSTRUCAO_CARNE_COM2,'
      '  INSTRUCAO_CARNE_COM3 = :INSTRUCAO_CARNE_COM3,'
      '  USUARIO = :USUARIO'
      'where'
      '  CNPJ = :OLD_CNPJ')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 132
    Top = 76
    object IBDS_EMPRESANOME_EMPRESARIAL: TIBStringField
      FieldName = 'NOME_EMPRESARIAL'
      Origin = '"EMPRESA"."NOME_EMPRESARIAL"'
      Size = 116
    end
    object IBDS_EMPRESANOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"EMPRESA"."NOME_FANTASIA"'
      Size = 56
    end
    object IBDS_EMPRESACNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EMPRESA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '99.999.999/9999-99;1;_'
      Size = 18
    end
    object IBDS_EMPRESAIE: TIBStringField
      FieldName = 'IE'
      Origin = '"EMPRESA"."IE"'
      Size = 11
    end
    object IBDS_EMPRESASLOGAN: TIBStringField
      FieldName = 'SLOGAN'
      Origin = '"EMPRESA"."SLOGAN"'
      Size = 30
    end
    object IBDS_EMPRESAENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"EMPRESA"."ENDERECO"'
      Size = 50
    end
    object IBDS_EMPRESABAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"EMPRESA"."BAIRRO"'
      Size = 30
    end
    object IBDS_EMPRESACEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"EMPRESA"."CEP"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_EMPRESACIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"EMPRESA"."CIDADE"'
      Size = 25
    end
    object IBDS_EMPRESAESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"EMPRESA"."ESTADO"'
      Size = 25
    end
    object IBDS_EMPRESAUF: TIBStringField
      FieldName = 'UF'
      Origin = '"EMPRESA"."UF"'
      Size = 2
    end
    object IBDS_EMPRESATELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"EMPRESA"."TELEFONE"'
      EditMask = '(99)9999.9999;1;_'
    end
    object IBDS_EMPRESAFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"EMPRESA"."FAX"'
      EditMask = '(99)999.9999;1;_'
    end
    object IBDS_EMPRESAEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"EMPRESA"."EMAIL"'
      Size = 50
    end
    object IBDS_EMPRESAWEBSITE: TIBStringField
      FieldName = 'WEBSITE'
      Origin = '"EMPRESA"."WEBSITE"'
      Size = 50
    end
    object IBDS_EMPRESASOCIO_1: TIBStringField
      FieldName = 'SOCIO_1'
      Origin = '"EMPRESA"."SOCIO_1"'
      Size = 50
    end
    object IBDS_EMPRESASOCIO_2: TIBStringField
      FieldName = 'SOCIO_2'
      Origin = '"EMPRESA"."SOCIO_2"'
      Size = 50
    end
    object IBDS_EMPRESAGERENTE: TIBStringField
      FieldName = 'GERENTE'
      Origin = '"EMPRESA"."GERENTE"'
      Size = 50
    end
    object IBDS_EMPRESALOGO_EMPRESA: TBlobField
      FieldName = 'LOGO_EMPRESA'
      Origin = '"EMPRESA"."LOGO_EMPRESA"'
      Size = 8
    end
    object IBDS_EMPRESAJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"EMPRESA"."JUROS"'
      currency = True
    end
    object IBDS_EMPRESAMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = '"EMPRESA"."MULTA"'
    end
    object IBDS_EMPRESATAXA_ADMIN: TIBBCDField
      FieldName = 'TAXA_ADMIN'
      Origin = '"EMPRESA"."TAXA_ADMIN"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_EMPRESAVALOR_SM: TIBBCDField
      FieldName = 'VALOR_SM'
      Origin = '"EMPRESA"."VALOR_SM"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_EMPRESAINSTRUCAO_CARNE_CLI: TIBStringField
      FieldName = 'INSTRUCAO_CARNE_CLI'
      Origin = '"EMPRESA"."INSTRUCAO_CARNE_CLI"'
      Size = 38
    end
    object IBDS_EMPRESAINSTRUCAO_CARNE_COM1: TIBStringField
      FieldName = 'INSTRUCAO_CARNE_COM1'
      Origin = '"EMPRESA"."INSTRUCAO_CARNE_COM1"'
      Size = 38
    end
    object IBDS_EMPRESAINSTRUCAO_CARNE_COM2: TIBStringField
      FieldName = 'INSTRUCAO_CARNE_COM2'
      Origin = '"EMPRESA"."INSTRUCAO_CARNE_COM2"'
      Size = 38
    end
    object IBDS_EMPRESAINSTRUCAO_CARNE_COM3: TIBStringField
      FieldName = 'INSTRUCAO_CARNE_COM3'
      Origin = '"EMPRESA"."INSTRUCAO_CARNE_COM3"'
      Size = 38
    end
    object IBDS_EMPRESAUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"EMPRESA"."USUARIO"'
    end
  end
  object Ds_EMPRESA: TDataSource
    DataSet = IBDS_EMPRESA
    Left = 128
    Top = 128
  end
  object IBDS_CLIENTES: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_CLIENTESAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CLIENTES'
      'where'
      '  COD_CLIE = :OLD_COD_CLIE')
    InsertSQL.Strings = (
      'insert into CLIENTES'
      
        '  (COD_CLIE, CODIGO, DATA_CADASTRO, NOME_CLIENTE, RELIGIAO, ESTA' +
        'DO_CIVIL, '
      
        '   SEXO, DATA_NASCIMENTO, RG, CPF, TE, ENDERECO, PONTO_REFERENCI' +
        'A, BAIRRO, '
      
        '   CIDADE, CEP, ESTADO, UF, TELEFONE, PAGAMENTO_MENSAL, DIA_VENC' +
        'IMENTO, '
      
        '   MODELOS, APELIDO_PROMOTOR, CODIGO_P, OBS, FOTO, USUARIO, TC, ' +
        'NOME_EMPRESARIAL, '
      
        '   NOME_FANTASIA, CNPJ, IE, NOME_RESPONSAVEL, RAMO_ATIVIDADE, FA' +
        'X, EMAIL)'
      'values'
      
        '  (:COD_CLIE, :CODIGO, :DATA_CADASTRO, :NOME_CLIENTE, :RELIGIAO,' +
        ' :ESTADO_CIVIL, '
      
        '   :SEXO, :DATA_NASCIMENTO, :RG, :CPF, :TE, :ENDERECO, :PONTO_RE' +
        'FERENCIA, '
      
        '   :BAIRRO, :CIDADE, :CEP, :ESTADO, :UF, :TELEFONE, :PAGAMENTO_M' +
        'ENSAL, '
      
        '   :DIA_VENCIMENTO, :MODELOS, :APELIDO_PROMOTOR, :CODIGO_P, :OBS' +
        ', :FOTO, '
      
        '   :USUARIO, :TC, :NOME_EMPRESARIAL, :NOME_FANTASIA, :CNPJ, :IE,' +
        ' :NOME_RESPONSAVEL, '
      '   :RAMO_ATIVIDADE, :FAX, :EMAIL)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CLIE,'
      '  CODIGO,'
      '  DATA_CADASTRO,'
      '  NOME_CLIENTE,'
      '  RELIGIAO,'
      '  ESTADO_CIVIL,'
      '  SEXO,'
      '  DATA_NASCIMENTO,'
      '  RG,'
      '  CPF,'
      '  TE,'
      '  ENDERECO,'
      '  PONTO_REFERENCIA,'
      '  BAIRRO,'
      '  CIDADE,'
      '  CEP,'
      '  ESTADO,'
      '  UF,'
      '  TELEFONE,'
      '  PAGAMENTO_MENSAL,'
      '  DIA_VENCIMENTO,'
      '  MODELOS,'
      '  APELIDO_PROMOTOR,'
      '  CODIGO_P,'
      '  OBS,'
      '  FOTO,'
      '  USUARIO,'
      '  TC,'
      '  NOME_EMPRESARIAL,'
      '  NOME_FANTASIA,'
      '  CNPJ,'
      '  IE,'
      '  NOME_RESPONSAVEL,'
      '  RAMO_ATIVIDADE,'
      '  FAX,'
      '  EMAIL'
      'from CLIENTES '
      'where'
      '  COD_CLIE = :COD_CLIE')
    SelectSQL.Strings = (
      'select * from CLIENTES'
      'order by CODIGO')
    ModifySQL.Strings = (
      'update CLIENTES'
      'set'
      '  COD_CLIE = :COD_CLIE,'
      '  CODIGO = :CODIGO,'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  RELIGIAO = :RELIGIAO,'
      '  ESTADO_CIVIL = :ESTADO_CIVIL,'
      '  SEXO = :SEXO,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  TE = :TE,'
      '  ENDERECO = :ENDERECO,'
      '  PONTO_REFERENCIA = :PONTO_REFERENCIA,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  CEP = :CEP,'
      '  ESTADO = :ESTADO,'
      '  UF = :UF,'
      '  TELEFONE = :TELEFONE,'
      '  PAGAMENTO_MENSAL = :PAGAMENTO_MENSAL,'
      '  DIA_VENCIMENTO = :DIA_VENCIMENTO,'
      '  MODELOS = :MODELOS,'
      '  APELIDO_PROMOTOR = :APELIDO_PROMOTOR,'
      '  CODIGO_P = :CODIGO_P,'
      '  OBS = :OBS,'
      '  FOTO = :FOTO,'
      '  USUARIO = :USUARIO,'
      '  TC = :TC,'
      '  NOME_EMPRESARIAL = :NOME_EMPRESARIAL,'
      '  NOME_FANTASIA = :NOME_FANTASIA,'
      '  CNPJ = :CNPJ,'
      '  IE = :IE,'
      '  NOME_RESPONSAVEL = :NOME_RESPONSAVEL,'
      '  RAMO_ATIVIDADE = :RAMO_ATIVIDADE,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL'
      'where'
      '  COD_CLIE = :OLD_COD_CLIE')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 220
    Top = 80
    object IBDS_CLIENTESCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
      Origin = '"CLIENTES"."COD_CLIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_CLIENTESCODIGO: TIBStringField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 11
    end
    object IBDS_CLIENTESDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Origin = '"CLIENTES"."DATA_CADASTRO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CLIENTESNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CLIENTES"."NOME_CLIENTE"'
      Size = 50
    end
    object IBDS_CLIENTESRELIGIAO: TIBStringField
      FieldName = 'RELIGIAO'
      Origin = '"CLIENTES"."RELIGIAO"'
      Size = 30
    end
    object IBDS_CLIENTESESTADO_CIVIL: TIBStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = '"CLIENTES"."ESTADO_CIVIL"'
      Size = 25
    end
    object IBDS_CLIENTESSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"CLIENTES"."SEXO"'
      Size = 9
    end
    object IBDS_CLIENTESDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"CLIENTES"."DATA_NASCIMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CLIENTESRG: TIBStringField
      FieldName = 'RG'
      Origin = '"CLIENTES"."RG"'
      Size = 25
    end
    object IBDS_CLIENTESCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
      EditMask = '999.999.999-99;1;_'
    end
    object IBDS_CLIENTESTE: TIBStringField
      FieldName = 'TE'
      Origin = '"CLIENTES"."TE"'
      Size = 25
    end
    object IBDS_CLIENTESENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object IBDS_CLIENTESPONTO_REFERENCIA: TIBStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = '"CLIENTES"."PONTO_REFERENCIA"'
      Size = 35
    end
    object IBDS_CLIENTESBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Size = 30
    end
    object IBDS_CLIENTESCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 25
    end
    object IBDS_CLIENTESCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_CLIENTESESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Size = 25
    end
    object IBDS_CLIENTESUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CLIENTES"."UF"'
      Size = 2
    end
    object IBDS_CLIENTESTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"CLIENTES"."TELEFONE"'
      EditMask = '(99)9999.9999;1;_'
    end
    object IBDS_CLIENTESPAGAMENTO_MENSAL: TIBStringField
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"CLIENTES"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBDS_CLIENTESDIA_VENCIMENTO: TIBStringField
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"CLIENTES"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBDS_CLIENTESMODELOS: TIBStringField
      FieldName = 'MODELOS'
      Origin = '"CLIENTES"."MODELOS"'
      Size = 10
    end
    object IBDS_CLIENTESAPELIDO_PROMOTOR: TIBStringField
      FieldName = 'APELIDO_PROMOTOR'
      Origin = '"CLIENTES"."APELIDO_PROMOTOR"'
      Size = 25
    end
    object IBDS_CLIENTESCODIGO_P: TIBStringField
      FieldName = 'CODIGO_P'
      Origin = '"CLIENTES"."CODIGO_P"'
      Size = 11
    end
    object IBDS_CLIENTESOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"CLIENTES"."OBS"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_CLIENTESFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"CLIENTES"."FOTO"'
      Size = 8
    end
    object IBDS_CLIENTESUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"CLIENTES"."USUARIO"'
    end
    object IBDS_CLIENTESTC: TIBStringField
      FieldName = 'TC'
      Origin = '"CLIENTES"."TC"'
      Size = 2
    end
    object IBDS_CLIENTESNOME_EMPRESARIAL: TIBStringField
      FieldName = 'NOME_EMPRESARIAL'
      Origin = '"CLIENTES"."NOME_EMPRESARIAL"'
      Size = 116
    end
    object IBDS_CLIENTESNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"CLIENTES"."NOME_FANTASIA"'
      Size = 56
    end
    object IBDS_CLIENTESCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CLIENTES"."CNPJ"'
      EditMask = '99.999.999/9999-99;1;_'
      Size = 18
    end
    object IBDS_CLIENTESIE: TIBStringField
      FieldName = 'IE'
      Origin = '"CLIENTES"."IE"'
      Size = 11
    end
    object IBDS_CLIENTESNOME_RESPONSAVEL: TIBStringField
      FieldName = 'NOME_RESPONSAVEL'
      Origin = '"CLIENTES"."NOME_RESPONSAVEL"'
      Size = 50
    end
    object IBDS_CLIENTESRAMO_ATIVIDADE: TIBStringField
      FieldName = 'RAMO_ATIVIDADE'
      Origin = '"CLIENTES"."RAMO_ATIVIDADE"'
      Size = 30
    end
    object IBDS_CLIENTESFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"CLIENTES"."FAX"'
      EditMask = '(99)9999.9999;1;_'
    end
    object IBDS_CLIENTESEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTES"."EMAIL"'
      Size = 50
    end
  end
  object IBQ_CODCLIE: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_CLIE) from CLIENTES')
    Left = 240
    Top = 184
  end
  object IBDS_INATIVOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from INATIVOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into INATIVOS'
      
        '  (COD_CLIE, CODIGO, DATA_CADASTRO, NOME_CLIENTE, RELIGIAO, ESTA' +
        'DO_CIVIL, '
      
        '   SEXO, DATA_NASCIMENTO, RG, CPF, TE, ENDERECO, PONTO_REFERENCI' +
        'A, BAIRRO, '
      
        '   CIDADE, CEP, ESTADO, UF, TELEFONE, PAGAMENTO_MENSAL, DIA_VENC' +
        'IMENTO, '
      
        '   MODELOS, OBS, FOTO, DATA_MOVIDO, USUARIO, RAZAO_MOVIDO, TC, N' +
        'OME_EMPRESARIAL, '
      
        '   NOME_FANTASIA, CNPJ, IE, NOME_RESPONSAVEL, RAMO_ATIVIDADE, FA' +
        'X, EMAIL)'
      'values'
      
        '  (:COD_CLIE, :CODIGO, :DATA_CADASTRO, :NOME_CLIENTE, :RELIGIAO,' +
        ' :ESTADO_CIVIL, '
      
        '   :SEXO, :DATA_NASCIMENTO, :RG, :CPF, :TE, :ENDERECO, :PONTO_RE' +
        'FERENCIA, '
      
        '   :BAIRRO, :CIDADE, :CEP, :ESTADO, :UF, :TELEFONE, :PAGAMENTO_M' +
        'ENSAL, '
      
        '   :DIA_VENCIMENTO, :MODELOS, :OBS, :FOTO, :DATA_MOVIDO, :USUARI' +
        'O, :RAZAO_MOVIDO, '
      
        '   :TC, :NOME_EMPRESARIAL, :NOME_FANTASIA, :CNPJ, :IE, :NOME_RES' +
        'PONSAVEL, '
      '   :RAMO_ATIVIDADE, :FAX, :EMAIL)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CLIE,'
      '  CODIGO,'
      '  DATA_CADASTRO,'
      '  NOME_CLIENTE,'
      '  RELIGIAO,'
      '  ESTADO_CIVIL,'
      '  SEXO,'
      '  DATA_NASCIMENTO,'
      '  RG,'
      '  CPF,'
      '  TE,'
      '  ENDERECO,'
      '  PONTO_REFERENCIA,'
      '  BAIRRO,'
      '  CIDADE,'
      '  CEP,'
      '  ESTADO,'
      '  UF,'
      '  TELEFONE,'
      '  PAGAMENTO_MENSAL,'
      '  DIA_VENCIMENTO,'
      '  MODELOS,'
      '  OBS,'
      '  FOTO,'
      '  DATA_MOVIDO,'
      '  USUARIO,'
      '  RAZAO_MOVIDO,'
      '  TC,'
      '  NOME_EMPRESARIAL,'
      '  NOME_FANTASIA,'
      '  CNPJ,'
      '  IE,'
      '  NOME_RESPONSAVEL,'
      '  RAMO_ATIVIDADE,'
      '  FAX,'
      '  EMAIL'
      'from INATIVOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from INATIVOS'
      'order by COD_CLIE')
    ModifySQL.Strings = (
      'update INATIVOS'
      'set'
      '  COD_CLIE = :COD_CLIE,'
      '  CODIGO = :CODIGO,'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  RELIGIAO = :RELIGIAO,'
      '  ESTADO_CIVIL = :ESTADO_CIVIL,'
      '  SEXO = :SEXO,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  TE = :TE,'
      '  ENDERECO = :ENDERECO,'
      '  PONTO_REFERENCIA = :PONTO_REFERENCIA,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  CEP = :CEP,'
      '  ESTADO = :ESTADO,'
      '  UF = :UF,'
      '  TELEFONE = :TELEFONE,'
      '  PAGAMENTO_MENSAL = :PAGAMENTO_MENSAL,'
      '  DIA_VENCIMENTO = :DIA_VENCIMENTO,'
      '  MODELOS = :MODELOS,'
      '  OBS = :OBS,'
      '  FOTO = :FOTO,'
      '  DATA_MOVIDO = :DATA_MOVIDO,'
      '  USUARIO = :USUARIO,'
      '  RAZAO_MOVIDO = :RAZAO_MOVIDO,'
      '  TC = :TC,'
      '  NOME_EMPRESARIAL = :NOME_EMPRESARIAL,'
      '  NOME_FANTASIA = :NOME_FANTASIA,'
      '  CNPJ = :CNPJ,'
      '  IE = :IE,'
      '  NOME_RESPONSAVEL = :NOME_RESPONSAVEL,'
      '  RAMO_ATIVIDADE = :RAMO_ATIVIDADE,'
      '  FAX = :FAX,'
      '  EMAIL = :EMAIL'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 316
    Top = 76
    object IBDS_INATIVOSCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
      Origin = '"INATIVOS"."COD_CLIE"'
      Required = True
    end
    object IBDS_INATIVOSCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"INATIVOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 11
    end
    object IBDS_INATIVOSDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Origin = '"INATIVOS"."DATA_CADASTRO"'
    end
    object IBDS_INATIVOSNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"INATIVOS"."NOME_CLIENTE"'
      Size = 50
    end
    object IBDS_INATIVOSRELIGIAO: TIBStringField
      FieldName = 'RELIGIAO'
      Origin = '"INATIVOS"."RELIGIAO"'
      Size = 30
    end
    object IBDS_INATIVOSESTADO_CIVIL: TIBStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = '"INATIVOS"."ESTADO_CIVIL"'
      Size = 25
    end
    object IBDS_INATIVOSSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"INATIVOS"."SEXO"'
      Size = 9
    end
    object IBDS_INATIVOSDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"INATIVOS"."DATA_NASCIMENTO"'
    end
    object IBDS_INATIVOSRG: TIBStringField
      FieldName = 'RG'
      Origin = '"INATIVOS"."RG"'
      Size = 25
    end
    object IBDS_INATIVOSCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"INATIVOS"."CPF"'
    end
    object IBDS_INATIVOSTE: TIBStringField
      FieldName = 'TE'
      Origin = '"INATIVOS"."TE"'
      Size = 25
    end
    object IBDS_INATIVOSENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"INATIVOS"."ENDERECO"'
      Size = 50
    end
    object IBDS_INATIVOSPONTO_REFERENCIA: TIBStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = '"INATIVOS"."PONTO_REFERENCIA"'
      Size = 35
    end
    object IBDS_INATIVOSBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"INATIVOS"."BAIRRO"'
      Size = 30
    end
    object IBDS_INATIVOSCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"INATIVOS"."CIDADE"'
      Size = 25
    end
    object IBDS_INATIVOSCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"INATIVOS"."CEP"'
      Size = 10
    end
    object IBDS_INATIVOSESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"INATIVOS"."ESTADO"'
      Size = 25
    end
    object IBDS_INATIVOSUF: TIBStringField
      FieldName = 'UF'
      Origin = '"INATIVOS"."UF"'
      Size = 2
    end
    object IBDS_INATIVOSTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"INATIVOS"."TELEFONE"'
    end
    object IBDS_INATIVOSPAGAMENTO_MENSAL: TIBStringField
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"INATIVOS"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBDS_INATIVOSDIA_VENCIMENTO: TIBStringField
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"INATIVOS"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBDS_INATIVOSMODELOS: TIBStringField
      FieldName = 'MODELOS'
      Origin = '"INATIVOS"."MODELOS"'
      Size = 10
    end
    object IBDS_INATIVOSOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"INATIVOS"."OBS"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_INATIVOSFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"INATIVOS"."FOTO"'
      Size = 8
    end
    object IBDS_INATIVOSDATA_MOVIDO: TDateTimeField
      FieldName = 'DATA_MOVIDO'
      Origin = '"INATIVOS"."DATA_MOVIDO"'
    end
    object IBDS_INATIVOSUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"INATIVOS"."USUARIO"'
    end
    object IBDS_INATIVOSRAZAO_MOVIDO: TIBStringField
      FieldName = 'RAZAO_MOVIDO'
      Origin = '"INATIVOS"."RAZAO_MOVIDO"'
      Size = 25
    end
    object IBDS_INATIVOSTC: TIBStringField
      FieldName = 'TC'
      Origin = '"INATIVOS"."TC"'
      Size = 2
    end
    object IBDS_INATIVOSNOME_EMPRESARIAL: TIBStringField
      FieldName = 'NOME_EMPRESARIAL'
      Origin = '"INATIVOS"."NOME_EMPRESARIAL"'
      Size = 116
    end
    object IBDS_INATIVOSNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"INATIVOS"."NOME_FANTASIA"'
      Size = 56
    end
    object IBDS_INATIVOSCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"INATIVOS"."CNPJ"'
      Size = 18
    end
    object IBDS_INATIVOSIE: TIBStringField
      FieldName = 'IE'
      Origin = '"INATIVOS"."IE"'
      Size = 11
    end
    object IBDS_INATIVOSNOME_RESPONSAVEL: TIBStringField
      FieldName = 'NOME_RESPONSAVEL'
      Origin = '"INATIVOS"."NOME_RESPONSAVEL"'
      Size = 50
    end
    object IBDS_INATIVOSRAMO_ATIVIDADE: TIBStringField
      FieldName = 'RAMO_ATIVIDADE'
      Origin = '"INATIVOS"."RAMO_ATIVIDADE"'
      Size = 30
    end
    object IBDS_INATIVOSFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"INATIVOS"."FAX"'
    end
    object IBDS_INATIVOSEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"INATIVOS"."EMAIL"'
      Size = 50
    end
  end
  object Ds_INATIVOS: TDataSource
    DataSet = IBDS_INATIVOS
    Left = 320
    Top = 128
  end
  object IBConfigService: TIBConfigService
    LoginPrompt = False
    TraceFlags = []
    Left = 200
    Top = 8
  end
  object IBDS_CEPS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CEPS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  NOME_CID = :OLD_NOME_CID and'
      '  CEP_CID = :OLD_CEP_CID and'
      '  ESTADO = :OLD_ESTADO and'
      '  UF = :OLD_UF')
    InsertSQL.Strings = (
      'insert into CEPS'
      '  (CODIGO, NOME_CID, CEP_CID, ESTADO, UF)'
      'values'
      '  (:CODIGO, :NOME_CID, :CEP_CID, :ESTADO, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME_CID,'
      '  CEP_CID,'
      '  ESTADO,'
      '  UF'
      'from CEPS '
      'where'
      '  CODIGO = :CODIGO and'
      '  NOME_CID = :NOME_CID and'
      '  CEP_CID = :CEP_CID and'
      '  ESTADO = :ESTADO and'
      '  UF = :UF')
    SelectSQL.Strings = (
      'select * from CEPS')
    ModifySQL.Strings = (
      'update CEPS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME_CID = :NOME_CID,'
      '  CEP_CID = :CEP_CID,'
      '  ESTADO = :ESTADO,'
      '  UF = :UF'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  NOME_CID = :OLD_NOME_CID and'
      '  CEP_CID = :OLD_CEP_CID and'
      '  ESTADO = :OLD_ESTADO and'
      '  UF = :OLD_UF')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 404
    Top = 76
    object IBDS_CEPSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CEPS"."CODIGO"'
      Required = True
    end
    object IBDS_CEPSNOME_CID: TIBStringField
      FieldName = 'NOME_CID'
      Origin = '"CEPS"."NOME_CID"'
      Size = 25
    end
    object IBDS_CEPSCEP_CID: TIBStringField
      FieldName = 'CEP_CID'
      Origin = '"CEPS"."CEP_CID"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_CEPSESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CEPS"."ESTADO"'
      Size = 25
    end
    object IBDS_CEPSUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CEPS"."UF"'
      Size = 2
    end
  end
  object Ds_CEPS: TDataSource
    DataSet = IBDS_CEPS
    Left = 408
    Top = 128
  end
  object IBQuery_DmINATIVOS: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select COD_CLIE from INATIVOS'
      'order by COD_CLIE')
    Left = 240
    Top = 232
    object IBQuery_DmINATIVOSCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
      Origin = '"INATIVOS"."COD_CLIE"'
      Required = True
    end
  end
  object IBQuery_DmCLIENTES: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select COD_CLIE from CLIENTES'
      'order by COD_CLIE')
    Left = 240
    Top = 288
    object IBQuery_DmCLIENTESCOD_CLIE: TIntegerField
      FieldName = 'COD_CLIE'
      Origin = '"CLIENTES"."COD_CLIE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object IBDS_CARNE: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_CARNEAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CARNE'
      'where'
      '  COD_CARN = :OLD_COD_CARN')
    InsertSQL.Strings = (
      'insert into CARNE'
      
        '  (COD_CARN, NUMERO_DOC, CONTRATO, DATA_CONTRATO, NOME_CLIENTE, ' +
        'CODIGO, '
      
        '   RG, CPF, TE, ENDERECO, BAIRRO, CIDADE, CEP, ESTADO, UF, NUMER' +
        'O_PARCELA, '
      
        '   DATA_VENCIMENTO, MES_REFERENCIA, VALOR_MENSAL, DATA_PAGAMENTO' +
        ', VALOR_PAGO, '
      
        '   OBS, SITUACAO, ANO_BASE, USUARIO, PAGAMENTO_MENSAL, DIA_VENCI' +
        'MENTO, '
      '   MODELOS)'
      'values'
      
        '  (:COD_CARN, :NUMERO_DOC, :CONTRATO, :DATA_CONTRATO, :NOME_CLIE' +
        'NTE, :CODIGO, '
      
        '   :RG, :CPF, :TE, :ENDERECO, :BAIRRO, :CIDADE, :CEP, :ESTADO, :' +
        'UF, :NUMERO_PARCELA, '
      
        '   :DATA_VENCIMENTO, :MES_REFERENCIA, :VALOR_MENSAL, :DATA_PAGAM' +
        'ENTO, :VALOR_PAGO, '
      
        '   :OBS, :SITUACAO, :ANO_BASE, :USUARIO, :PAGAMENTO_MENSAL, :DIA' +
        '_VENCIMENTO, '
      '   :MODELOS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CARN,'
      '  NUMERO_DOC,'
      '  CONTRATO,'
      '  DATA_CONTRATO,'
      '  NOME_CLIENTE,'
      '  CODIGO,'
      '  RG,'
      '  CPF,'
      '  TE,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  CEP,'
      '  ESTADO,'
      '  UF,'
      '  NUMERO_PARCELA,'
      '  DATA_VENCIMENTO,'
      '  MES_REFERENCIA,'
      '  VALOR_MENSAL,'
      '  DATA_PAGAMENTO,'
      '  VALOR_PAGO,'
      '  OBS,'
      '  SITUACAO,'
      '  ANO_BASE,'
      '  USUARIO,'
      '  PAGAMENTO_MENSAL,'
      '  DIA_VENCIMENTO,'
      '  MODELOS'
      'from CARNE '
      'where'
      '  COD_CARN = :COD_CARN')
    SelectSQL.Strings = (
      'select * from CARNE')
    ModifySQL.Strings = (
      'update CARNE'
      'set'
      '  COD_CARN = :COD_CARN,'
      '  NUMERO_DOC = :NUMERO_DOC,'
      '  CONTRATO = :CONTRATO,'
      '  DATA_CONTRATO = :DATA_CONTRATO,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  CODIGO = :CODIGO,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  TE = :TE,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  CEP = :CEP,'
      '  ESTADO = :ESTADO,'
      '  UF = :UF,'
      '  NUMERO_PARCELA = :NUMERO_PARCELA,'
      '  DATA_VENCIMENTO = :DATA_VENCIMENTO,'
      '  MES_REFERENCIA = :MES_REFERENCIA,'
      '  VALOR_MENSAL = :VALOR_MENSAL,'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  OBS = :OBS,'
      '  SITUACAO = :SITUACAO,'
      '  ANO_BASE = :ANO_BASE,'
      '  USUARIO = :USUARIO,'
      '  PAGAMENTO_MENSAL = :PAGAMENTO_MENSAL,'
      '  DIA_VENCIMENTO = :DIA_VENCIMENTO,'
      '  MODELOS = :MODELOS'
      'where'
      '  COD_CARN = :OLD_COD_CARN')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 428
    Top = 188
    object IBDS_CARNECOD_CARN: TIntegerField
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_CARNENUMERO_DOC: TIBStringField
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 22
    end
    object IBDS_CARNECONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Origin = '"CARNE"."CONTRATO"'
      Required = True
      DisplayFormat = '####0000'
    end
    object IBDS_CARNEDATA_CONTRATO: TDateTimeField
      FieldName = 'DATA_CONTRATO'
      Origin = '"CARNE"."DATA_CONTRATO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CARNENOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Size = 50
    end
    object IBDS_CARNECODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Size = 11
    end
    object IBDS_CARNERG: TIBStringField
      FieldName = 'RG'
      Origin = '"CARNE"."RG"'
      Size = 25
    end
    object IBDS_CARNECPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CARNE"."CPF"'
    end
    object IBDS_CARNETE: TIBStringField
      FieldName = 'TE'
      Origin = '"CARNE"."TE"'
      Size = 25
    end
    object IBDS_CARNEENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CARNE"."ENDERECO"'
      Size = 50
    end
    object IBDS_CARNEBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CARNE"."BAIRRO"'
      Size = 30
    end
    object IBDS_CARNECIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CARNE"."CIDADE"'
      Size = 25
    end
    object IBDS_CARNECEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CARNE"."CEP"'
      EditMask = '99.999-9999;1;_'
      Size = 10
    end
    object IBDS_CARNEESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CARNE"."ESTADO"'
      Size = 25
    end
    object IBDS_CARNEUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CARNE"."UF"'
      Size = 2
    end
    object IBDS_CARNENUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBDS_CARNEDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CARNEMES_REFERENCIA: TIBStringField
      FieldName = 'MES_REFERENCIA'
      Origin = '"CARNE"."MES_REFERENCIA"'
      Size = 15
    end
    object IBDS_CARNEVALOR_MENSAL: TIBBCDField
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CARNEVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"CARNE"."OBS"'
      Size = 50
    end
    object IBDS_CARNESITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"CARNE"."SITUACAO"'
      Size = 1
    end
    object IBDS_CARNEANO_BASE: TIBStringField
      FieldName = 'ANO_BASE'
      Origin = '"CARNE"."ANO_BASE"'
      Size = 4
    end
    object IBDS_CARNEUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"CARNE"."USUARIO"'
    end
    object IBDS_CARNEPAGAMENTO_MENSAL: TIBStringField
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"CARNE"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBDS_CARNEDIA_VENCIMENTO: TIBStringField
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"CARNE"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBDS_CARNEMODELOS: TIBStringField
      FieldName = 'MODELOS'
      Origin = '"CARNE"."MODELOS"'
      Size = 10
    end
  end
  object Ds_IBDS_CARNE: TDataSource
    DataSet = IBDS_CARNE
    Left = 432
    Top = 240
  end
  object IBQ_CODCARN: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_CARN) from CARNE')
    Left = 432
    Top = 288
  end
  object IBQ_CODDEPE: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_DEPE) from DEPENDE')
    Left = 40
    Top = 288
  end
  object Ds_DEPENDE: TDataSource
    DataSet = IBDS_DEPENDE
    Left = 40
    Top = 232
  end
  object IBDS_DEPENDE: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_DEPENDEAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from DEPENDE'
      'where'
      '  COD_DEPE = :OLD_COD_DEPE')
    InsertSQL.Strings = (
      'insert into DEPENDE'
      '  (COD_DEPE, CODIGO, NOME_DEPENDENTE, PARENTESCO, USUARIO)'
      'values'
      '  (:COD_DEPE, :CODIGO, :NOME_DEPENDENTE, :PARENTESCO, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_DEPE,'
      '  CODIGO,'
      '  NOME_DEPENDENTE,'
      '  PARENTESCO,'
      '  USUARIO'
      'from DEPENDE '
      'where'
      '  COD_DEPE = :COD_DEPE')
    SelectSQL.Strings = (
      'select * from DEPENDE'
      'where CODIGO=CODIGO'
      'order by COD_DEPE')
    ModifySQL.Strings = (
      'update DEPENDE'
      'set'
      '  COD_DEPE = :COD_DEPE,'
      '  CODIGO = :CODIGO,'
      '  NOME_DEPENDENTE = :NOME_DEPENDENTE,'
      '  PARENTESCO = :PARENTESCO,'
      '  USUARIO = :USUARIO'
      'where'
      '  COD_DEPE = :OLD_COD_DEPE')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 36
    Top = 180
    object IBDS_DEPENDECODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo Titular'
      FieldName = 'CODIGO'
      Origin = '"DEPENDE"."CODIGO"'
      Size = 11
    end
    object IBDS_DEPENDECOD_DEPE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_DEPE'
      Origin = '"DEPENDE"."COD_DEPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '####0000'
    end
    object IBDS_DEPENDENOME_DEPENDENTE: TIBStringField
      DisplayLabel = 'Nome do Dependente'
      FieldName = 'NOME_DEPENDENTE'
      Origin = '"DEPENDE"."NOME_DEPENDENTE"'
      Size = 50
    end
    object IBDS_DEPENDEPARENTESCO: TIBStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'PARENTESCO'
      Origin = '"DEPENDE"."PARENTESCO"'
    end
    object IBDS_DEPENDEUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"DEPENDE"."USUARIO"'
    end
  end
  object IBDS_PROMOTOR: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_PROMOTORAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PROMOTOR'
      'where'
      '  COD_PROM = :OLD_COD_PROM')
    InsertSQL.Strings = (
      'insert into PROMOTOR'
      '  (COD_PROM, CODIGO_P, NOME_PROMOTOR, APELIDO_PROMOTOR, USUARIO)'
      'values'
      
        '  (:COD_PROM, :CODIGO_P, :NOME_PROMOTOR, :APELIDO_PROMOTOR, :USU' +
        'ARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PROM,'
      '  CODIGO_P,'
      '  NOME_PROMOTOR,'
      '  APELIDO_PROMOTOR,'
      '  USUARIO'
      'from PROMOTOR '
      'where'
      '  COD_PROM = :COD_PROM')
    SelectSQL.Strings = (
      'select * from PROMOTOR'
      'order by COD_PROM')
    ModifySQL.Strings = (
      'update PROMOTOR'
      'set'
      '  COD_PROM = :COD_PROM,'
      '  CODIGO_P = :CODIGO_P,'
      '  NOME_PROMOTOR = :NOME_PROMOTOR,'
      '  APELIDO_PROMOTOR = :APELIDO_PROMOTOR,'
      '  USUARIO = :USUARIO'
      'where'
      '  COD_PROM = :OLD_COD_PROM')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 132
    Top = 180
    object IBDS_PROMOTORCOD_PROM: TIntegerField
      FieldName = 'COD_PROM'
      Origin = '"PROMOTOR"."COD_PROM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_PROMOTORCODIGO_P: TIBStringField
      FieldName = 'CODIGO_P'
      Origin = '"PROMOTOR"."CODIGO_P"'
      Size = 11
    end
    object IBDS_PROMOTORNOME_PROMOTOR: TIBStringField
      FieldName = 'NOME_PROMOTOR'
      Origin = '"PROMOTOR"."NOME_PROMOTOR"'
      Size = 50
    end
    object IBDS_PROMOTORAPELIDO_PROMOTOR: TIBStringField
      FieldName = 'APELIDO_PROMOTOR'
      Origin = '"PROMOTOR"."APELIDO_PROMOTOR"'
      Size = 25
    end
    object IBDS_PROMOTORUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"PROMOTOR"."USUARIO"'
    end
  end
  object Ds_PROMOTOR: TDataSource
    DataSet = IBDS_PROMOTOR
    Left = 120
    Top = 232
  end
  object IBQ_CODPROM: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_PROM) from PROMOTOR')
    Left = 120
    Top = 288
  end
  object IBDS_PLANOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_PLANOSAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PLANOS'
      'where'
      '  COD_PLAN = :OLD_COD_PLAN')
    InsertSQL.Strings = (
      'insert into PLANOS'
      
        '  (COD_PLAN, CONTRATO, DATA_CONTRATO, NOME_CLIENTE, CODIGO, RG, ' +
        'CPF, TE, '
      
        '   ENDERECO, BAIRRO, CIDADE, CEP, ESTADO, UF, PAGAMENTO_MENSAL, ' +
        'DIA_VENCIMENTO, '
      
        '   MODELOS, APELIDO_PROMOTOR, CODIGO_P, TAXA_ADMIN, VALOR_MENSAL' +
        ', USUARIO)'
      'values'
      
        '  (:COD_PLAN, :CONTRATO, :DATA_CONTRATO, :NOME_CLIENTE, :CODIGO,' +
        ' :RG, :CPF, '
      
        '   :TE, :ENDERECO, :BAIRRO, :CIDADE, :CEP, :ESTADO, :UF, :PAGAME' +
        'NTO_MENSAL, '
      
        '   :DIA_VENCIMENTO, :MODELOS, :APELIDO_PROMOTOR, :CODIGO_P, :TAX' +
        'A_ADMIN, '
      '   :VALOR_MENSAL, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PLAN,'
      '  CONTRATO,'
      '  DATA_CONTRATO,'
      '  NOME_CLIENTE,'
      '  CODIGO,'
      '  RG,'
      '  CPF,'
      '  TE,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  CEP,'
      '  ESTADO,'
      '  UF,'
      '  PAGAMENTO_MENSAL,'
      '  DIA_VENCIMENTO,'
      '  MODELOS,'
      '  APELIDO_PROMOTOR,'
      '  CODIGO_P,'
      '  TAXA_ADMIN,'
      '  VALOR_MENSAL,'
      '  USUARIO'
      'from PLANOS '
      'where'
      '  COD_PLAN = :COD_PLAN')
    SelectSQL.Strings = (
      'select * from PLANOS')
    ModifySQL.Strings = (
      'update PLANOS'
      'set'
      '  COD_PLAN = :COD_PLAN,'
      '  CONTRATO = :CONTRATO,'
      '  DATA_CONTRATO = :DATA_CONTRATO,'
      '  NOME_CLIENTE = :NOME_CLIENTE,'
      '  CODIGO = :CODIGO,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  TE = :TE,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  CEP = :CEP,'
      '  ESTADO = :ESTADO,'
      '  UF = :UF,'
      '  PAGAMENTO_MENSAL = :PAGAMENTO_MENSAL,'
      '  DIA_VENCIMENTO = :DIA_VENCIMENTO,'
      '  MODELOS = :MODELOS,'
      '  APELIDO_PROMOTOR = :APELIDO_PROMOTOR,'
      '  CODIGO_P = :CODIGO_P,'
      '  TAXA_ADMIN = :TAXA_ADMIN,'
      '  VALOR_MENSAL = :VALOR_MENSAL,'
      '  USUARIO = :USUARIO'
      'where'
      '  COD_PLAN = :OLD_COD_PLAN')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 340
    Top = 188
    object IBDS_PLANOSCOD_PLAN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_PLAN'
      Origin = '"PLANOS"."COD_PLAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_PLANOSCONTRATO: TIntegerField
      DisplayLabel = 'Contrato'
      FieldName = 'CONTRATO'
      Origin = '"PLANOS"."CONTRATO"'
      Required = True
      DisplayFormat = '####0000'
    end
    object IBDS_PLANOSDATA_CONTRATO: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'DATA_CONTRATO'
      Origin = '"PLANOS"."DATA_CONTRATO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_PLANOSNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"PLANOS"."NOME_CLIENTE"'
      Size = 50
    end
    object IBDS_PLANOSCODIGO: TIBStringField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO'
      Origin = '"PLANOS"."CODIGO"'
      Size = 11
    end
    object IBDS_PLANOSRG: TIBStringField
      FieldName = 'RG'
      Origin = '"PLANOS"."RG"'
      Size = 25
    end
    object IBDS_PLANOSCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"PLANOS"."CPF"'
    end
    object IBDS_PLANOSTE: TIBStringField
      FieldName = 'TE'
      Origin = '"PLANOS"."TE"'
      Size = 25
    end
    object IBDS_PLANOSENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"PLANOS"."ENDERECO"'
      Size = 50
    end
    object IBDS_PLANOSBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"PLANOS"."BAIRRO"'
      Size = 30
    end
    object IBDS_PLANOSCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"PLANOS"."CIDADE"'
      Size = 25
    end
    object IBDS_PLANOSCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PLANOS"."CEP"'
      EditMask = '99.999-99;1;_'
      Size = 10
    end
    object IBDS_PLANOSESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"PLANOS"."ESTADO"'
      Size = 25
    end
    object IBDS_PLANOSUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PLANOS"."UF"'
      Size = 2
    end
    object IBDS_PLANOSPAGAMENTO_MENSAL: TIBStringField
      DisplayLabel = 'Pagamento Mensal'
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"PLANOS"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBDS_PLANOSDIA_VENCIMENTO: TIBStringField
      DisplayLabel = 'Dia Vencimento'
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"PLANOS"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBDS_PLANOSMODELOS: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELOS'
      Origin = '"PLANOS"."MODELOS"'
      Size = 10
    end
    object IBDS_PLANOSAPELIDO_PROMOTOR: TIBStringField
      DisplayLabel = 'Promotor(a)'
      FieldName = 'APELIDO_PROMOTOR'
      Origin = '"PLANOS"."APELIDO_PROMOTOR"'
      Size = 25
    end
    object IBDS_PLANOSCODIGO_P: TIBStringField
      DisplayLabel = 'Cod. Promotor(a)'
      FieldName = 'CODIGO_P'
      Origin = '"PLANOS"."CODIGO_P"'
      Size = 11
    end
    object IBDS_PLANOSTAXA_ADMIN: TIBBCDField
      DisplayLabel = 'Taxa Administra'#231#227'o'
      FieldName = 'TAXA_ADMIN'
      Origin = '"PLANOS"."TAXA_ADMIN"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_PLANOSVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor Mensalidade'
      FieldName = 'VALOR_MENSAL'
      Origin = '"PLANOS"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_PLANOSUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"PLANOS"."USUARIO"'
    end
  end
  object Ds_PLANOS: TDataSource
    DataSet = IBDS_PLANOS
    Left = 344
    Top = 240
  end
  object IBQ_CODPLAN: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_PLAN) from PLANOS')
    Left = 344
    Top = 288
  end
end
