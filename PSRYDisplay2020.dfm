object Form2: TForm2
  Left = -10
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'PSRY Remote Display    9/15/20'
  ClientHeight = 1041
  ClientWidth = 7680
  Color = clBtnFace
  Constraints.MaxHeight = 1080
  Constraints.MaxWidth = 7696
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 956
    Width = 7680
    Height = 85
    Align = alBottom
    TabOrder = 0
    object IPAddress: TMemo
      Left = 104
      Top = 22
      Width = 105
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        '98.110.124.243')
      ParentFont = False
      TabOrder = 0
    end
  end
  object PanelX: TPanel
    Left = 0
    Top = 80
    Width = 7680
    Height = 876
    Align = alClient
    TabOrder = 1
    object ImageHydeYardPort: TImage
      Left = 0
      Top = 0
      Width = 2560
      Height = 800
      AutoSize = True
      OnMouseDown = ImageHydeYardPortMouseDown
    end
    object ImageLathamKrulish: TImage
      Left = 2560
      Top = 0
      Width = 2560
      Height = 800
      AutoSize = True
      OnMouseDown = ImageLathamKrulishMouseDown
    end
    object ImageNassauCliff: TImage
      Left = 5120
      Top = 0
      Width = 2560
      Height = 153
      AutoSize = True
      OnMouseDown = ImageNassauCliffMouseDown
    end
    object ReceiveBuffer: TMemo
      Left = 408
      Top = 232
      Width = 281
      Height = 80
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 0
      Visible = False
      WordWrap = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 7680
    Height = 80
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 408
      Top = 18
      Width = 27
      Height = 13
      Caption = 'Errors'
    end
    object Label2: TLabel
      Left = 951
      Top = 18
      Width = 67
      Height = 13
      Caption = 'DCC Breakers'
    end
    object Label3: TLabel
      Left = 216
      Top = 18
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object Label4: TLabel
      Left = 700
      Top = 18
      Width = 24
      Height = 13
      Caption = 'Train'
    end
    object Label5: TLabel
      Left = 512
      Top = 18
      Width = 59
      Height = 13
      Caption = 'Disconnects'
    end
    object Edit1: TEdit
      Left = 252
      Top = 15
      Width = 129
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Connect: TButton
      Left = 24
      Top = 13
      Width = 73
      Height = 25
      Caption = 'Connect'
      TabOrder = 2
      OnClick = ConnectClick
    end
    object Disconnect: TButton
      Left = 120
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Disconnect'
      TabOrder = 3
      OnClick = DisconnectClick
    end
    object ErrorBox: TEdit
      Left = 441
      Top = 15
      Width = 32
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object Breakers: TEdit
      Left = 1024
      Top = 15
      Width = 201
      Height = 21
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Train: TEdit
      Left = 730
      Top = 15
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnClick = TrainClick
    end
    object PSTime: TEdit
      Left = 824
      Top = 2
      Width = 89
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '12:00'
    end
    object Disconnects: TEdit
      Left = 583
      Top = 15
      Width = 34
      Height = 21
      TabOrder = 7
      Text = '0'
    end
  end
  object Tiles: TImageList
    BkColor = clWhite
    Left = 192
    Top = 272
  end
  object ClientSocket: TClientSocket
    Active = False
    Address = '192.168.2.2'
    ClientType = ctNonBlocking
    Port = 5204
    OnConnect = ClientSocketConnect
    OnRead = ClientSocketRead
    Left = 272
    Top = 272
  end
  object Watchdog: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = WatchdogTimer
    Left = 112
    Top = 272
  end
end
