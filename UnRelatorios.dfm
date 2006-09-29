object FrmRelatorios: TFrmRelatorios
  Left = 272
  Top = 185
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Impress'#245'es'
  ClientHeight = 214
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BtnFechar: TBitBtn
    Left = 157
    Top = 176
    Width = 95
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnFecharClick
    NumGlyphs = 4
  end
  object Panel1: TGroupBox
    Left = 24
    Top = 16
    Width = 361
    Height = 145
    Caption = 'Imprimir:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object SpeedButton1: TBitBtn
      Left = 18
      Top = 24
      Width = 325
      Height = 25
      Cursor = crHandPoint
      Caption = 'Ficha de Atendimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SpeedButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 18
      Top = 64
      Width = 325
      Height = 25
      Cursor = crHandPoint
      Caption = 'Guia de Sepultamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 18
      Top = 104
      Width = 325
      Height = 25
      Cursor = crHandPoint
      Caption = 'Contrato de Presta'#231#227'o de Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
end
