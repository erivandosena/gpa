object FrmCarne: TFrmCarne
  Left = 213
  Top = 136
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Carn'#234
  ClientHeight = 540
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 64
    Width = 641
    Height = 55
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 641
    Height = 55
    Style = bsRaised
  end
  object Label11: TLabel
    Left = 8
    Top = 287
    Width = 100
    Height = 16
    Caption = 'Carn'#234' gerado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 127
    Width = 71
    Height = 16
    Caption = 'Contratos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 16
    Width = 83
    Height = 13
    Caption = 'C'#243'digo do Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label6: TLabel
    Left = 185
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Contrato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label7: TLabel
    Left = 353
    Top = 16
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label1: TLabel
    Left = 272
    Top = 71
    Width = 56
    Height = 13
    Caption = 'Presta'#231#245'es:'
    Transparent = False
  end
  object DBGrid_GC_Parcelas: TDBGrid
    Left = 8
    Top = 304
    Width = 777
    Height = 226
    Color = clWhite
    DataSource = DS_CarneParcelas
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid_GC_ParcelasDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'COD_CARN'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CONTRATO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DATA_CONTRATO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DATA_CONTRATO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DATA_PAGAMENTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'RG'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Visible = False
      end>
  end
  object DBGrid_GC_Alunos: TDBGrid
    Left = 8
    Top = 144
    Width = 777
    Height = 123
    Color = clWhite
    DataSource = DS_CarneALUNOS
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_GC_AlunosCellClick
    OnDrawColumnCell = DBGrid_GC_AlunosDrawColumnCell
    OnDblClick = DBGrid_GC_AlunosDblClick
    OnKeyDown = DBGrid_GC_AlunosKeyDown
    OnKeyUp = DBGrid_GC_AlunosKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRATO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CONTRATO'
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
        FieldName = 'TAXA_ADMIN'
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
        FieldName = 'VALOR_MENSAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'COD_PLAN'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = False
      end>
  end
  object Btn_Gerar: TBitBtn
    Left = 525
    Top = 81
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Gerar Carn'#234
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Btn_GerarClick
    NumGlyphs = 4
  end
  object CheckBox_Data: TCheckBox
    Left = 16
    Top = 71
    Width = 80
    Height = 17
    Cursor = crHandPoint
    Caption = 'Outra Data:'
    TabOrder = 4
  end
  object CheckBox_Valor: TCheckBox
    Left = 140
    Top = 71
    Width = 80
    Height = 17
    Cursor = crHandPoint
    Caption = 'Outro Valor:'
    TabOrder = 6
  end
  object Btn_Selecionar: TBitBtn
    Left = 525
    Top = 25
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Selecionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Btn_SelecionarClick
    NumGlyphs = 4
  end
  object BtnFechar: TBitBtn
    Left = 664
    Top = 74
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BtnFecharClick
    NumGlyphs = 4
  end
  object UpDown1: TUpDown
    Left = 310
    Top = 89
    Width = 18
    Height = 21
    Cursor = crHandPoint
    Associate = MEdit_Fracao
    Min = 1
    Max = 1000
    Position = 12
    TabOrder = 9
  end
  object CheckBox_Selecionado: TCheckBox
    Left = 376
    Top = 71
    Width = 137
    Height = 17
    Cursor = crHandPoint
    Caption = 'Por Titular Selecionado'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object MEdit_CodigoCli: TMaskEdit
    Left = 16
    Top = 30
    Width = 162
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
    MaxLength = 15
    ParentFont = False
    TabOrder = 0
    OnExit = MEdit_CodigoCliExit
    OnKeyPress = MEdit_CodigoCliKeyPress
  end
  object MEdit_Data: TMaskEdit
    Left = 16
    Top = 89
    Width = 80
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
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
  object MEdit_Valor: TMaskEdit
    Left = 140
    Top = 89
    Width = 80
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnExit = MEdit_ValorExit
  end
  object MEdit_Fracao: TMaskEdit
    Left = 272
    Top = 89
    Width = 38
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Text = '12'
    OnExit = MEdit_FracaoExit
    OnKeyPress = MEdit_FracaoKeyPress
  end
  object Btn_ImprimirCarne: TBitBtn
    Left = 664
    Top = 32
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Imprimir Carn'#234
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = Btn_ImprimirCarneClick
    NumGlyphs = 4
  end
  object MEdit_ContratoCli: TMaskEdit
    Left = 184
    Top = 30
    Width = 162
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
    MaxLength = 15
    ParentFont = False
    TabOrder = 1
    OnExit = MEdit_ContratoCliExit
  end
  object MEdit_NomeCli: TMaskEdit
    Left = 352
    Top = 30
    Width = 162
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
    OnExit = MEdit_NomeCliExit
  end
  object MainMenu1: TMainMenu
    Left = 88
    Top = 160
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = Btn_FecharClick
      end
    end
  end
  object DS_CarneALUNOS: TDataSource
    DataSet = IBQuery_CarneClientes
    Left = 88
    Top = 224
  end
  object IBQuery_CarneClientes: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from PLANOS'
      'where CODIGO = '#39'0'#39
      'order by NOME_CLIENTE')
    Left = 88
    Top = 192
    object IBQuery_CarneClientesCOD_PLAN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_PLAN'
      Origin = '"PLANOS"."COD_PLAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_CarneClientesCONTRATO: TIntegerField
      DisplayLabel = 'Contrato'
      FieldName = 'CONTRATO'
      Origin = '"PLANOS"."CONTRATO"'
      Required = True
      DisplayFormat = '####0000'
    end
    object IBQuery_CarneClientesDATA_CONTRATO: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'DATA_CONTRATO'
      Origin = '"PLANOS"."DATA_CONTRATO"'
    end
    object IBQuery_CarneClientesNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"PLANOS"."NOME_CLIENTE"'
      Size = 50
    end
    object IBQuery_CarneClientesCODIGO: TIBStringField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO'
      Origin = '"PLANOS"."CODIGO"'
      Size = 11
    end
    object IBQuery_CarneClientesRG: TIBStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG'
      Origin = '"PLANOS"."RG"'
      Size = 25
    end
    object IBQuery_CarneClientesCPF: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF'
      Origin = '"PLANOS"."CPF"'
    end
    object IBQuery_CarneClientesTE: TIBStringField
      FieldName = 'TE'
      Origin = '"PLANOS"."TE"'
      Size = 25
    end
    object IBQuery_CarneClientesENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"PLANOS"."ENDERECO"'
      Size = 50
    end
    object IBQuery_CarneClientesBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"PLANOS"."BAIRRO"'
      Size = 30
    end
    object IBQuery_CarneClientesCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"PLANOS"."CIDADE"'
      Size = 25
    end
    object IBQuery_CarneClientesCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PLANOS"."CEP"'
      Size = 10
    end
    object IBQuery_CarneClientesESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"PLANOS"."ESTADO"'
      Size = 25
    end
    object IBQuery_CarneClientesUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PLANOS"."UF"'
      Size = 2
    end
    object IBQuery_CarneClientesPAGAMENTO_MENSAL: TIBStringField
      DisplayLabel = 'Pagamento Mensal'
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"PLANOS"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBQuery_CarneClientesDIA_VENCIMENTO: TIBStringField
      DisplayLabel = 'Dia Vencimento'
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"PLANOS"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBQuery_CarneClientesMODELOS: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELOS'
      Origin = '"PLANOS"."MODELOS"'
      Size = 10
    end
    object IBQuery_CarneClientesAPELIDO_PROMOTOR: TIBStringField
      DisplayLabel = 'Promotor(a)'
      FieldName = 'APELIDO_PROMOTOR'
      Origin = '"PLANOS"."APELIDO_PROMOTOR"'
      Size = 25
    end
    object IBQuery_CarneClientesCODIGO_P: TIBStringField
      DisplayLabel = 'Cod. Promotor(a)'
      FieldName = 'CODIGO_P'
      Origin = '"PLANOS"."CODIGO_P"'
      Size = 11
    end
    object IBQuery_CarneClientesTAXA_ADMIN: TIBBCDField
      DisplayLabel = 'Taxa Administra'#231#227'o'
      FieldName = 'TAXA_ADMIN'
      Origin = '"PLANOS"."TAXA_ADMIN"'
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneClientesVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor Mensalidade'
      FieldName = 'VALOR_MENSAL'
      Origin = '"PLANOS"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_CarneParcelas: TDataSource
    DataSet = IBQuery_CarneParcelas
    Left = 88
    Top = 376
  end
  object IBQuery_CarneParcelas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE'
      'where CODIGO = '#39'0'#39
      'order by DATA_VENCIMENTO')
    Left = 88
    Top = 344
    object IBQuery_CarneParcelasCOD_CARN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_CarneParcelasNUMERO_DOC: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'N'#186' do Documento'
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 22
    end
    object IBQuery_CarneParcelasCONTRATO: TIntegerField
      DisplayLabel = 'Contrato'
      FieldName = 'CONTRATO'
      Origin = '"CARNE"."CONTRATO"'
      Required = True
      DisplayFormat = '####0000'
    end
    object IBQuery_CarneParcelasDATA_CONTRATO: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'DATA_CONTRATO'
      Origin = '"CARNE"."DATA_CONTRATO"'
    end
    object IBQuery_CarneParcelasNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Size = 50
    end
    object IBQuery_CarneParcelasCODIGO: TIBStringField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Size = 11
    end
    object IBQuery_CarneParcelasRG: TIBStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG'
      Origin = '"CARNE"."RG"'
      Size = 25
    end
    object IBQuery_CarneParcelasCPF: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF'
      Origin = '"CARNE"."CPF"'
    end
    object IBQuery_CarneParcelasTE: TIBStringField
      FieldName = 'TE'
      Origin = '"CARNE"."TE"'
      Size = 25
    end
    object IBQuery_CarneParcelasENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"CARNE"."ENDERECO"'
      Size = 50
    end
    object IBQuery_CarneParcelasBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"CARNE"."BAIRRO"'
      Size = 30
    end
    object IBQuery_CarneParcelasCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"CARNE"."CIDADE"'
      Size = 25
    end
    object IBQuery_CarneParcelasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CARNE"."CEP"'
      Size = 10
    end
    object IBQuery_CarneParcelasESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"CARNE"."ESTADO"'
      Size = 25
    end
    object IBQuery_CarneParcelasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CARNE"."UF"'
      Size = 2
    end
    object IBQuery_CarneParcelasNUMERO_PARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_CarneParcelasDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_CarneParcelasMES_REFERENCIA: TIBStringField
      DisplayLabel = 'Referente'
      FieldName = 'MES_REFERENCIA'
      Origin = '"CARNE"."MES_REFERENCIA"'
      Size = 15
    end
    object IBQuery_CarneParcelasVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor Mensalidade'
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasDATA_PAGAMENTO: TDateTimeField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBQuery_CarneParcelasVALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasOBS: TIBStringField
      DisplayLabel = 'Observa'#231#227'o:'
      FieldName = 'OBS'
      Origin = '"CARNE"."OBS"'
      Size = 50
    end
    object IBQuery_CarneParcelasSITUACAO: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Origin = '"CARNE"."SITUACAO"'
      Visible = False
      Size = 1
    end
    object IBQuery_CarneParcelasANO_BASE: TIBStringField
      DisplayLabel = 'Ano Base'
      FieldName = 'ANO_BASE'
      Origin = '"CARNE"."ANO_BASE"'
      Visible = False
      Size = 4
    end
    object IBQuery_CarneParcelasUSUARIO: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"CARNE"."USUARIO"'
      Visible = False
    end
    object IBQuery_CarneParcelasPAGAMENTO_MENSAL: TIBStringField
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"CARNE"."PAGAMENTO_MENSAL"'
      Visible = False
      Size = 2
    end
    object IBQuery_CarneParcelasDIA_VENCIMENTO: TIBStringField
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"CARNE"."DIA_VENCIMENTO"'
      Visible = False
      Size = 2
    end
    object IBQuery_CarneParcelasMODELOS: TIBStringField
      FieldName = 'MODELOS'
      Origin = '"CARNE"."MODELOS"'
      Visible = False
      Size = 10
    end
  end
end
