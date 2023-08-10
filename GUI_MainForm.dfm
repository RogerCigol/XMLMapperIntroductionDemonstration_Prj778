object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    'XML Transform Demonstrations - Cigol Controls Limited - www.cigo' +
    'l.com'
  ClientHeight = 539
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000EEE
    EEEEEEEEEEEEEEEEEEEEEEEEEEE00EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE00EEE
    EEEEEEEEEEEEEEEEEEEEEEEEEEE00EE000000000000000000000000000000EE0
    EE0EEEEEEEE0EEEEEEEE0EEEEEE00EE0EE0EEEEEEEE0EEEEEEEE0EEEEEE00EE0
    EE0EE0000EE0EE0000EE0EE000000EE0EE0EE0EE0EE0EE0EE0EE0EE000000EE0
    EE0EE0EE0EE0EE0EE0EE0EE000000EE0EE0EE0E00EE0EE0EE0EE0EE000000EE0
    EE0EE0E0EEE0EE0EE0EE0EE000000EE0EE0EE0E0EEE0EE0EE0EE0EE000000EE0
    EE0EE0E00000EE0EE0EE0EE000000EE0EE0EE0EEEEE0EE0EE0EE0EE000000EE0
    EE0EE0EEEEE0EE0EE0EE0EE000000EE0000EE0000000EE0000EE0EE000000EE0
    EE0EEEEEEEE0EEEEEEEE0EE0EEE00EE0EE0EEEEEEEE0EEEEEEEE0EE0EEE00EE0
    000000000000000000000000EEE00EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE00EEE
    EEEEEEEEEEEEEEEEEEEEEEEEEEE00EEEEEEEEEEEEEEEEEEEEEEEEEEEEEE00000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
    00000000000000000000000000000000000000000000000000000000000F0000
    000F0000000F0000000F0000000F0000000F0000000F0000000F000000000000
    0000000000000000000000000000000000000000000000000000FFFFFFFF}
  Position = poScreenCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 282
    Height = 16
    Caption = 'Data read in from XML file (using XML transform)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 301
    Width = 119
    Height = 16
    Caption = 'Data in FDMemTable'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 27
    Width = 889
    Height = 185
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ClearButton: TButton
    Left = 968
    Top = 483
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 1
    OnClick = ClearButtonClick
  end
  object Load1Button: TButton
    Left = 960
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Load 1'
    TabOrder = 2
    OnClick = Load1ButtonClick
  end
  object Load2Button: TButton
    Left = 960
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Load 2'
    TabOrder = 3
    OnClick = Load2ButtonClick
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 323
    Width = 889
    Height = 185
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object AppendCheckBox: TCheckBox
    Left = 960
    Top = 27
    Width = 97
    Height = 17
    Caption = 'Append records'
    TabOrder = 5
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 208
    Top = 216
  end
  object XMLTransform1: TXMLTransform
    TransformationFile = 
      'D:\Projects\MVP 778\XML-mapper\C code for project xml\Transform ' +
      'files\Authors__simple_ALL.xtr'
    Left = 40
    Top = 248
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 752
    Top = 248
  end
  object DataSource2: TDataSource
    DataSet = FDMemTable1
    Left = 840
    Top = 272
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 464
    Top = 248
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    DataSet = ClientDataSet1
    Left = 336
    Top = 248
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = FDMemTable1
    Left = 592
    Top = 248
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 984
    Top = 352
  end
end
