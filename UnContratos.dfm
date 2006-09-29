object FrmContratos: TFrmContratos
  Left = 25
  Top = 95
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Contratos'
  ClientHeight = 544
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 205
    Width = 773
    Height = 76
  end
  object Label10: TLabel
    Left = 8
    Top = 9
    Width = 133
    Height = 13
    Caption = 'Contratos n'#227'o gerados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 8
    Top = 297
    Width = 108
    Height = 13
    Caption = 'Contratos gerados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 16
    Top = 214
    Width = 112
    Height = 13
    Caption = 'Pagamento Mensal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 328
    Top = 214
    Width = 94
    Height = 13
    Caption = 'Dia Vencimento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 624
    Top = 214
    Width = 46
    Height = 13
    Caption = 'Modelo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label33: TLabel
    Left = 233
    Top = 209
    Width = 17
    Height = 22
    Caption = '%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 8
    Top = 238
    Width = 773
    Height = 4
  end
  object Label4: TLabel
    Left = 8
    Top = 490
    Width = 97
    Height = 13
    Caption = 'Nome do cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 360
    Top = 490
    Width = 44
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid_Contratos: TDBGrid
    Left = 8
    Top = 312
    Width = 773
    Height = 175
    Color = clWhite
    DataSource = DS_GeraContratos
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid_ContratosDrawColumnCell
    OnKeyDown = DBGrid_ContratosKeyDown
    OnKeyUp = DBGrid_ClientesKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTRATO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAMENTO_MENSAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIA_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAXA_ADMIN'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_P'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APELIDO_PROMOTOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CONTRATO'
        Visible = True
      end>
  end
  object BtnFechar: TBitBtn
    Left = 692
    Top = 504
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = BtnFecharClick
    NumGlyphs = 4
  end
  object DBGrid_Clientes: TDBGrid
    Left = 8
    Top = 24
    Width = 773
    Height = 175
    Color = clWhite
    DataSource = DS_Contratos
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_ClientesCellClick
    OnDrawColumnCell = DBGrid_ClientesDrawColumnCell
    OnDblClick = DBGrid_ClientesDblClick
    OnKeyDown = DBGrid_ClientesKeyDown
    OnKeyUp = DBGrid_ClientesKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Width = 261
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAMENTO_MENSAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIA_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELOS'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_P'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APELIDO_PROMOTOR'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CADASTRO'
        Visible = False
      end>
  end
  object Btn_Gerar: TBitBtn
    Left = 283
    Top = 249
    Width = 150
    Height = 25
    Cursor = crHandPoint
    Caption = 'Gerar contrato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_GerarClick
    NumGlyphs = 4
  end
  object MEdit_Data: TMaskEdit
    Left = 193
    Top = 250
    Width = 80
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    EditMask = '99/99/9999;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 5
    Text = '  /  /    '
    OnExit = MEdit_DataExit
  end
  object CheckBox_Data: TCheckBox
    Left = 16
    Top = 253
    Width = 177
    Height = 17
    Cursor = crHandPoint
    Caption = 'Outra data para o contrato:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Btn_EstornarContrato: TBitBtn
    Left = 539
    Top = 504
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Estornar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = Btn_EstornarContratoClick
    NumGlyphs = 4
  end
  object MEdit_PagMen: TMaskEdit
    Left = 130
    Top = 210
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnKeyPress = MEdit_PagMenKeyPress
  end
  object MEdit_DiaVen: TMaskEdit
    Left = 424
    Top = 210
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnKeyPress = MEdit_DiaVenKeyPress
  end
  object MEdit_Modelo: TMaskEdit
    Left = 672
    Top = 210
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnKeyPress = MEdit_ModeloKeyPress
  end
  object CheckBox_GO: TCheckBox
    Left = 480
    Top = 253
    Width = 137
    Height = 17
    Cursor = crHandPoint
    Caption = 'Gerar outro contrato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Btn_Atualizar: TBitBtn
    Left = 623
    Top = 249
    Width = 150
    Height = 25
    Cursor = crHandPoint
    Caption = 'Atualizar lista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Btn_AtualizarClick
    NumGlyphs = 4
  end
  object BtnOk: TBitBtn
    Left = 492
    Top = 504
    Width = 37
    Height = 24
    Cursor = crHandPoint
    Caption = 'Ok'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BtnOkClick
    NumGlyphs = 2
  end
  object Edit1: TMaskEdit
    Left = 8
    Top = 504
    Width = 345
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnExit = Edit1Exit
    OnKeyUp = Edit1KeyUp
  end
  object Edit2: TMaskEdit
    Left = 360
    Top = 504
    Width = 124
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnExit = Edit2Exit
    OnKeyPress = Edit2KeyPress
  end
  object DS_Contratos: TDataSource
    DataSet = IBQuery_Contratos
    Left = 88
    Top = 136
  end
  object DS_GeraContratos: TDataSource
    DataSet = IBQuery_GeraContratos
    Left = 128
    Top = 168
  end
  object IBQuery_Contratos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      
        'select APELIDO_PROMOTOR, BAIRRO, CEP, CIDADE, CODIGO, CODIGO_P, ' +
        'CPF, DIA_VENCIMENTO, ENDERECO, ESTADO, MODELOS, NOME_CLIENTE, PA' +
        'GAMENTO_MENSAL, RG, TE, UF, DATA_CADASTRO from CLIENTES'
      'order by NOME_CLIENTE')
    Left = 88
    Top = 104
    object IBQuery_ContratosCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 11
    end
    object IBQuery_ContratosNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"CLIENTES"."NOME_CLIENTE"'
      Size = 50
    end
    object IBQuery_ContratosPAGAMENTO_MENSAL: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Pag. Mensal'
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"CLIENTES"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBQuery_ContratosDIA_VENCIMENTO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Dia Vencimento'
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"CLIENTES"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBQuery_ContratosMODELOS: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELOS'
      Origin = '"CLIENTES"."MODELOS"'
      Size = 10
    end
    object IBQuery_ContratosCODIGO_P: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Cod. Prom.'
      FieldName = 'CODIGO_P'
      Origin = '"CLIENTES"."CODIGO_P"'
      Size = 11
    end
    object IBQuery_ContratosAPELIDO_PROMOTOR: TIBStringField
      DisplayLabel = 'Promotor(a)'
      FieldName = 'APELIDO_PROMOTOR'
      Origin = '"CLIENTES"."APELIDO_PROMOTOR"'
      Size = 25
    end
    object IBQuery_ContratosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Size = 30
    end
    object IBQuery_ContratosCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Size = 10
    end
    object IBQuery_ContratosCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 25
    end
    object IBQuery_ContratosENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object IBQuery_ContratosESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Size = 25
    end
    object IBQuery_ContratosRG: TIBStringField
      FieldName = 'RG'
      Origin = '"CLIENTES"."RG"'
      Size = 25
    end
    object IBQuery_ContratosCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
    end
    object IBQuery_ContratosTE: TIBStringField
      FieldName = 'TE'
      Origin = '"CLIENTES"."TE"'
      Size = 25
    end
    object IBQuery_ContratosUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CLIENTES"."UF"'
      Size = 2
    end
    object IBQuery_ContratosDATA_CADASTRO: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DATA_CADASTRO'
      Origin = '"CLIENTES"."DATA_CADASTRO"'
    end
  end
  object IBQuery_GeraContratos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from PLANOS'
      'order by NOME_CLIENTE')
    Left = 88
    Top = 168
    object IBQuery_GeraContratosCOD_PLAN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_PLAN'
      Origin = '"PLANOS"."COD_PLAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_GeraContratosCONTRATO: TIntegerField
      DisplayLabel = 'Contrato'
      FieldName = 'CONTRATO'
      Origin = '"PLANOS"."CONTRATO"'
      Required = True
      DisplayFormat = '####0000'
    end
    object IBQuery_GeraContratosDATA_CONTRATO: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'DATA_CONTRATO'
      Origin = '"PLANOS"."DATA_CONTRATO"'
    end
    object IBQuery_GeraContratosNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"PLANOS"."NOME_CLIENTE"'
      Size = 50
    end
    object IBQuery_GeraContratosCODIGO: TIBStringField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO'
      Origin = '"PLANOS"."CODIGO"'
      Size = 11
    end
    object IBQuery_GeraContratosRG: TIBStringField
      FieldName = 'RG'
      Origin = '"PLANOS"."RG"'
      Size = 25
    end
    object IBQuery_GeraContratosCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"PLANOS"."CPF"'
    end
    object IBQuery_GeraContratosTE: TIBStringField
      FieldName = 'TE'
      Origin = '"PLANOS"."TE"'
      Size = 25
    end
    object IBQuery_GeraContratosENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"PLANOS"."ENDERECO"'
      Size = 50
    end
    object IBQuery_GeraContratosBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"PLANOS"."BAIRRO"'
      Size = 30
    end
    object IBQuery_GeraContratosCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"PLANOS"."CIDADE"'
      Size = 25
    end
    object IBQuery_GeraContratosCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PLANOS"."CEP"'
      Size = 10
    end
    object IBQuery_GeraContratosESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"PLANOS"."ESTADO"'
      Size = 25
    end
    object IBQuery_GeraContratosUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PLANOS"."UF"'
      Size = 2
    end
    object IBQuery_GeraContratosPAGAMENTO_MENSAL: TIBStringField
      DisplayLabel = 'Pag. Mensal'
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"PLANOS"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBQuery_GeraContratosDIA_VENCIMENTO: TIBStringField
      DisplayLabel = 'Dia Vencimento'
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"PLANOS"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBQuery_GeraContratosMODELOS: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELOS'
      Origin = '"PLANOS"."MODELOS"'
      Size = 10
    end
    object IBQuery_GeraContratosAPELIDO_PROMOTOR: TIBStringField
      DisplayLabel = 'Promotor(a)'
      FieldName = 'APELIDO_PROMOTOR'
      Origin = '"PLANOS"."APELIDO_PROMOTOR"'
      Size = 25
    end
    object IBQuery_GeraContratosCODIGO_P: TIBStringField
      DisplayLabel = 'Cod. Promotor(a)'
      FieldName = 'CODIGO_P'
      Origin = '"PLANOS"."CODIGO_P"'
      Size = 11
    end
    object IBQuery_GeraContratosTAXA_ADMIN: TIBBCDField
      DisplayLabel = 'Taxa Administra'#231#227'o'
      FieldName = 'TAXA_ADMIN'
      Origin = '"PLANOS"."TAXA_ADMIN"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_GeraContratosVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor Mensalidade'
      FieldName = 'VALOR_MENSAL'
      Origin = '"PLANOS"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object IBQuery_EstornaContrato: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from PLANOS'
      'order by NOME_CLIENTE')
    Left = 216
    Top = 168
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_PLAN'
      Origin = '"PLANOS"."COD_PLAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Contrato'
      FieldName = 'CONTRATO'
      Origin = '"PLANOS"."CONTRATO"'
      Required = True
      DisplayFormat = '####0000'
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'DATA_CONTRATO'
      Origin = '"PLANOS"."DATA_CONTRATO"'
    end
    object IBStringField1: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"PLANOS"."NOME_CLIENTE"'
      Size = 50
    end
    object IBStringField2: TIBStringField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO'
      Origin = '"PLANOS"."CODIGO"'
      Size = 11
    end
    object IBStringField3: TIBStringField
      FieldName = 'RG'
      Origin = '"PLANOS"."RG"'
      Size = 25
    end
    object IBQuery_EstornaContratoCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"PLANOS"."CPF"'
    end
    object IBStringField5: TIBStringField
      FieldName = 'TE'
      Origin = '"PLANOS"."TE"'
      Size = 25
    end
    object IBStringField6: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"PLANOS"."ENDERECO"'
      Size = 50
    end
    object IBStringField7: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"PLANOS"."BAIRRO"'
      Size = 30
    end
    object IBStringField8: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"PLANOS"."CIDADE"'
      Size = 25
    end
    object IBStringField9: TIBStringField
      FieldName = 'CEP'
      Origin = '"PLANOS"."CEP"'
      Size = 10
    end
    object IBStringField10: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"PLANOS"."ESTADO"'
      Size = 25
    end
    object IBStringField11: TIBStringField
      FieldName = 'UF'
      Origin = '"PLANOS"."UF"'
      Size = 2
    end
    object IBStringField12: TIBStringField
      DisplayLabel = 'Pag. Mensal'
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"PLANOS"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBStringField13: TIBStringField
      DisplayLabel = 'Dia Vencimento'
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"PLANOS"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBStringField14: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELOS'
      Origin = '"PLANOS"."MODELOS"'
      Size = 10
    end
    object IBStringField15: TIBStringField
      DisplayLabel = 'Promotor(a)'
      FieldName = 'APELIDO_PROMOTOR'
      Origin = '"PLANOS"."APELIDO_PROMOTOR"'
      Size = 25
    end
    object IBStringField16: TIBStringField
      DisplayLabel = 'Cod. Promotor(a)'
      FieldName = 'CODIGO_P'
      Origin = '"PLANOS"."CODIGO_P"'
      Size = 11
    end
    object IBBCDField1: TIBBCDField
      DisplayLabel = 'Taxa Administra'#231#227'o'
      FieldName = 'TAXA_ADMIN'
      Origin = '"PLANOS"."TAXA_ADMIN"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Valor Mensalidade'
      FieldName = 'VALOR_MENSAL'
      Origin = '"PLANOS"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
end
