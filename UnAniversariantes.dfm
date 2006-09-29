object FrmAniversariantes: TFrmAniversariantes
  Left = 195
  Top = 106
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Aniversariantes'
  ClientHeight = 425
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 115
    Top = 375
    Width = 262
    Height = 41
    Caption = 'Exibir &Lista por M'#234's:'
    TabOrder = 2
    object ComboBox1: TComboBox
      Left = 112
      Top = 14
      Width = 97
      Height = 21
      AutoComplete = False
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      Text = 'JANEIRO'
      OnChange = ComboBox1Change
      OnKeyPress = ComboBox1KeyPress
      Items.Strings = (
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object RadioButton1: TRadioButton
      Left = 216
      Top = 16
      Width = 42
      Height = 17
      Caption = '&Hoje'
      TabOrder = 2
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 10
      Top = 16
      Width = 102
      Height = 17
      Caption = '&Selecione o M'#234's:'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = ComboBox1Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 375
    Width = 95
    Height = 41
    Caption = '&Idade:'
    TabOrder = 1
    object Label2: TLabel
      Left = 5
      Top = 15
      Width = 84
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = '0 Ano(s)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BtnImprimir: TBitBtn
    Left = 386
    Top = 386
    Width = 119
    Height = 25
    Cursor = crHandPoint
    Caption = 'Im&primir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtnImprimirClick
    NumGlyphs = 4
  end
  object Btn_Fechar: TBitBtn
    Left = 700
    Top = 386
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 776
    Height = 357
    Color = 16056308
    DataSource = Ds_Aniv
    FixedColor = cl3DLight
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyDown
  end
  object BtnImprimirCarta: TBitBtn
    Left = 578
    Top = 386
    Width = 119
    Height = 25
    Cursor = crHandPoint
    Caption = 'Im&primir Carta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BtnImprimirCartaClick
    NumGlyphs = 4
  end
  object Ds_Aniv: TDataSource
    DataSet = IBQuery_Anin
    Left = 160
    Top = 208
  end
  object IBQuery_Anin: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      
        'select BAIRRO, CEP, CIDADE, CODIGO, DATA_NASCIMENTO, ENDERECO, E' +
        'STADO, NOME_CLIENTE, PONTO_REFERENCIA, RELIGIAO, SEXO, TELEFONE,' +
        ' UF from CLIENTES')
    Filtered = True
    Left = 160
    Top = 160
    object IBQuery_AninCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 13
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 11
    end
    object IBQuery_AninNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 68
      FieldName = 'NOME_CLIENTE'
      Origin = '"CLIENTES"."NOME_CLIENTE"'
      Size = 50
    end
    object IBQuery_AninDATA_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      DisplayWidth = 17
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"CLIENTES"."DATA_NASCIMENTO"'
    end
    object IBQuery_AninENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 60
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object IBQuery_AninBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 36
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Size = 30
    end
    object IBQuery_AninCEP: TIBStringField
      DisplayWidth = 12
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Size = 10
    end
    object IBQuery_AninCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 25
    end
    object IBQuery_AninESTADO: TIBStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 30
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Size = 25
    end
    object IBQuery_AninUF: TIBStringField
      DisplayWidth = 5
      FieldName = 'UF'
      Origin = '"CLIENTES"."UF"'
      Size = 2
    end
    object IBQuery_AninPONTO_REFERENCIA: TIBStringField
      DisplayLabel = 'Ponto de Refer'#234'ncia'
      DisplayWidth = 61
      FieldName = 'PONTO_REFERENCIA'
      Origin = '"CLIENTES"."PONTO_REFERENCIA"'
      Size = 35
    end
    object IBQuery_AninRELIGIAO: TIBStringField
      DisplayLabel = 'Religi'#226'o'
      DisplayWidth = 36
      FieldName = 'RELIGIAO'
      Origin = '"CLIENTES"."RELIGIAO"'
      Size = 30
    end
    object IBQuery_AninSEXO: TIBStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 18
      FieldName = 'SEXO'
      Origin = '"CLIENTES"."SEXO"'
      Size = 9
    end
    object IBQuery_AninTELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 24
      FieldName = 'TELEFONE'
      Origin = '"CLIENTES"."TELEFONE"'
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 128
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      OnClick = Btn_FecharClick
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = Fechar1Click
      end
    end
  end
end
