unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, ComCtrls, Math;

type
  TForm1 = class(TForm)
    dialogBuka: TOpenDialog;
    pgc1: TPageControl;
    ts1: TTabSheet;
    lbl6: TLabel;
    lbl7: TLabel;
    Label1: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl8: TLabel;
    bukafile: TButton;
    grafikanalisis: TChart;
    satusinyal: TLineSeries;
    brsrsSeries1: TBarSeries;
    brsrsSeries2: TBarSeries;
    Tengah: TBarSeries;
    Segmentasi: TButton;
    cht1: TChart;
    sinyalbaru: TLineSeries;
    cht2: TChart;
    DFT: TLineSeries;
    BarTengah: TScrollBar;
    edt4: TEdit;
    btn1: TButton;
    edt5: TEdit;
    btn2: TButton;
    edt3: TEdit;
    edt6: TEdit;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    cht12: TChart;
    sinyalfakewindow: TLineSeries;
    rb5: TRadioButton;
    ts2: TTabSheet;
    cht3: TChart;
    LPFGraph: TLineSeries;
    cht4: TChart;
    HPFGraph: TLineSeries;
    cht5: TChart;
    EndingLPF: TLineSeries;
    cht7: TChart;
    AsliSebFilter: TLineSeries;
    ts3: TTabSheet;
    lbl9: TLabel;
    cht8: TChart;
    turunanGraph: TLineSeries;
    cht9: TChart;
    kuadratGraph: TLineSeries;
    cht10: TChart;
    averageGraph: TLineSeries;
    cht11: TChart;
    ambangGraph: TLineSeries;
    edt7: TEdit;
    btn3: TButton;
    BPM: TMemo;
    lbl10: TLabel;
    brsrsSeries3: TBarSeries;
    brsrsSeries4: TBarSeries;
    TengahBaru: TBarSeries;
    edt8: TEdit;
    lbl3: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    barTengah2: TScrollBar;
    lbl13: TLabel;
    cht14: TChart;
    sinyalbaru2: TLineSeries;
    cht15: TChart;
    DFTEnd: TLineSeries;
    DFTPP: TLineSeries;
    rb6: TRadioButton;
    rb7: TRadioButton;
    edt1: TEdit;
    lbl17: TLabel;
    lbl18: TLabel;
    edt2: TEdit;
    btn6: TButton;
    rb8: TRadioButton;
    brsrsSeries7: TBarSeries;
    brsrsSeries8: TBarSeries;
    tengahLPF: TBarSeries;
    DFTPP2: TLineSeries;
    DFT2: TLineSeries;
    lbl2: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    rb11: TRadioButton;
    EndingHPF: TLineSeries;
    brsrsSeries5: TBarSeries;
    brsrsSeries6: TBarSeries;
    tengahbarubaru: TBarSeries;
    EndingBPF: TLineSeries;
    brsrsSeries9: TBarSeries;
    brsrsSeries10: TBarSeries;
    tengahBPF: TBarSeries;
    EndingBPFPoleZero: TLineSeries;
    brsrsSeries11: TBarSeries;
    brsrsSeries12: TBarSeries;
    tengahBPFPZ: TBarSeries;
    lbl19: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    resbar: TScrollBar;
    edt9: TEdit;
    tetbar: TScrollBar;
    edt10: TEdit;
    ts4: TTabSheet;
    cht6: TChart;
    lbl25: TLabel;
    sinusgraph: TLineSeries;
    btn4: TButton;
    lbl26: TLabel;
    edt12: TEdit;
    edt11: TEdit;
    edt13: TEdit;
    lbl27: TLabel;
    cht13: TChart;
    DFTUji: TLineSeries;
    cht17: TChart;
    ujiDC: TLineSeries;
    cht18: TChart;
    DFTDC: TLineSeries;
    cht16: TChart;
    lingkaran1: TFastLineSeries;
    lingkaran2: TFastLineSeries;
    pole1: TPointSeries;
    pole2: TPointSeries;
    zero1: TPointSeries;
    zero2: TPointSeries;
    ts5: TTabSheet;
    cht19: TChart;
    sinyalasli: TLineSeries;
    btn5: TButton;
    sinyalbanding: TLineSeries;
    banding1: TScrollBar;
    banding2: TScrollBar;
    Label2: TLabel;
    edt14: TEdit;
    lbl1: TLabel;
    edt15: TEdit;
    lbl16: TLabel;
    edt16: TEdit;
    cutbawah: TScrollBar;
    cutatas: TScrollBar;
    lbl28: TLabel;
    baratas: TBarSeries;
    barbawah: TBarSeries;
    lbl29: TLabel;
    edt17: TEdit;
    procedure bukafileClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SegmentasiClick(Sender: TObject);
    procedure BarTengahChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure barTengah2Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure resbarChange(Sender: TObject);
    procedure tetbarChange(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure banding1Change(Sender: TObject);
    procedure banding2Change(Sender: TObject);
    procedure cutbawahChange(Sender: TObject);
    procedure cutatasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  csv : TextFile;
  sinyalDC, sinyal, sinyal2, baru, real, imaginer,
  real2, imaginer2, real3, imaginer3, real4, imaginer4,
  real5, imaginer5, magnitude, magnitude2, magnitude3,
  magnitude4, magnitude5, sinyalfake, sinyalfake1,
  sinyalfake2, LPF, LPF2, LPF3, HPF, HPF2, HPF3,
  BPFPZ, turunan, kuadrat, moving, ambang, baruPP, yy,
  sinusfifty, parser
  : array[0..100000] of Double;

  locker, locker2, atasval, bawahval, i, j, k, l, ll, iold,
  a, b, c, d, aa, bb, cc, dd, length : Integer;

  ts, fs, omegalpf, omegalpf1, omegahpf, omegahpf1,
  omegalpfold, omegahpfold, killer, tertinggi, Ka, detak : Extended;

  la, lb, lc, ld, le, lf : Extended;
  ha, hb, hc, hd, he, hf : Extended;
  lla, llb, llc, lld, lle, llf : Extended;
  hha, hhb, hhc, hhd, hhe, hhf : Extended;
  kunci : Integer;
  garisMin, garisMaks, windowing, garisMin2, garisMaks2,
  windowing2, windowMaf, ouvert : Integer;
  T : Double;
  resultant, teta, ouvert2 : Extended;
  sumbux, sumbuy, sumbuy_bawah : Double;
  xatas, yatas, xbawah, ybawah : double;

implementation

{$R *.dfm}

procedure TForm1.bukafileClick(Sender: TObject);
begin

if dialogBuka.Execute then
  begin
    sinyalbaru.Clear;
    sinyalbaru2.Clear;
    satusinyal.Clear;
    DFT.Clear;
    DFTPP.Clear;
    DFTPP2.Clear;
    DFT2.Clear;
    DFTEnd.Clear;
    AsliSebFilter.Clear;
    LPFGraph.Clear;
    HPFGraph.Clear;
    EndingLPF.Clear;
    EndingHPF.Clear;
    EndingBPF.Clear;
    EndingBPFPoleZero.Clear;
    brsrsSeries1.Clear;
    brsrsSeries2.Clear;
    brsrsSeries3.Clear;
    brsrsSeries4.Clear;
    brsrsSeries5.Clear;
    brsrsSeries6.Clear;
    brsrsSeries7.Clear;
    brsrsSeries8.Clear;
    brsrsSeries9.Clear;
    brsrsSeries10.Clear;
    sinyalbanding.Clear;
    sinyalasli.Clear;
    barbawah.Clear;
    baratas.Clear;
    TengahLPF.Clear;
    TengahBPF.Clear;
    Tengah.Clear;
    TengahBaru.Clear;
    TengahBaruBaru.Clear;
    turunanGraph.Clear;
    kuadratGraph.Clear;
    averageGraph.Clear;
    ambangGraph.Clear;
    BPM.Clear;
    brsrsSeries11.Clear;
    brsrsSeries12.Clear;
    TengahBPFPZ.Clear;
    AssignFile(csv, dialogBuka.FileName);
    Reset(csv);
    while not Eof (csv) do
    begin
      Readln(csv, i, sinyal[i]);
      Inc(i);
    end;
    for i:= 0 to length do
    begin
      satusinyal.AddXY(i,sinyal[i]);
    end;
    CloseFile(csv);
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  BPM.Clear;
  locker := 0;
  locker2 := 0;

  sumbux:=-1;
  while sumbux<=1 do
  begin
  sumbuy := sqrt(1-sqr(sumbux));
  sumbuy_bawah := -(sqrt(1-sqr(sumbux)));
  lingkaran1.addxy(sumbux,sumbuy);
  lingkaran2.AddXY(sumbux,sumbuy_bawah);
  sumbux := sumbux +0.00001;
  end;

  windowing := StrToInt(edt4.Text) div 2;
  windowing2 := StrToInt(edt8.Text) div 2;
  length := StrToInt(edt5.Text);
  garisMin := 0;
  garisMaks := 0;
  garisMin2 := 0;
  garisMaks2 := 0;
  resultant := 0;
  teta := 0;
  atasval := 0;
  bawahval := 0;
  banding1.Max := length;
  banding1.Min := 0;
  banding2.Max := length;
  banding2.Min := 0;
  BarTengah.Max := length-windowing;
  BarTengah.Min := 0+windowing;
  BarTengah2.Max := length-windowing2;
  BarTengah2.Min := 0+windowing2;
  resultant := 0;
  teta := 0;
  resbar.Max := 1000;
  resbar.Min := 0;
  tetbar.Max := 359;
  tetbar.Min := 0;
end;

procedure TForm1.BarTengahChange(Sender: TObject);
begin
  brsrsSeries1.Clear;
  brsrsSeries2.Clear;
  Tengah.Clear;
  windowing := StrToInt(edt4.Text) div 2;
  garisMaks := BarTengah.Position+windowing;
  garisMin := BarTengah.Position-windowing;
  brsrsSeries1.AddXY(garisMin,2);
  brsrsSeries1.AddXY(garisMin,-2);
  brsrsSeries2.AddXY(garisMaks,2);
  brsrsSeries2.AddXY(garisMaks,-2);
  Tengah.AddXY(BarTengah.Position,2);
  Tengah.AddXY(BarTengah.Position,-2);
end;

procedure TForm1.SegmentasiClick(Sender: TObject);
begin
  locker := 1;
  sinyalbanding.Clear;
  sinyalasli.Clear;
  barbawah.Clear;
  baratas.Clear;
  windowing := StrToInt(edt4.Text) div 2;
  windowing2 := StrToInt(edt8.Text) div 2;
  a := garisMin;
  b := garisMaks;
  aa := garisMin2;
  bb := garisMaks2;
  sinyalbaru.Clear;
  sinyalbaru2.Clear;
  AsliSebFilter.Clear;
  DFT.Clear;
  DFTPP.Clear;
  DFTEnd.Clear;
  DFTPP2.Clear;
  DFT2.Clear;
  sinyalfakewindow.Clear;
  turunanGraph.Clear;
  kuadratGraph.Clear;
  averageGraph.Clear;
  ambangGraph.Clear;
  BPM.Clear;
  turunanGraph.Clear;
  kuadratGraph.Clear;
  averageGraph.Clear;
  ambangGraph.Clear;
  BPM.Clear;
  AsliSebFilter.Clear;
  brsrsSeries7.Clear;
  brsrsSeries8.Clear;
  brsrsSeries9.Clear;
  brsrsSeries10.Clear;
  TengahLPF.Clear;
  TengahBPF.Clear;
  TengahBaruBaru.Clear;
  EndingLPF.Clear;
  EndingHPF.Clear;
  EndingBPF.Clear;
  EndingBPFPoleZero.Clear;
  brsrsSeries11.Clear;
  brsrsSeries12.Clear;
  TengahBPFPZ.Clear;
  k := 0;
  ts := StrToFloat(edt3.Text);
  fs := 1/ts;
  edt6.Text := (FloatToStr(fs));

  for i:= 0 to length do
  begin
    sinyalfake1[i] := 1;
    sinyalfake2[i] := 0;
    baru[i] := 0;
  end;

  //Pemotongan Sinyal
  if rb1.Checked then
  begin
    for i:= 0 to length do
    begin
      if i < a then
      begin
        c := i-a;
        baru[c] := 0;
      end;

      if (i >= a) and (i <= b) then
      begin
        c := i-a;
        baru[c] := sinyal[i]*1;
        sinyalfake2[c] := sinyalfake1[i]*1;
      end;

      if i > b then
      begin
        c := i-a;
        baru[c] := 0;
      end;
    end;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;

      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        baruPP[cc] := sinyal[k]*1;
      end;

      if k > bb then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;
    end;
  end
  else if rb2.Checked then
  begin
    for i:= 0 to length do
    begin
      if i < a then
      begin
        c := i-a;
        baru[c] := 0;
      end;

      if (i >= a) and (i <= b) then
      begin
        c := i-a;
        d := windowing*2; //Window Asli
        baru[c] := 0.5-0.5*(cos(2*pi*c/d))*sinyal[i]; //Hanning
        sinyalfake2[c] := 0.5-0.5*(cos(2*pi*c/d))*sinyalfake1[i];
      end;

      if i > b then
      begin
        c := i-a;
        baru[c] := 0;
      end;
    end;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;

      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        dd := windowing*2; //Window Asli
        baruPP[cc] := 0.5-0.5*(cos(2*pi*cc/dd))*sinyal[k]; //Hanning
      end;

      if k > bb then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;
    end;
  end
  else if rb3.Checked then
  begin
    for i:= 0 to length do
    begin
      if i < a then
      begin
        c := i-a;
        baru[c] := 0;
      end;

      if (i >= a) and (i <= b) then
      begin
        c := i-a;
        d := windowing*2; //Window Asli
        baru[c] := 0.54-0.46*cos(2*pi*c/d)*sinyal[i]; //Hamming
        sinyalfake2[c] := 0.54-0.46*cos(2*pi*c/d)*sinyalfake1[i];
      end;

      if i > b then
      begin
        c := i-a;
        baru[c] := 0;
      end;
    end;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;

      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        dd := windowing*2; //Window Asli
        baruPP[cc] := 0.54-0.46*cos(2*pi*cc/dd)*sinyal[k]; //Hamming
      end;

      if k > bb then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;
    end;
  end
  else if rb4.Checked then
  begin
    for i:= 0 to length do
    begin
      if i < a then
      begin
        c := i-a;
        baru[c] := 0;
      end;

      if (i >= a) and (i <= b) then
      begin
        c := i-a;
        d := windowing*2; //Window Asli
        baru[c] := (0.42659-0.49656*cos(2*pi*c/d)+0.076849*cos(4*pi*c/d))*sinyal[i]; //BlackB
        sinyalfake2[c] := (0.42659-0.49656*cos(2*pi*c/d)+0.076849*cos(4*pi*c/d))*sinyalfake1[i];
      end;

      if i > b then
      begin
        c := i-a;
        baru[c] := 0;
      end;
    end;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;

      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        dd := windowing*2; //Window Asli
        baruPP[cc] := (0.42659-0.49656*cos(2*pi*cc/dd)+0.076849*cos(4*pi*cc/dd))*sinyal[k];
      end;

      if k > bb then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;
    end;
  end
  else if rb5.Checked then
  begin
    for i:= 0 to length do
    begin
      if i < a then
      begin
        c := i-a;
        baru[c] := 0;
      end;

      if (i >= a) and (i <= b) then
      begin
        c := i-a;
        d := windowing*2; //Window Asli
        baru[c] := sin(pi*c/d)*sinyal[i];
        sinyalfake2[c] := sin(pi*c/d)*sinyalfake1[i];
      end;

      if i > b then
      begin
        c := i-a;
        baru[c] := 0;
      end;
    end;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;

      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        dd := windowing*2; //Window Asli
        baruPP[cc] := sin(pi*cc/dd)*sinyal[k];
      end;

      if k > bb then
      begin
        cc := k-aa;
        baruPP[cc] := 0;
      end;
    end;
  end
  else
  begin
    ShowMessage('Silakan pilih jenis Window FIR!');
    Abort;
  end;
  l := b - a;
  ll := bb - aa;

  for i := 0 to l do
  begin
    sinyalbaru.AddXY(i, baru[i]);
  end;

  for i := 0 to ll do
  begin
    sinyalbaru2.AddXY(i, baruPP[i]);
  end;

  for i := -10 to l+10 do
  begin
    sinyalfakewindow.AddXY(i, sinyalfake2[i]);
  end;

  //Proses DFT
  for k:= 0 to l do
  begin
    real[k] := 0;
    imaginer[k] := 0;

    for i:=0 to l do
    begin
      real[k] := real[k] + (baru[i] * Cos(2*pi*k*i/(l)));
      imaginer[k] := imaginer[k] + (baru[i] * -Sin(2*pi*k*i/(l)));
    end;
    magnitude[k] := Sqrt(Sqr(real[k]) + Sqr(imaginer[k]));
  end;

  for k:= 0 to ll do
  begin
    real2[k] := 0;
    imaginer2[k] := 0;

    for i:=0 to ll do
    begin
      real2[k] := real2[k] + (baruPP[i] * Cos(2*pi*k*i/(ll)));
      imaginer2[k] := imaginer2[k] + (baruPP[i] * -Sin(2*pi*k*i/(ll)));
    end;
    magnitude2[k] := Sqrt(Sqr(real2[k]) + Sqr(imaginer2[k]));
  end;

  for i := 0 to Round(l/2) do
  begin
    DFT.AddXY(i*fs/(l),magnitude[i]);
    //DFT.AddXY(i,magnitude[i]);
  end;

  for i := 0 to Round(ll/2) do
  begin
    DFTPP.AddXY(i*fs/(ll),magnitude2[i]);
    //DFTPP.AddXY(i,magnitude2[i]);
  end;

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if (StrToInt(edt5.Text) > StrToInt(edt8.Text))then
  begin
  turunanGraph.Clear;
  kuadratGraph.Clear;
  averageGraph.Clear;
  ambangGraph.Clear;
  BPM.Clear;
  AsliSebFilter.Clear;
  brsrsSeries7.Clear;
  brsrsSeries8.Clear;
  brsrsSeries9.Clear;
  brsrsSeries10.Clear;
  TengahLPF.Clear;
  TengahBPF.Clear;
  TengahBaruBaru.Clear;
  EndingLPF.Clear;
  EndingHPF.Clear;
  EndingBPF.Clear;
  EndingBPFPoleZero.Clear;
  DFTEnd.Clear;
  DFTPP2.Clear;
  DFT2.Clear;
  brsrsSeries11.Clear;
  brsrsSeries12.Clear;
  TengahBPFPZ.Clear;
  length := StrToInt(edt5.Text);
  garisMin := 0;
  garisMaks := 0;
  garisMin2 := 0;
  garisMaks2 := 0;
  sinyalbanding.Clear;
  sinyalasli.Clear;
  barbawah.Clear;
  baratas.Clear;
  banding1.Max := length;
  banding1.Min := 0;
  banding2.Max := length;
  banding2.Min := 0;
  BarTengah.Max := length-windowing;
  BarTengah.Min := 0+windowing;
  BarTengah2.Max := length-windowing2;
  BarTengah2.Min := 0+windowing2;
  satusinyal.Clear;
  for i:= 0 to length do
  begin
  satusinyal.AddXY(i,sinyal[i]);
  end;
  ts := StrToFloat(edt3.Text);
  fs := 1/ts;
  edt6.Text := (FloatToStr(fs));
  end
  else
  begin
    ShowMessage('Pastikan jumlah data sampling lebih banyak dibanding lebar window!');
    Abort;
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if (StrToInt(edt4.Text) mod 2 = 1) then
  begin
  windowing := StrToInt(edt4.Text) div 2;
  windowing2 := StrToInt(edt8.Text) div 2;
  brsrsSeries1.Clear;
  brsrsSeries2.Clear;
  brsrsSeries3.Clear;
  brsrsSeries4.Clear;
  Tengah.Clear;
  TengahBaru.Clear;
  garisMaks2 := BarTengah2.Position+windowing2;
  garisMin2 := BarTengah2.Position-windowing2;
  garisMaks := BarTengah.Position+windowing;
  garisMin := BarTengah.Position-windowing;
  brsrsSeries1.AddXY(garisMin,2);
  brsrsSeries1.AddXY(garisMin,-2);
  brsrsSeries2.AddXY(garisMaks,2);
  brsrsSeries2.AddXY(garisMaks,-2);
  brsrsSeries3.AddXY(garisMin2,2);
  brsrsSeries3.AddXY(garisMin2,-2);
  brsrsSeries4.AddXY(garisMaks2,2);
  brsrsSeries4.AddXY(garisMaks2,-2);
  Tengah.AddXY(BarTengah.Position,2);
  Tengah.AddXY(BarTengah.Position,-2);
  TengahBaru.AddXY(BarTengah2.Position,2);
  TengahBaru.AddXY(BarTengah2.Position,-2);
  turunanGraph.Clear;
  kuadratGraph.Clear;
  averageGraph.Clear;
  ambangGraph.Clear;
  BPM.Clear;
  AsliSebFilter.Clear;
  brsrsSeries7.Clear;
  brsrsSeries8.Clear;
  brsrsSeries9.Clear;
  brsrsSeries10.Clear;
  TengahLPF.Clear;
  TengahBPF.Clear;
  TengahBaruBaru.Clear;
  EndingLPF.Clear;
  EndingHPF.Clear;
  EndingBPF.Clear;
  EndingBPFPoleZero.Clear;
  DFTEnd.Clear;
  DFTPP2.Clear;
  DFT2.Clear;
  brsrsSeries11.Clear;
  brsrsSeries12.Clear;
  TengahBPFPZ.Clear;
  sinyalbanding.Clear;
  sinyalasli.Clear;
  barbawah.Clear;
  baratas.Clear;
  end
  else
  begin
    ShowMessage('Masukkan window ganjil');
    Abort;
  end;
end;

procedure TForm1.barTengah2Change(Sender: TObject);
begin
  brsrsSeries3.Clear;
  brsrsSeries4.Clear;
  TengahBaru.Clear;
  windowing2 := StrToInt(edt8.Text) div 2;
  garisMaks2 := BarTengah2.Position+windowing2;
  garisMin2 := BarTengah2.Position-windowing2;
  brsrsSeries3.AddXY(garisMin2,2);
  brsrsSeries3.AddXY(garisMin2,-2);
  brsrsSeries4.AddXY(garisMaks2,2);
  brsrsSeries4.AddXY(garisMaks2,-2);
  TengahBaru.AddXY(BarTengah2.Position,2);
  TengahBaru.AddXY(BarTengah2.Position,-2);
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if (locker = 1) then
  begin
  locker2 := 1;
  sinyalbanding.Clear;
  sinyalasli.Clear;
  barbawah.Clear;
  baratas.Clear;
  LPFGraph.Clear;
  HPFGraph.Clear;
  EndingLPF.Clear;
  EndingHPF.Clear;
  EndingBPF.Clear;
  EndingBPFPoleZero.Clear;
  brsrsSeries5.Clear;
  brsrsSeries6.Clear;
  brsrsSeries7.Clear;
  brsrsSeries8.Clear;
  brsrsSeries9.Clear;
  brsrsSeries10.Clear;
  tengahBaruBaru.Clear;
  tengahLPF.Clear;
  tengahBPF.Clear;
  DFTEnd.Clear;
  DFTPP2.Clear;
  DFT2.Clear;
  AsliSebFilter.Clear;
  brsrsSeries11.Clear;
  brsrsSeries12.Clear;
  TengahBPFPZ.Clear;

  for i := 0 to length do
  begin
    AsliSebFilter.AddXY(i,sinyal[i]);
  end;

  for i := 0 to length do
  begin
    LPF[i] := 0;
    HPF[i] := 0;
    yy[i] := 0;
    sinyalfake[i] := 1; //Unit Step
  end;

  length := StrToInt(edt5.Text);
  ts := StrToFloat(edt3.Text);
  fs := 1/ts;
  edt6.Text := (FloatToStr(fs));

  omegalpf := 2 * PI * omegalpfold;
  omegahpf := 2 * PI * omegahpfold;

  la := 8/Sqr(ts)-2*Sqr(omegalpf);
  lb := 4/Sqr(ts)-(2*Sqrt(2)*omegalpf/ts)+Sqr(omegalpf);
  lc := Sqr(omegalpf);
  ld := 2*Sqr(omegalpf);
  le := Sqr(omegalpf);
  lf := 4/Sqr(ts)+(2*Sqrt(2)*omegalpf/ts)+Sqr(omegalpf);

  ha := 8/Sqr(ts)-2*Sqr(omegahpf);
  hb := 4/Sqr(ts)-(2*Sqrt(2)*omegahpf/ts)+Sqr(omegahpf);
  hc := 4/Sqr(ts);
  hd := 8/Sqr(ts);
  he := 4/Sqr(ts);
  hf := 4/Sqr(ts)+(2*Sqrt(2)*omegahpf/ts)+Sqr(omegahpf);

  for i := 0 to length do
  begin
    parser[i] := 0;
  end;

  if rb6.Checked then //LPF
  begin
    for i := 0 to length do
    begin
      LPF[i] := (la*LPF[i-1]-lb*LPF[i-2]+lc*sinyalfake[i]+ld*sinyalfake[i-1]+le*sinyalfake[i-2])/lf;
    end;
    for i := 0 to length do
    begin
      LPFGraph.AddXY(i, LPF[i]);
    end;
    for i := 0 to length do
    begin
      LPF[i] := 0;
    end;
    for i := 0 to length do
    begin
      LPF[i] := (la*LPF[i-1]-lb*LPF[i-2]+lc*sinyal[i]+ld*sinyal[i-1]+le*sinyal[i-2])/lf;
    end;
    for i := 0 to length do
    begin
      EndingLPF.AddXY(i, LPF[i]);
      parser[i] := LPF[i];
    end;

    aa := garisMin2;
    bb := garisMaks2;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        LPF2[cc] := 0;
      end;
      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        LPF2[cc] := LPF[k]*1;
      end;
      if k > bb then
      begin
        cc := k-aa;
        LPF2[cc] := 0;
      end;
    end;
    ll := bb - aa;
    for k := 0 to ll do
    begin
      real3[k] := 0;
      imaginer3[k] := 0;
      for i := 0 to ll do
      begin
        real3[k] := real3[k] + (LPF2[i] * Cos(2*pi*k*i/(ll)));
        imaginer3[k] := imaginer3[k] + (LPF2[i] * -Sin(2*pi*k*i/(ll)));
      end;
    magnitude3[k] := Sqrt(Sqr(real3[k]) + Sqr(imaginer3[k]));
    end;
    for i := 0 to Round(ll/2) do
    begin
    DFTEnd.AddXY(i*fs/(ll),magnitude3[i]);
    end;
    for i := 0 to Round(l/2) do
    begin
    DFT2.AddXY(i*fs/(l),magnitude[i]);
    //DFT.AddXY(i,magnitude[i]);
    end;
    for i := 0 to Round(ll/2) do
    begin
    DFTPP2.AddXY(i*fs/(ll),magnitude2[i]);
    //DFTPP.AddXY(i,magnitude2[i]);
    end;

    brsrsSeries7.AddXY(garisMin2,2);
    brsrsSeries7.AddXY(garisMin2,-2);
    brsrsSeries8.AddXY(garisMaks2,2);
    brsrsSeries8.AddXY(garisMaks2,-2);
    TengahLPF.AddXY(BarTengah2.Position,2);
    TengahLPF.AddXY(BarTengah2.Position,-2);
  end
  else if rb7.Checked then //HPF
  begin
    for i := 0 to length do
    begin
      HPF[i] := (ha*HPF[i-1]-hb*HPF[i-2]+hc*sinyalfake[i]-hd*sinyalfake[i-1]+he*sinyalfake[i-2])/hf;
    end;
    for i := 0 to length do
    begin
      HPFGraph.AddXY(i, HPF[i]);
    end;
    for i := 0 to length do
    begin
      HPF[i] := 0;
    end;
    for i := 0 to length do
    begin
      HPF[i] := (ha*HPF[i-1]-hb*HPF[i-2]+hc*sinyal[i]-hd*sinyal[i-1]+he*sinyal[i-2])/hf;
    end;
    for i := 0 to length do
    begin
      EndingHPF.AddXY(i, HPF[i]);
      parser[i] := HPF[i];
    end;

    aa := garisMin2;
    bb := garisMaks2;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        HPF2[cc] := 0;
      end;
      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        HPF2[cc] := HPF[k]*1;
      end;
      if k > bb then
      begin
        cc := k-aa;
        HPF2[cc] := 0;
      end;
    end;
    ll := bb - aa;
    for k := 0 to ll do
    begin
      real3[k] := 0;
      imaginer3[k] := 0;
      for i := 0 to ll do
      begin
        real3[k] := real3[k] + (HPF2[i] * Cos(2*pi*k*i/(ll)));
        imaginer3[k] := imaginer3[k] + (HPF2[i] * -Sin(2*pi*k*i/(ll)));
      end;
    magnitude3[k] := Sqrt(Sqr(real3[k]) + Sqr(imaginer3[k]));
    end;
    for i := 0 to Round(ll/2) do
    begin
    DFTEnd.AddXY(i*fs/(ll),magnitude3[i]);
    end;
    for i := 0 to Round(l/2) do
    begin
    DFT2.AddXY(i*fs/(l),magnitude[i]);
    //DFT.AddXY(i,magnitude[i]);
    end;
    for i := 0 to Round(ll/2) do
    begin
    DFTPP2.AddXY(i*fs/(ll+1),magnitude2[i]);
    //DFTPP.AddXY(i,magnitude2[i]);
    end;

    brsrsSeries5.AddXY(garisMin2,2);
    brsrsSeries5.AddXY(garisMin2,-2);
    brsrsSeries6.AddXY(garisMaks2,2);
    brsrsSeries6.AddXY(garisMaks2,-2);
    TengahBaruBaru.AddXY(BarTengah2.Position,2);
    TengahBaruBaru.AddXY(BarTengah2.Position,-2);
  end
  else if rb8.Checked then //BPF
  begin
    for i := 0 to length do
    begin
      LPF[i] := (la*LPF[i-1]-lb*LPF[i-2]+lc*sinyalfake[i]+ld*sinyalfake[i-1]+le*sinyalfake[i-2])/lf;
    end;
    for i := 0 to length do
    begin
      LPFGraph.AddXY(i, LPF[i]);
    end;
    for i := 0 to length do
    begin
      HPF[i] := (ha*HPF[i-1]-hb*HPF[i-2]+hc*LPF[i]-hd*LPF[i-1]+he*LPF[i-2])/hf;
    end;
    for i := 0 to length do
    begin
      HPFGraph.AddXY(i, HPF[i]);
    end;
    for i := 0 to length do
    begin
      LPF[i] := 0;
      HPF[i] := 0;
    end;
    for i := 0 to length do
    begin
      LPF[i] := (la*LPF[i-1]-lb*LPF[i-2]+lc*sinyal[i]+ld*sinyal[i-1]+le*sinyal[i-2])/lf;
    end;
    for i := 0 to length do
    begin
      HPF[i] := (ha*HPF[i-1]-hb*HPF[i-2]+hc*LPF[i]-hd*LPF[i-1]+he*LPF[i-2])/hf;
    end;
    for i := 0 to length do
    begin
      EndingBPF.AddXY(i, HPF[i]);
      parser[i] := HPF[i];
    end;

    aa := garisMin2;
    bb := garisMaks2;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        HPF2[cc] := 0;
      end;
      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        HPF2[cc] := HPF[k]*1;
      end;
      if k > bb then
      begin
        cc := k-aa;
        HPF2[cc] := 0;
      end;
    end;
    ll := bb - aa;
    for k := 0 to ll do
    begin
      real3[k] := 0;
      imaginer3[k] := 0;
      for i := 0 to ll do
      begin
        real3[k] := real3[k] + (HPF2[i] * Cos(2*pi*k*i/(ll)));
        imaginer3[k] := imaginer3[k] + (HPF2[i] * -Sin(2*pi*k*i/(ll)));
      end;
    magnitude3[k] := Sqrt(Sqr(real3[k]) + Sqr(imaginer3[k]));
    end;
    for i := 0 to Round(ll/2) do
    begin
    DFTEnd.AddXY(i*fs/(ll),magnitude3[i]);
    end;
    for i := 0 to Round(l/2) do
    begin
    DFT2.AddXY(i*fs/(l),magnitude[i]);
    //DFT.AddXY(i,magnitude[i]);
    end;
    for i := 0 to Round(ll/2) do
    begin
    DFTPP2.AddXY(i*fs/(ll),magnitude2[i]);
    //DFTPP.AddXY(i,magnitude2[i]);
    end;

    brsrsSeries9.AddXY(garisMin2,2);
    brsrsSeries9.AddXY(garisMin2,-2);
    brsrsSeries10.AddXY(garisMaks2,2);
    brsrsSeries10.AddXY(garisMaks2,-2);
    TengahBPF.AddXY(BarTengah2.Position,2);
    TengahBPF.AddXY(BarTengah2.Position,-2);
  end
  else if rb11.Checked then
  begin
    pole1.Clear;
    pole2.Clear;
    zero1.clear;
    zero2.clear;

    for i := 0 to length do
    begin
      yy[i] := sinyal[i]-sinyal[i-2]+yy[i-1]*(2*resultant*cos(DegToRad(teta)))-
      yy[i-2]*resultant*resultant;
    end;
    for i := 0 to length do
    begin
      EndingBPFPoleZero.AddXY(i, yy[i]);
      parser[i] := yy[i];
    end;

    aa := garisMin2;
    bb := garisMaks2;
    for k:= 0 to length do
    begin
      if k < aa then
      begin
        cc := k-aa;
        BPFPZ[cc] := 0;
      end;
      if (k >= aa) and (k <= bb) then
      begin
        cc := k-aa;
        BPFPZ[cc] := yy[k]*1;
      end;
      if k > bb then
      begin
        cc := k-aa;
        BPFPZ[cc] := 0;
      end;
    end;
    ll := bb - aa;

    for k := 0 to ll do
    begin
      real3[k] := 0;
      imaginer3[k] := 0;
      for i := 0 to ll do
      begin
        real3[k] := real3[k] + (BPFPZ[i] * Cos(2*pi*k*i/(ll)));
        imaginer3[k] := imaginer3[k] + (BPFPZ[i] * -Sin(2*pi*k*i/(ll)));
      end;
    magnitude3[k] := Sqrt(Sqr(real3[k]) + Sqr(imaginer3[k]));
    end;

    for i := 0 to Round(ll/2) do
    begin
    DFTEnd.AddXY(i*fs/(ll),magnitude3[i]);
    end;
    for i := 0 to Round(l/2) do
    begin
    DFT2.AddXY(i*fs/(l),magnitude[i]);
    //DFT.AddXY(i,magnitude[i]);
    end;
    for i := 0 to Round(ll/2) do
    begin
    DFTPP2.AddXY(i*fs/(ll),magnitude2[i]);
    //DFTPP.AddXY(i,magnitude2[i]);
    end;

    brsrsSeries11.AddXY(garisMin2,2);
    brsrsSeries11.AddXY(garisMin2,-2);
    brsrsSeries12.AddXY(garisMaks2,2);
    brsrsSeries12.AddXY(garisMaks2,-2);
    TengahBPFPZ.AddXY(BarTengah2.Position,2);
    TengahBPFPZ.AddXY(BarTengah2.Position,-2);

    xatas:=resultant*cos(DegToRad(teta));
    yatas:=resultant*sin(DegToRad(teta));

    xbawah:=resultant*cos(DegToRad(teta));
    ybawah:=-(resultant*sin(DegToRad(teta)));

    zero1.AddXY(1,0); zero2.AddXY(-1,0);
    pole1.AddXY(xatas,yatas);
    pole2.AddXY(xbawah,ybawah);
  end
  else
  begin
    ShowMessage('Silakan pilih jenis Filter!');
    Abort;
  end;

  end
  else
  begin
    ShowMessage('Silakan lakukan Segmentasi Sinyal pada Page sebelumnya!');
    Abort;
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if (locker2 = 1) then
  begin
  sinyalbanding.Clear;
  sinyalasli.Clear;
  barbawah.Clear;
  baratas.Clear;
  turunanGraph.Clear;
  kuadratGraph.Clear;
  averageGraph.Clear;
  ambangGraph.Clear;
  BPM.Clear;
  WindowMaf := StrToInt(edt7.Text);
  length := StrToInt(edt5.Text);
  ts := StrToFloat(edt3.Text);
  fs := 1/ts;
  edt6.Text := (FloatToStr(fs));

  for i := 0 to length do
  begin
    turunan[i] := 0;
  end;

  for i := 0 to length do
  begin
    turunan[i] := 0.1*(2*parser[i]+parser[i-1]-parser[i-3]-2*parser[i-4]);
  end;

  for i := 0 to length do
  begin
    turunanGraph.AddXY(i,turunan[i]);
  end;

  for i := 0 to length do
  begin
    kuadrat[i] := turunan[i]*turunan[i];
  end;

  for i := 0 to length do
  begin
    kuadratGraph.AddXY(i,kuadrat[i]);
  end;

  for i := 0 to length do
  begin
    moving[i] := 0;
  end;

  WindowMaf := StrToInt(edt7.Text);

  for i := 0 to length do
  begin
    for j := 1 to WindowMaf do
    begin
      moving[i] := moving[i] + ( (kuadrat[i-(WindowMaf-j)]) / WindowMaf );
    end;
  end;

  for i := 0 to length do
  begin
    averageGraph.AddXY(i, moving[i]);
  end;

  tertinggi := 0;

  for i := 0 to length do
  begin
    if moving[i] > tertinggi then
    begin
      tertinggi := moving[i];
    end;
  end;

  killer := 0.6 * tertinggi;

  for i := 0 to length do
  begin
    ambang[i] := 0;
  end;

  for i := 0 to length do
  begin
    if (moving[i] > killer) or (moving[i] = killer) then
    begin
      ambang[i] := 1;
    end
    else
    begin
      ambang[i] := 0;
    end;
  end;

  for i := 0 to length do
  begin
    ambangGraph.AddXY(i, ambang[i]);
  end;

  iold := 0;
  kunci := 0;
  for i := 0 to length do
  begin
    if (ambang[i] = 1) and (ambang[i-1] = 0) and (kunci = 0) then
    begin
      T := i - iold;
      iold := i;
      detak := 60/(T*ts);
      kunci := 1;
    end
    else if (ambang[i] = 1) and (ambang[i-1] = 0) and (kunci = 1) then
    begin
      T := i - iold;
      iold := i;
      detak := 60/(T*ts);
      BPM.Lines.Add(FloatToStr(detak));
    end
  end;
  end
  else
  begin
    ShowMessage('Silakan lakukan Filter Linear pada Page Sebelumnya!');
    Abort;
  end;

end;

procedure TForm1.resbarChange(Sender: TObject);
begin
  resultant := resbar.Position/1000;
  edt9.Text := FloatToStr(resultant);
  btn6Click(nil);
end;

procedure TForm1.tetbarChange(Sender: TObject);
begin
  teta := tetbar.Position;
  edt10.Text := FloatToStr(teta);
  btn6Click(nil);
end;

procedure TForm1.btn4Click(Sender: TObject);
var
  frekuensisampling : Integer;
  frekuensisinyal : Integer;
  panjang : Integer;

begin
  frekuensisampling := StrToInt(edt11.Text);
  frekuensisinyal := StrToInt(edt13.Text);
  panjang := StrToInt(edt12.Text);
  sinusgraph.Clear;
  DFTUji.Clear;

  for i := 0 to panjang do
  begin
    sinusfifty[i] := sin(2 * PI * i / frekuensisampling * frekuensisinyal);
    sinyalDC[i] := 1;
  end;

  for i := 0 to panjang do
  begin
    sinusgraph.AddXY(i, sinusfifty[i]);
  end;

  for i := 0 to panjang do
  begin
    ujiDC.AddXY(i, sinyalDC[i]);
  end;

  for k := 0 to panjang do
  begin
    real4[k] := 0;
    imaginer4[k] := 0;
    for i := 0 to panjang do
    begin
      real4[k] := real4[k] + (sinusfifty[i] * Cos(2*pi*k*i/panjang));
      imaginer4[k] := imaginer4[k] + (sinusfifty[i] * -Sin(2*pi*k*i/panjang));
    end;
  magnitude4[k] := Sqrt(Sqr(real4[k])+Sqr(imaginer4[k]));
  end;

  for k := 0 to panjang do
  begin
    real5[k] := 0;
    imaginer5[k] := 0;
    for i := 0 to panjang do
    begin
      real5[k] := real5[k] + (sinyalDC[i] * Cos(2*pi*k*i/panjang));
      imaginer5[k] := imaginer5[k] + (sinyalDC[i] * -Sin(2*pi*k*i/panjang));
    end;
  magnitude5[k] := Sqrt(Sqr(real5[k])+Sqr(imaginer5[k]));
  end;

  for i := 0 to Round(panjang/2) do
  begin
    DFTUji.AddXY(i*frekuensisampling/panjang,magnitude4[i]);
  end;

  for i := 0 to Round(panjang/2) do
  begin
    DFTDC.AddXY(i*frekuensisampling/panjang,magnitude5[i]);
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  length := StrToInt(edt5.Text);
  for i := 0 to length do
  begin
  sinyalasli.AddXY(i, sinyal[i]+4);
  sinyalbanding.AddXY(i, ambang[i]);
  end;
end;

procedure TForm1.banding1Change(Sender: TObject);
begin
  length := StrToInt(edt5.Text);
  barbawah.Clear;
  bawahval := banding1.Position;
  barbawah.AddXY(bawahval,6);
  barbawah.AddXY(bawahval,-2);
  ouvert := abs(bawahval-atasval);
  ouvert2 := abs(bawahval-atasval)*fs/length;
  edt14.Text := IntToStr(bawahval);
  edt16.Text := IntToStr(ouvert);
  edt17.Text := FloatToStr(ouvert2);
end;

procedure TForm1.banding2Change(Sender: TObject);
begin
  length := StrToInt(edt5.Text);
  baratas.Clear;
  atasval := banding2.Position;
  baratas.AddXY(atasval,6);
  baratas.AddXY(atasval,-2);
  edt15.Text := IntToStr(atasval);
  ouvert := abs(bawahval-atasval);
  ouvert2 := abs(bawahval-atasval)*fs/length;
  edt16.Text := IntToStr(ouvert);
  edt17.Text := FloatToStr(ouvert2);
end;

procedure TForm1.cutbawahChange(Sender: TObject);
begin
  omegahpfold := cutbawah.Position;
  edt1.Text := FloatToStr(omegahpfold);
  pole1.Clear;
  pole2.Clear;
  zero1.Clear;
  zero2.Clear;
  btn6Click(nil);
end;

procedure TForm1.cutatasChange(Sender: TObject);
begin
  omegalpfold := cutatas.Position;
  edt2.Text := FloatToStr(omegalpfold);
  pole1.Clear;
  pole2.Clear;
  zero1.Clear;
  zero2.Clear;
  btn6Click(nil);
end;

end.
