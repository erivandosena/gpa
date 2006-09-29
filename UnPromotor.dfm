object FrmPromotor: TFrmPromotor
  Left = 238
  Top = 102
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Promotores'
  ClientHeight = 438
  ClientWidth = 434
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 12
    Top = 53
    Width = 411
    Height = 93
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 24
    Top = 59
    Width = 112
    Height = 13
    Caption = 'Nome do(a) Promotor(a)'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 12
    Top = 152
    Width = 62
    Height = 13
    Caption = 'Promotor(es):'
  end
  object Label2: TLabel
    Left = 124
    Top = 99
    Width = 119
    Height = 13
    Caption = 'Apelido do(a) Promotor(a)'
    FocusControl = DBEdit2
  end
  object DBText1: TDBText
    Left = 24
    Top = 116
    Width = 89
    Height = 18
    Alignment = taCenter
    Color = clWhite
    DataField = 'CODIGO_P'
    DataSource = Dm.Ds_PROMOTOR
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 99
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit2
  end
  object Panel1: TPanel
    Left = 12
    Top = 346
    Width = 411
    Height = 81
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object BtnExcluir: TBitBtn
      Left = 210
      Top = 8
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnExcluirClick
    end
    object BtnCancelar: TBitBtn
      Left = 310
      Top = 8
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnNovo: TBitBtn
      Left = 10
      Top = 8
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Caption = 'No&vo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnNovoClick
    end
    object BtnSalvar: TBitBtn
      Left = 110
      Top = 8
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnSalvarClick
    end
    object BtnAlterar: TBitBtn
      Left = 10
      Top = 44
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Caption = 'Al&terar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnAlterarClick
    end
    object BtnFechar: TBitBtn
      Left = 310
      Top = 44
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BtnFecharClick
    end
    object BtnAnterior: TBitBtn
      Left = 110
      Top = 44
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Caption = '&Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BtnAnteriorClick
    end
    object BtnProximo: TBitBtn
      Left = 210
      Top = 44
      Width = 90
      Height = 30
      Cursor = crHandPoint
      Caption = '&Pr'#243'ximo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BtnProximoClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 74
    Width = 387
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'NOME_PROMOTOR'
    DataSource = Dm.Ds_PROMOTOR
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 168
    Width = 411
    Height = 169
    Color = clWhite
    DataSource = Dm.Ds_PROMOTOR
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'APELIDO_PROMOTOR'
        ReadOnly = True
        Width = 388
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 41
    Align = alTop
    Caption = 'CADASTRO DE PROMOTORES'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 124
    Top = 114
    Width = 287
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'APELIDO_PROMOTOR'
    DataSource = Dm.Ds_PROMOTOR
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_PROMOTOR
    OnStateChange = DataSource1StateChange
    Left = 200
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 152
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object N2: TMenuItem
        Caption = '-'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = BtnFecharClick
      end
    end
  end
  object IBQueryApelidoPRO: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select COD_PROM, APELIDO_PROMOTOR from PROMOTOR'
      'order by APELIDO_PROMOTOR')
    Left = 184
    Top = 104
  end
end
