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
    Height = 545
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 538
    Height = 576
    ItemHeight = 13
    TabOrder = 2
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
    Database = 'school_mgr'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 760
    Top = 72
    EncryptedPassword = '9CFF97FF9AFF93FF8CFF9AFF9EFF99FF9CFF'
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
end
