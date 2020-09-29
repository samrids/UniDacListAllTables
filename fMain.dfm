object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 592
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 20
    Width = 158
    Height = 13
    Caption = 'Double click to view column name'
  end
  object Button1: TButton
    Left = 552
    Top = 8
    Width = 281
    Height = 25
    Caption = 'List all tables.'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 552
    Top = 39
    Width = 281
    Height = 355
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 400
    Width = 825
    Height = 184
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ListBox1: TListBox
    Left = 8
    Top = 39
    Width = 538
    Height = 355
    ItemHeight = 13
    TabOrder = 3
    OnDblClick = ListBox1DblClick
  end
  object UniMetaData1: TUniMetaData
    Connection = UniConnection1
    Left = 760
    Top = 136
  end
  object UniConnection1: TUniConnection
    ProviderName = 'mySQL'
    Port = 3306
    Database = 'banana'
    Username = 'root'
    Server = '192.168.1.69'
    Connected = True
    LoginPrompt = False
    Left = 760
    Top = 72
    EncryptedPassword = 'BEFF93FF8AFF92FF9AFF8BFFBFFFCFFFCBFFCEFFC8FFCFFFCCFF'
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 760
    Top = 16
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 760
    Top = 192
  end
  object UniMetaData2: TUniMetaData
    MetaDataKind = 'Columns'
    Connection = UniConnection1
    Left = 600
    Top = 216
  end
  object DataSource1: TDataSource
    DataSet = UniMetaData2
    Left = 472
    Top = 288
  end
end
