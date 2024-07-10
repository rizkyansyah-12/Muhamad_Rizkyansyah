object Form1: TForm1
  Left = 367
  Top = 157
  Width = 675
  Height = 551
  Caption = 'kustomer'
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 32
    Height = 21
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 55
    Height = 21
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 45
    Height = 21
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 120
    Width = 57
    Height = 21
    Caption = 'EMAIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 160
    Width = 76
    Height = 21
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 200
    Width = 79
    Height = 21
    Caption = 'MEMBER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 384
    Top = 200
    Width = 104
    Height = 21
    Caption = 'DISKON      :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 416
    Width = 150
    Height = 21
    Caption = 'MASUKAN NAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 144
    Top = 16
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 144
    Top = 48
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 144
    Top = 80
    Width = 201
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 144
    Top = 120
    Width = 201
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 144
    Top = 160
    Width = 201
    Height = 21
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 200
    Width = 201
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = ComboBox1Change
  end
  object Edit6: TEdit
    Left = 208
    Top = 416
    Width = 137
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 112
    Top = 240
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 240
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 288
    Top = 240
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 376
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 376
    Top = 416
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 32
    Top = 240
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 12
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 208
    Top = 464
    Width = 75
    Height = 25
    Caption = 'CETAK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Button7Click
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 272
    Width = 417
    Height = 121
    DataSource = DataModule2.Dskustomer
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
end
