object Form1: TForm1
  Left = 218
  Top = 114
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  AutoScroll = False
  AutoSize = True
  Caption = 'Pemrosesan Sinyal EKG - Jeff L Gaol 07111440000080'
  ClientHeight = 593
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 921
    Height = 593
    ActivePage = ts1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Segmentasi Sinyal'
      object lbl6: TLabel
        Left = 8
        Top = 288
        Width = 115
        Height = 14
        Caption = 'Waktu Sampling (s) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 240
        Top = 449
        Width = 77
        Height = 14
        Caption = 'Tengah QRS :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 240
        Top = 472
        Width = 87
        Height = 14
        Caption = 'Lebar Window :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 8
        Top = 312
        Width = 119
        Height = 14
        Caption = 'Banyak Sampling (n) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 168
        Top = 8
        Width = 134
        Height = 14
        Caption = 'Frekuensi Sampling (Hz):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 240
        Top = 488
        Width = 60
        Height = 13
        Caption = 'Hanya Ganjil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 8
        Top = 448
        Width = 72
        Height = 14
        Caption = 'Tengah P-P :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 8
        Top = 472
        Width = 87
        Height = 14
        Caption = 'Lebar Window :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl12: TLabel
        Left = 8
        Top = 488
        Width = 60
        Height = 13
        Caption = 'Hanya Ganjil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl13: TLabel
        Left = 8
        Top = 368
        Width = 441
        Height = 14
        Caption = '_______________________________________________________________'
      end
      object lbl14: TLabel
        Left = 464
        Top = 528
        Width = 127
        Height = 28
        Caption = 'Merah : Kompleks QRS '#13#10'Hijau : Satu Sinyal EKG'
      end
      object lbl19: TLabel
        Left = 8
        Top = 392
        Width = 116
        Height = 14
        Caption = 'Tipe-tipe Window :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bukafile: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Buka'
        TabOrder = 0
        OnClick = bukafileClick
      end
      object grafikanalisis: TChart
        Left = 8
        Top = 40
        Width = 441
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Sinyal yang akan Dianalisis')
        BottomAxis.Title.Caption = 'Sampel (n)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 2.000000000000000000
        LeftAxis.Minimum = -2.000000000000000000
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 2
        object satusinyal: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries1: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clGreen
          Title = 'Series2'
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries2: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clYellow
          Title = 'Series1'
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Tengah: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clBlue
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries3: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = 4227327
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries4: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = 33023
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object TengahBaru: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clGray
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object Segmentasi: TButton
        Left = 464
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Segmentasi'
        TabOrder = 16
        OnClick = SegmentasiClick
      end
      object cht1: TChart
        Left = 464
        Top = 40
        Width = 113
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        AnimatedZoom = True
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Segmen QRS')
        BottomAxis.Title.Caption = 'Sampel (n)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.LabelsSeparation = 0
        LeftAxis.Maximum = 2.000000000000000000
        LeftAxis.Minimum = -2.000000000000000000
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 17
        object sinyalbaru: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht2: TChart
        Left = 464
        Top = 288
        Width = 441
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'DFT')
        BottomAxis.Title.Caption = 'Hz'
        LeftAxis.Axis.Width = 1
        LeftAxis.ExactDateTime = False
        LeftAxis.Grid.Visible = False
        LeftAxis.Increment = 1.000000000000000000
        LeftAxis.MinorGrid.Style = psDot
        LeftAxis.MinorGrid.Visible = True
        LeftAxis.MinorTickCount = 1
        LeftAxis.Title.Caption = 'Mag.'
        Legend.Visible = False
        View3D = False
        TabOrder = 20
        object DFT: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object DFTPP: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object BarTengah: TScrollBar
        Left = 352
        Top = 448
        Width = 97
        Height = 17
        Cursor = crHandPoint
        PageSize = 0
        TabOrder = 13
        OnChange = BarTengahChange
      end
      object edt4: TEdit
        Left = 352
        Top = 472
        Width = 97
        Height = 22
        TabOrder = 14
        Text = '11'
      end
      object btn1: TButton
        Left = 336
        Top = 504
        Width = 113
        Height = 25
        Caption = 'Registrasi Window'
        TabOrder = 15
        OnClick = btn1Click
      end
      object edt5: TEdit
        Left = 136
        Top = 312
        Width = 65
        Height = 22
        TabOrder = 4
        Text = '700'
      end
      object btn2: TButton
        Left = 96
        Top = 344
        Width = 105
        Height = 25
        Caption = 'Plot'
        TabOrder = 5
        OnClick = btn2Click
      end
      object edt3: TEdit
        Left = 136
        Top = 288
        Width = 65
        Height = 22
        TabOrder = 3
        Text = '0,01'
      end
      object edt6: TEdit
        Left = 312
        Top = 8
        Width = 137
        Height = 22
        ReadOnly = True
        TabOrder = 1
        Text = '100'
      end
      object rb1: TRadioButton
        Left = 8
        Top = 416
        Width = 73
        Height = 17
        Caption = 'Dirichlet'
        TabOrder = 6
      end
      object rb2: TRadioButton
        Left = 96
        Top = 416
        Width = 73
        Height = 17
        Caption = 'Hanning'
        TabOrder = 7
      end
      object rb3: TRadioButton
        Left = 184
        Top = 416
        Width = 73
        Height = 17
        Caption = 'Hamming'
        TabOrder = 8
      end
      object rb4: TRadioButton
        Left = 272
        Top = 416
        Width = 73
        Height = 17
        Caption = 'Blackman'
        TabOrder = 9
      end
      object cht12: TChart
        Left = 784
        Top = 40
        Width = 121
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Tipe Window')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.LabelsSeparation = 0
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Minimum = -0.500000000000000000
        LeftAxis.Title.Caption = 'Mag.'
        Legend.Visible = False
        View3D = False
        TabOrder = 19
        object sinyalfakewindow: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object rb5: TRadioButton
        Left = 360
        Top = 416
        Width = 73
        Height = 17
        Caption = 'Sinus'
        TabOrder = 10
      end
      object edt8: TEdit
        Left = 104
        Top = 472
        Width = 97
        Height = 22
        TabOrder = 12
        Text = '107'
      end
      object barTengah2: TScrollBar
        Left = 104
        Top = 448
        Width = 97
        Height = 17
        Cursor = crHandPoint
        PageSize = 0
        TabOrder = 11
        OnChange = barTengah2Change
      end
      object cht14: TChart
        Left = 584
        Top = 40
        Width = 193
        Height = 233
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Segmen Satu Sinyal EKG')
        BottomAxis.Title.Caption = 'Sampel (n)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.LabelsSeparation = 0
        LeftAxis.Maximum = 2.000000000000000000
        LeftAxis.Minimum = -2.000000000000000000
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 18
        object sinyalbaru2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
    object ts2: TTabSheet
      Caption = 'Eksperimen 1 : Filter Linear'
      ImageIndex = 1
      object lbl17: TLabel
        Left = 120
        Top = 376
        Width = 74
        Height = 14
        Caption = 'Cut-off Atas :'
      end
      object lbl18: TLabel
        Left = 8
        Top = 376
        Width = 86
        Height = 14
        Caption = 'Cut-off Bawah :'
      end
      object lbl2: TLabel
        Left = 464
        Top = 496
        Width = 127
        Height = 42
        Caption = 
          'Merah : Kompleks QRS '#13#10'Hijau : Satu Sinyal EKG'#13#10'Biru : Hasil Fil' +
          'ter Linear'
      end
      object lbl15: TLabel
        Left = 8
        Top = 272
        Width = 152
        Height = 16
        Caption = 'Filter Butterworth Orde 2 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl20: TLabel
        Left = 8
        Top = 392
        Width = 19
        Height = 13
        Caption = 'HPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl21: TLabel
        Left = 120
        Top = 392
        Width = 17
        Height = 13
        Caption = 'LPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl22: TLabel
        Left = 240
        Top = 272
        Width = 132
        Height = 14
        Caption = 'Filter Pole-Zero Orde 2 :'
      end
      object lbl23: TLabel
        Left = 240
        Top = 328
        Width = 15
        Height = 14
        Caption = 'R :'
      end
      object lbl24: TLabel
        Left = 352
        Top = 328
        Width = 41
        Height = 14
        Caption = 'Theta :'
      end
      object lbl28: TLabel
        Left = 8
        Top = 248
        Width = 96
        Height = 14
        Caption = 'Tipe-tipe Filter :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cht3: TChart
        Left = 1200
        Top = 440
        Width = 137
        Height = 81
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Uji Step LPF')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Title.Caption = 'Mag.'
        Legend.Visible = False
        View3D = False
        TabOrder = 16
        Visible = False
        object LPFGraph: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht4: TChart
        Left = 1200
        Top = 352
        Width = 137
        Height = 81
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Uji Step HPF')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Title.Caption = 'Mag.'
        Legend.Visible = False
        View3D = False
        TabOrder = 17
        Visible = False
        object HPFGraph: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht5: TChart
        Left = 464
        Top = 8
        Width = 441
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Sinyal Terfilter')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 2.000000000000000000
        LeftAxis.Minimum = -2.000000000000000000
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 13
        object EndingLPF: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries7: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clGreen
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries8: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clYellow
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object tengahLPF: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clBlue
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object EndingHPF: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries5: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clGreen
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries6: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clYellow
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object tengahbarubaru: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clBlue
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object EndingBPF: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries9: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clGreen
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries10: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clYellow
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object tengahBPF: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clBlue
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object EndingBPFPoleZero: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries11: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clGreen
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object brsrsSeries12: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clYellow
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object tengahBPFPZ: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clBlue
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht7: TChart
        Left = 8
        Top = 8
        Width = 441
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Sinyal Awal')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 2.000000000000000000
        LeftAxis.Minimum = -2.000000000000000000
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 0
        object AsliSebFilter: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht15: TChart
        Left = 464
        Top = 256
        Width = 441
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'DFT')
        BottomAxis.Title.Caption = 'Hz'
        LeftAxis.Title.Caption = 'Mag.'
        Legend.Visible = False
        View3D = False
        TabOrder = 15
        object DFTEnd: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlue
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object DFTPP2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object DFT2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object rb6: TRadioButton
        Left = 8
        Top = 296
        Width = 57
        Height = 17
        Caption = 'LPF'
        TabOrder = 1
      end
      object rb7: TRadioButton
        Left = 8
        Top = 320
        Width = 57
        Height = 17
        Caption = 'HPF'
        TabOrder = 2
      end
      object edt1: TEdit
        Left = 8
        Top = 440
        Width = 97
        Height = 22
        ReadOnly = True
        TabOrder = 6
      end
      object edt2: TEdit
        Left = 120
        Top = 440
        Width = 97
        Height = 22
        ReadOnly = True
        TabOrder = 7
      end
      object btn6: TButton
        Left = 392
        Top = 528
        Width = 57
        Height = 25
        Caption = 'Filter'
        TabOrder = 14
        OnClick = btn6Click
      end
      object rb8: TRadioButton
        Left = 8
        Top = 344
        Width = 57
        Height = 17
        Caption = 'BPF'
        TabOrder = 3
      end
      object rb11: TRadioButton
        Left = 240
        Top = 296
        Width = 57
        Height = 17
        Caption = 'BPF'
        TabOrder = 8
      end
      object resbar: TScrollBar
        Left = 240
        Top = 352
        Width = 97
        Height = 17
        Cursor = crHandPoint
        PageSize = 0
        TabOrder = 9
        OnChange = resbarChange
      end
      object edt9: TEdit
        Left = 240
        Top = 376
        Width = 97
        Height = 22
        ReadOnly = True
        TabOrder = 10
      end
      object tetbar: TScrollBar
        Left = 352
        Top = 352
        Width = 97
        Height = 17
        Cursor = crHandPoint
        PageSize = 0
        TabOrder = 11
        OnChange = tetbarChange
      end
      object edt10: TEdit
        Left = 352
        Top = 376
        Width = 97
        Height = 22
        ReadOnly = True
        TabOrder = 12
      end
      object cht16: TChart
        Left = 240
        Top = 416
        Width = 137
        Height = 137
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        MarginBottom = 5
        MarginLeft = 5
        MarginRight = 5
        MarginTop = 5
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.ExactDateTime = False
        BottomAxis.Increment = 0.100000000000000000
        BottomAxis.Maximum = 1.300000000000000000
        BottomAxis.Minimum = -1.300000000000000000
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.ExactDateTime = False
        LeftAxis.Increment = 0.100000000000000000
        LeftAxis.Maximum = 1.300000000000000000
        LeftAxis.Minimum = -1.300000000000000000
        Legend.Visible = False
        View3D = False
        TabOrder = 18
        object lingkaran1: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlack
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object lingkaran2: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clBlack
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object pole1: TPointSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Pen.Color = clRed
          Pointer.Pen.Width = 2
          Pointer.Style = psDiagCross
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object pole2: TPointSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = clGreen
          Pointer.InflateMargins = True
          Pointer.Pen.Color = clRed
          Pointer.Pen.Width = 2
          Pointer.Style = psDiagCross
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object zero1: TPointSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = clYellow
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object zero2: TPointSeries
          Marks.ArrowLength = 0
          Marks.Visible = False
          SeriesColor = clBlue
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.Visible = True
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cutbawah: TScrollBar
        Left = 8
        Top = 416
        Width = 97
        Height = 17
        Cursor = crHandPoint
        PageSize = 0
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
        OnChange = cutbawahChange
      end
      object cutatas: TScrollBar
        Left = 120
        Top = 416
        Width = 97
        Height = 17
        Cursor = crHandPoint
        PageSize = 0
        TabOrder = 5
        OnChange = cutatasChange
      end
    end
    object ts3: TTabSheet
      Caption = 'Eksperimen 2 : Filter Non-linear'
      ImageIndex = 2
      object lbl9: TLabel
        Left = 304
        Top = 488
        Width = 140
        Height = 14
        Caption = 'Window Moving Average:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 304
        Top = 248
        Width = 43
        Height = 23
        Caption = 'BPM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cht8: TChart
        Left = 8
        Top = 8
        Width = 281
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Turunan')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 0
        object turunanGraph: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht9: TChart
        Left = 304
        Top = 8
        Width = 281
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Kuadrat')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 1
        object kuadratGraph: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht10: TChart
        Left = 592
        Top = 8
        Width = 281
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Moving Average')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 2
        object averageGraph: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht11: TChart
        Left = 8
        Top = 256
        Width = 281
        Height = 233
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Thresholding')
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 2.000000000000000000
        LeftAxis.Minimum = -1.000000000000000000
        LeftAxis.Title.Caption = 'Teg. (mV)'
        Legend.Visible = False
        View3D = False
        TabOrder = 3
        object ambangGraph: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object edt7: TEdit
        Left = 464
        Top = 488
        Width = 121
        Height = 22
        TabOrder = 5
        Text = '20'
      end
      object btn3: TButton
        Left = 512
        Top = 520
        Width = 75
        Height = 25
        Caption = 'Filter'
        TabOrder = 6
        OnClick = btn3Click
      end
      object BPM: TMemo
        Left = 304
        Top = 280
        Width = 281
        Height = 201
        Lines.Strings = (
          'BPM')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 4
      end
    end
    object ts4: TTabSheet
      Caption = 'Kalibrasi DFT'
      ImageIndex = 3
      object lbl25: TLabel
        Left = 472
        Top = 504
        Width = 138
        Height = 14
        Caption = 'Frekuensi Sampling (Hz) :'
      end
      object lbl26: TLabel
        Left = 472
        Top = 480
        Width = 94
        Height = 14
        Caption = 'Jumlah data (n) :'
      end
      object lbl27: TLabel
        Left = 472
        Top = 456
        Width = 120
        Height = 14
        Caption = 'Frekuensi Sinyal (Hz) :'
      end
      object cht6: TChart
        Left = 8
        Top = 8
        Width = 361
        Height = 217
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Sinyal Osilasi Variabel')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Title.Caption = 'Mag.'
        Legend.Visible = False
        View3D = False
        TabOrder = 0
        object sinusgraph: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object btn4: TButton
        Left = 664
        Top = 536
        Width = 75
        Height = 25
        Caption = 'Uji'
        TabOrder = 1
        OnClick = btn4Click
      end
      object edt12: TEdit
        Left = 624
        Top = 480
        Width = 113
        Height = 22
        TabOrder = 2
        Text = '200'
      end
      object edt11: TEdit
        Left = 624
        Top = 504
        Width = 113
        Height = 22
        TabOrder = 3
        Text = '100'
      end
      object edt13: TEdit
        Left = 624
        Top = 456
        Width = 113
        Height = 22
        TabOrder = 4
        Text = '5'
      end
      object cht13: TChart
        Left = 376
        Top = 8
        Width = 361
        Height = 217
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'DFT')
        BottomAxis.Title.Caption = 'Hz'
        LeftAxis.Title.Caption = 'Mag.'
        Legend.Visible = False
        View3D = False
        TabOrder = 5
        object DFTUji: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht17: TChart
        Left = 8
        Top = 232
        Width = 361
        Height = 217
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Sinyal DC')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 2.000000000000000000
        LeftAxis.Title.Caption = 'Mag.'
        Legend.Visible = False
        View3D = False
        TabOrder = 6
        object ujiDC: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object cht18: TChart
        Left = 376
        Top = 232
        Width = 361
        Height = 217
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'DFT Sinyal DC')
        Legend.Visible = False
        View3D = False
        TabOrder = 7
        object DFTDC: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
    object ts5: TTabSheet
      Caption = 'Perbandingan'
      ImageIndex = 4
      object Label2: TLabel
        Left = 8
        Top = 472
        Width = 101
        Height = 14
        Caption = 'Pembatas Bawah :'
      end
      object lbl1: TLabel
        Left = 248
        Top = 472
        Width = 89
        Height = 14
        Caption = 'Pembatas Atas :'
      end
      object lbl16: TLabel
        Left = 480
        Top = 472
        Width = 61
        Height = 14
        Caption = 'Selisih (n) :'
      end
      object lbl29: TLabel
        Left = 480
        Top = 496
        Width = 59
        Height = 14
        Caption = 'Selisih (s) :'
      end
      object cht19: TChart
        Left = 8
        Top = 8
        Width = 897
        Height = 449
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Perbandingan Sinyal Asli dan Terproses')
        BottomAxis.Title.Caption = 'Sample (n)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 6.000000000000000000
        LeftAxis.Minimum = -2.000000000000000000
        Legend.Visible = False
        View3D = False
        TabOrder = 0
        object sinyalasli: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object sinyalbanding: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object baratas: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clYellow
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object barbawah: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = False
          SeriesColor = clBlue
          BarWidthPercent = 1
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object btn5: TButton
        Left = 832
        Top = 472
        Width = 75
        Height = 25
        Caption = 'Plot'
        TabOrder = 7
        OnClick = btn5Click
      end
      object banding1: TScrollBar
        Left = 128
        Top = 472
        Width = 97
        Height = 17
        Cursor = crHandPoint
        PageSize = 0
        TabOrder = 1
        OnChange = banding1Change
      end
      object banding2: TScrollBar
        Left = 352
        Top = 472
        Width = 97
        Height = 17
        Cursor = crHandPoint
        PageSize = 0
        TabOrder = 2
        OnChange = banding2Change
      end
      object edt14: TEdit
        Left = 128
        Top = 496
        Width = 97
        Height = 22
        ReadOnly = True
        TabOrder = 3
      end
      object edt15: TEdit
        Left = 352
        Top = 496
        Width = 97
        Height = 22
        ReadOnly = True
        TabOrder = 4
      end
      object edt16: TEdit
        Left = 560
        Top = 472
        Width = 97
        Height = 22
        ReadOnly = True
        TabOrder = 5
      end
      object edt17: TEdit
        Left = 560
        Top = 496
        Width = 97
        Height = 22
        TabOrder = 6
      end
    end
  end
  object dialogBuka: TOpenDialog
    Left = 16
    Top = 624
  end
end
