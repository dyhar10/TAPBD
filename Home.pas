unit Home;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Grids, DBGrids, SMDBGrid, TeeProcs,
  TeEngine, Chart, DbChart, SMDBCtrl, Series, mxExport, frxClass, frxDBSet, SMDBComb;

type

  TForm1 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnlMenu: TPanel;
    btn_home: TPanel;
    btn_penjualan: TPanel;
    btn_gudang: TPanel;
    btn_pembelian: TPanel;
    btn_statistik: TPanel;
    btn_bantuan: TPanel;
    btn_exit: TPanel;
    img1: TImage;
    pnl11: TPanel;
    panel_login: TPanel;
    btn_login: TPanel;
    edit_nokaryawan: TEdit;
    img2: TImage;
    lbl1: TLabel;
    panel_penjualan: TPanel;
    pnl15: TPanel;
    edit_idjualbarang: TEdit;
    edit_jmlbarang: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    imgJual: TImage;
    btn_masukanList: TPanel;
    pnl17: TPanel;
    smdbgrd_jual: TSMDBGrid;
    btn_submitJual: TPanel;
    btn_cencelJual: TPanel;
    panel_pembelian: TPanel;
    pnl21: TPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    img_logobeli: TImage;
    edit_jmlahbarangBeli: TEdit;
    btn_masukanKeListBeli: TPanel;
    pnl23: TPanel;
    btn_submitBeli: TPanel;
    btn_cencelBeli: TPanel;
    lbl8: TLabel;
    panel_gudang: TPanel;
    edit_search: TEdit;
    img_search: TImage;
    pnl34: TPanel;
    lbl9: TLabel;
    img5: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    img10: TImage;
    img11: TImage;
    img12: TImage;
    pnl4: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl5: TPanel;
    pnl9: TPanel;
    pnl10: TPanel;
    pnl13: TPanel;
    pnl14: TPanel;
    panel_statistik: TPanel;
    pnl20: TPanel;
    lbl16: TLabel;
    db_chart: TDBChart;
    dbcht1: TDBChart;
    panel_bantuan: TPanel;
    pnl18: TPanel;
    lbl15: TLabel;
    btn_logout: TPanel;
    img16: TImage;
    nav_gudang: TSMDBNavigator;
    Series1: TLineSeries;
    mxDBGridExport1: TmxDBGridExport;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    scrlbx1: TScrollBox;
    pnl26: TPanel;
    pnl27: TPanel;
    pnl28: TPanel;
    pnl25: TPanel;
    scrlbx2: TScrollBox;
    lbl10: TLabel;
    lbl12: TLabel;
    cbb1: TComboBox;
    edit_passwordkaryawan: TEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl11: TLabel;
    cbb2: TComboBox;
    lbl18: TLabel;
    img3: TImage;
    lbl19: TLabel;
    panelPelanggan: TPanel;
    pnl30: TPanel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl27: TLabel;
    pnl39: TPanel;
    pnl38: TPanel;
    cbb3: TComboBox;
    lbl20: TLabel;
    cbb5_kotaPel: TComboBox;
    cbb6_kecPel: TComboBox;
    lbl21: TLabel;
    lbl25: TLabel;
    mmo_alamatPel: TMemo;
    pnl29: TPanel;
    lbl24: TLabel;
    pnl31: TPanel;
    img4: TImage;
    edt_kontakPel: TEdit;
    cbb4: TComboBox;
    cbb7: TComboBox;
    lbl26: TLabel;
    edt2: TEdit;
    scrlbx3: TScrollBox;
    pnl32: TPanel;
    pnl33: TPanel;
    pnl35: TPanel;
    pnl36: TPanel;
    pnl37: TPanel;
    pnl40: TPanel;
    lbl28: TLabel;
    pnl_editGudang: TPanel;
    img6: TImage;
    pnl_filterGudang: TPanel;
    img18: TImage;
    lbl30: TLabel;
    pnl_hapusGudang: TPanel;
    img13: TImage;
    lbl31: TLabel;
    pnl_exportGudang: TPanel;
    img14: TImage;
    lbl32: TLabel;
    pnl_cetakGudang: TPanel;
    img15: TImage;
    lbl33: TLabel;
    pnlrefreshdata: TPanel;
    img21: TImage;
    lbl35: TLabel;
    lbl29: TLabel;
    pnltambahsupplier: TPanel;
    img19: TImage;
    lbl34: TLabel;
    pnlTambahKaryawan: TPanel;
    img20: TImage;
    lbl36: TLabel;
    pnlkaryawansupplier: TPanel;
    pnl41: TPanel;
    pnl42: TPanel;
    pnl43: TPanel;
    pnl44: TPanel;
    lbl43: TLabel;
    pnl45: TPanel;
    img22: TImage;
    scrlbx4: TScrollBox;
    btn1: TButton;
    grp1: TGroupBox;
    cbb_kotaKar: TComboBox;
    lbl40: TLabel;
    lbl38: TLabel;
    cbb_kecKar: TComboBox;
    mmo_alamat_lengkapKar: TMemo;
    lbl41: TLabel;
    grp2: TGroupBox;
    edt_namaKar: TEdit;
    lbl45: TLabel;
    edt_usernameKar: TEdit;
    lbl44: TLabel;
    edt_passKar: TEdit;
    lbl42: TLabel;
    edt_kontakKar: TEdit;
    lbl17: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_homeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_penjualanMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_gudangMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_pembelianMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_statistikMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_bantuanMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_exitMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_loginMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn_loginClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure btn_logoutClick(Sender: TObject);
    procedure btn_penjualanClick(Sender: TObject);
    procedure btn_gudangClick(Sender: TObject);
    procedure btn_pembelianClick(Sender: TObject);
    procedure btn_cencelJualMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_submitJualMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_masukanListMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_cencelBeliMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_submitBeliMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btn_masukanKeListBeliMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_statistikClick(Sender: TObject);
    procedure btn_bantuanClick(Sender: TObject);
    procedure btn_logoutMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img17Click(Sender: TObject);
    procedure btn_homeClick(Sender: TObject);
    procedure nav_gudangClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure panel_penjualanClick(Sender: TObject);
    procedure btn_filterGudangClick(Sender: TObject);
    procedure edit_idjualbarangExit(Sender: TObject);
    procedure btn_masukanListClick(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure EditQtyxExit(Sender: TObject);
    procedure EditQtyx1Exit(Sender: TObject);
    procedure btn_submitJualClick(Sender: TObject);
    procedure btn_cencelJualClick(Sender: TObject);
    procedure cbb1Exit(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure pnl38Click(Sender: TObject);
    procedure pnl39Click(Sender: TObject);
    procedure cbb2Exit(Sender: TObject);
    procedure nav_manageClick(Sender: TObject; Button: TSMNavigateBtn);
    procedure pnl_editGudangClick(Sender: TObject);
    procedure pnl_filterGudangClick(Sender: TObject);
    procedure pnl_hapusGudangClick(Sender: TObject);
    //procedure btn1Click(Sender: TObject; Index:TObject);
    procedure pnl_exportGudangClick(Sender: TObject);
    procedure pnl_cetakGudangClick(Sender: TObject);
    procedure nav_gudangRefreshData(Sender: TObject);
    procedure SMDBGrid1Exit(Sender: TObject);
    procedure pnlrefreshdataClick(Sender: TObject);
    procedure edit_searchExit(Sender: TObject);
    procedure pnl_editGudangMouseMove(Sender: TObject; Shift: TShiftState;


      X, Y: Integer);
    procedure pnl_filterGudangMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_hapusGudangMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure pnl_exportGudangMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_cetakGudangMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure pnlrefreshdataMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure pnltambahsupplierMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlTambahKaryawanClick(Sender: TObject);
    procedure pnlTambahKaryawanMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure pnltambahsupplierClick(Sender: TObject);
    procedure pnl42Click(Sender: TObject);
    procedure pnl43Click(Sender: TObject);
    procedure img22Click(Sender: TObject);
    procedure pnl49Click(Sender: TObject);
    procedure pnl50Click(Sender: TObject);
    procedure pnl48Click(Sender: TObject);
    procedure pnl47Click(Sender: TObject);
    procedure pnl46Click(Sender: TObject);
    procedure pnl52Click(Sender: TObject);
    procedure login;
    procedure edit_nokaryawanKeyPress(Sender: TObject; var Key: Char);
    procedure edit_passwordkaryawanKeyPress(Sender: TObject;
      var Key: Char);
    procedure scrlbx2MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure lbl12Click(Sender: TObject);
    procedure cbb3Exit(Sender: TObject);
    procedure scrlbx4MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);

  private
    FConfirmDelete: Boolean;

    FOnAppendRecord: TNotifyEvent;
    FOnDeleteRecord: TNotifyEvent;

    FOnFilterData: TNotifyEvent;
    FOnFindData: TNotifyEvent;
    FOnPrintData: TNotifyEvent;
    FOnExportData: TNotifyEvent;
    { Private declarations }
  public
    d:integer;
    totalint:Integer;
    listnambarx : array [1..100] of String;
    listharbarx : array [1..100] of Integer;
    listsubtotalx : array [1..100] of Integer;
    listqtyx : array [1..100] of Integer;
    ListNamaBarang : array [1..100] of TLabel;
    ListHargaBarang : array [1..100] of TLabel;
    ListSubtotal : array [1..100] of TLabel;
    baliknilai : array [1..100] of Integer;
    EditQty : array [1..100] of TEdit;
    itemx : array [1..100] of String;
    itemxy : array [1..100] of String;
    itempelanggan : array [1..100] of String;
    { Public declarations }
  end;

var
  Form1: TForm1;
  id_karyawan:String;
  panel_login : Boolean;
  topx :Integer;
  hitungx :Integer;
  hitungk : Integer;
  totalcurr : Currency;
  totalstr : String;
  tempharga :String;
  userx : String;


implementation

uses DataModule, DB, ErrorEX;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
//var
  //a,b:String;
  //i :Integer;
begin
  //Form4.Visible := False;
  //scrlbx2.ScrollBy(-scrlbx2.HorzScrollBar.Increment, 0);
  totalcurr := 0;
  hitungx := 0;
  hitungk := 0;
  pnlkaryawansupplier.Hide;
  img3.Hide;
  lbl19.Hide;
  panelPelanggan.Hide;
  panel_gudang.Hide;
  panel_penjualan.Hide;
  panel_pembelian.Hide;
  panel_statistik.Hide;
  panel_bantuan.Hide;
  edit_search.Hide;
  img_search.Hide;
  btn_penjualan.Enabled := False;
  btn_gudang.Enabled := False;
  btn_pembelian.Enabled := False;
  btn_statistik.Enabled := False;
  btn_logout.Visible := False;

  btn_gudang.Hide;
  btn_penjualan.Hide;
  btn_pembelian.Hide;
  btn_statistik.Hide;
  btn_bantuan.Top := 47;
  btn_logout.Top  := 93;
  btn_exit.Top := 93;
  pnlMenu.Height := 145;


  if panel_login.Visible = True then
  begin
    btn_home.Color := $004B710D;
    btn_home.Caption := 'LOGIN';
  end;

  if (panel_penjualan.Visible = True) or(panel_pembelian.Visible = True) or (panel_gudang.Visible = True) or (panel_bantuan.Visible = True) then
  begin
    edit_search.Show;
    img_search.Show;
  end;

  d:=0;
  topx := 10;

end;



procedure TForm1.btn_homeMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_home.Width) and (Y < btn_home.Height) then
    begin
      if GetCapture <> btn_home.Handle then
      begin
        SetCapture(btn_home.Handle);
        btn_home.Color := $0085D117;
      end;
    end

  else
    begin
      ReleaseCapture;
      btn_home.Color := $00537C14;
        if panel_login.Visible = True then
        begin
            btn_home.Color := $00537C14;
        end;
    end;
end;

procedure TForm1.btn_penjualanMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_penjualan.Width) and (Y < btn_penjualan.Height) then
    begin
      if GetCapture <> btn_penjualan.Handle then
      begin
        SetCapture(btn_penjualan.Handle);
        btn_penjualan.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_penjualan.Color := $006DA51C;
        if panel_penjualan.Visible = True then
        begin
            btn_penjualan.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.btn_gudangMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    if (X >= 0) and (Y >= 0) and (X < btn_gudang.Width) and (Y < btn_gudang.Height) then
    begin
      if GetCapture <> btn_gudang.Handle then
      begin
        SetCapture(btn_gudang.Handle);
        btn_gudang.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_gudang.Color := $006DA51C;
        if panel_gudang.Visible = True then
        begin
            btn_gudang.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.btn_pembelianMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_pembelian.Width) and (Y < btn_pembelian.Height) then
    begin
      if GetCapture <> btn_pembelian.Handle then
      begin
        SetCapture(btn_pembelian.Handle);
        btn_pembelian.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_pembelian.Color := $006DA51C;
        if panel_pembelian.Visible = True then
        begin
            btn_pembelian.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.btn_statistikMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (X >= 0) and (Y >= 0) and (X < btn_statistik.Width) and (Y < btn_statistik.Height) then
    begin
      if GetCapture <> btn_statistik.Handle then
      begin
        SetCapture(btn_statistik.Handle);
        btn_statistik.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_statistik.Color := $006DA51C;
      if panel_statistik.Visible = True then
        begin
            btn_statistik.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.btn_bantuanMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_bantuan.Width) and (Y < btn_bantuan.Height) then
    begin
      if GetCapture <> btn_bantuan.Handle then
      begin
        SetCapture(btn_bantuan.Handle);
        btn_bantuan.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_bantuan.Color := $006DA51C;
      if panel_bantuan.Visible = True then
        begin
            btn_bantuan.Color := $004B710D;
        end;
    end;
end;

procedure TForm1.btn_exitMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_exit.Width) and (Y < btn_exit.Height) then
    begin
      if GetCapture <> btn_exit.Handle then
      begin
        SetCapture(btn_exit.Handle);
        btn_exit.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_exit.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_loginMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_login.Width) and (Y < btn_login.Height) then
    begin
      if GetCapture <> btn_login.Handle then
      begin
        SetCapture(btn_login.Handle);
        btn_login.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_login.Color := $006DA51C;
    end;
end;


procedure TForm1.btn_loginClick(Sender: TObject);
begin
  login;
end;

procedure TForm1.login;
var
  i,j:Integer;
  a,b:String;
begin
  DM.qr1.SQL.Text:='select * from karyawan';
  DM.qr1.Active:=True;
  i:= 1;
  while i <= DM.qr1.RecordCount do
  begin
    a:= DM.qr1['username_karyawan'];
    b:= DM.qr1['password_karyawan'];
    userx := DM.qr1['nama_karyawan'];

    if ((edit_nokaryawan.Text = 'admin') and (edit_passwordkaryawan.Text = 'admin')) and ((edit_nokaryawan.Text = a) and (edit_passwordkaryawan.Text = b)) then
      begin
        btn_penjualan.Show;
        panel_penjualan.Show;
        panel_login.Visible := False;
        btn_home.Color :=  $006DA51C;
        btn_penjualan.Color := $004B710D;
        btn_penjualan.Enabled := True;
        btn_gudang.Enabled := True;
        btn_pembelian.Enabled := True;
        btn_statistik.Enabled := True;
        btn_bantuan.Enabled := True;
        btn_home.Enabled := False;
        btn_logout.Visible := True;
        edit_search.Hide;
        img_search.Hide;
        img3.Show;
        lbl19.Show;
        lbl19.Caption := userx;
        btn_home.Caption := 'HOME';
        btn_home.Color := $00537C14;
        btn_gudang.Show;
        btn_pembelian.Show;
        btn_statistik.Show;
        btn_bantuan.Top := 231;
        btn_logout.Top := 277;
        btn_exit.Top := 277;
        pnlMenu.Height := 329;
        i := DM.qr1.RecordCount;
      end

      else
      if (edit_nokaryawan.Text = a) and (edit_passwordkaryawan.Text = b) then
          begin
            btn_gudang.Hide;
            btn_penjualan.Show;
            btn_pembelian.Hide;
            btn_statistik.Hide;
            btn_bantuan.Top := 93;
            btn_logout.Top  := 139;
            btn_exit.Top := 139;
            pnlMenu.Height := 190;

            panel_penjualan.Show;
            panel_login.Visible := False;
            btn_home.Color :=  $006DA51C;
            btn_penjualan.Color := $004B710D;
            btn_penjualan.Enabled := True;
            btn_bantuan.Enabled := True;
            btn_home.Enabled := False;
            btn_logout.Visible := True;
            edit_search.Hide;
            img_search.Hide;
            img3.Show;
            lbl19.Show;
            lbl19.Caption := userx;
            btn_home.Caption := 'HOME';
            btn_home.Color := $00537C14;
            //lbltester.Caption := a + b;
            i := DM.qr1.RecordCount;
          end
    else
    begin
      Form4.Show;
    end;
    DM.qr1.Next;
    i := i + 1;
  end;

  if panel_penjualan.Visible = True then
  begin
    with DM.qr7 do
    begin
      Form4.Hide;
      SQL.Clear;
      SQL.Add('SELECT * FROM produk');
      Open;
      First;
      cbb1.Items.Clear;
      j := 1;
      while not Eof do
      begin
        cbb1.Items.Add((FieldByName('id_produk').AsString) + ' - '+FieldByName('nama_produk').AsString);

        itemx[j] := (FieldByName('id_produk').AsString);
        itemxy[j] := (FieldByName('id_produk').AsString) + ' - '+FieldByName('nama_produk').AsString;
        Next;
        j := j + 1;
      end;
      //LABELTEST.Caption := itemx[j];
      Close;
    end;
  end;
end;

procedure TForm1.btn_exitClick(Sender: TObject);
begin
 Close;
end;


procedure TForm1.btn_logoutClick(Sender: TObject);
begin
  img3.Hide;
  lbl19.Hide;
  panelPelanggan.Hide;
  edit_passwordkaryawan.Clear;
   panel_penjualan.Hide;
   panel_pembelian.Hide;
   panel_gudang.Hide;
   panel_statistik.Hide;
   panel_bantuan.Hide;
   panel_login.Visible := True;
   edit_nokaryawan.Clear;
   btn_home.Color := $004B710D;
   btn_penjualan.Color := $006DA51C;
   btn_gudang.Color := $006DA51C;
   btn_pembelian.Color := $006DA51C;
   btn_statistik.Color := $006DA51C;
   btn_bantuan.Color := $006DA51C;
   btn_penjualan.Enabled := False;
   btn_gudang.Enabled := False;
   btn_pembelian.Enabled := False;
   btn_statistik.Enabled := False;
   btn_logout.Visible := False;
   btn_home.Enabled := True;
    edit_search.Hide;
   img_search.Hide;
   btn_home.Caption := 'LOGIN';
     btn_gudang.Hide;
  btn_penjualan.Hide;
  btn_pembelian.Hide;
  btn_statistik.Hide;
  btn_bantuan.Top := 47;
  btn_logout.Top  := 93;
  btn_exit.Top := 93;
  pnlMenu.Height := 145;
end;

procedure TForm1.btn_penjualanClick(Sender: TObject);
begin
  panelPelanggan.Hide;
   panel_penjualan.Show;
   panel_gudang.Hide;
   panel_login.Visible := False;
   panel_pembelian.Hide;
   panel_statistik.Hide;
   panel_bantuan.Hide;
   btn_home.Color := $00537C14;
   btn_penjualan.Color := $004B710D;
   btn_gudang.Color := $006DA51C;
   btn_pembelian.Color := $006DA51C;
   btn_statistik.Color := $006DA51C;
   btn_bantuan.Color := $006DA51C;
   edit_search.Show;
   img_search.Show;
   edit_search.Hide;
   img_search.Hide;
end;

procedure TForm1.btn_gudangClick(Sender: TObject);
begin
  panelPelanggan.Hide;
 panel_gudang.Show;
 panel_login.Visible := False;
 panel_penjualan.Hide;
 panel_pembelian.Hide;
 panel_statistik.Hide;
 panel_bantuan.Hide;
 btn_home.Color := $00537C14;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $004B710D;
 btn_pembelian.Color := $006DA51C;
 btn_statistik.Color := $006DA51C;
 btn_bantuan.Color := $006DA51C;
 edit_search.Show;
 img_search.Show;

end;

procedure TForm1.btn_pembelianClick(Sender: TObject);
begin
  panelPelanggan.Hide;
 panel_pembelian.Show;
 panel_login.Visible := False;
 panel_penjualan.Hide;
 panel_gudang.Hide;
 panel_statistik.Hide;
panel_bantuan.Hide;
 btn_home.Color := $00537C14;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $006DA51C;
 btn_pembelian.Color := $004B710D;
 btn_statistik.Color := $006DA51C;
 btn_bantuan.Color := $006DA51C;
  edit_search.Show;
 img_search.Show;
end;

procedure TForm1.btn_cencelJualMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

 if (X >= 0) and (Y >= 0) and (X < btn_cencelJual.Width) and (Y < btn_cencelJual.Height) then
    begin
      if GetCapture <> btn_cencelJual.Handle then
      begin
        SetCapture(btn_cencelJual.Handle);
        btn_cencelJual.Color := $002F21D3;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_cencelJual.Color := $005332ED;
    end;
end;

procedure TForm1.btn_submitJualMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_submitJual.Width) and (Y < btn_submitJual.Height) then
    begin
      if GetCapture <> btn_submitJual.Handle then
      begin
        SetCapture(btn_submitJual.Handle);
        btn_submitJual.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_submitJual.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_masukanListMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   if (X >= 0) and (Y >= 0) and (X < btn_masukanList.Width) and (Y < btn_masukanList.Height) then
    begin
      if GetCapture <> btn_masukanList.Handle then
      begin
        SetCapture(btn_masukanList.Handle);
        btn_masukanList.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_masukanList.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_cencelBeliMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (X >= 0) and (Y >= 0) and (X < btn_cencelBeli.Width) and (Y < btn_cencelBeli.Height) then
    begin
      if GetCapture <> btn_cencelBeli.Handle then
      begin
        SetCapture(btn_cencelBeli.Handle);
        btn_cencelBeli.Color := $002F21D3;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_cencelBeli.Color := $005332ED;
    end;
end;

procedure TForm1.btn_submitBeliMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   if (X >= 0) and (Y >= 0) and (X < btn_submitBeli.Width) and (Y < btn_submitBeli.Height) then
    begin
      if GetCapture <> btn_submitBeli.Handle then
      begin
        SetCapture(btn_submitBeli.Handle);
        btn_submitBeli.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_submitBeli.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_masukanKeListBeliMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   if (X >= 0) and (Y >= 0) and (X < btn_masukanKeListBeli.Width) and (Y < btn_masukanKeListBeli.Height) then
    begin
      if GetCapture <> btn_masukanKeListBeli.Handle then
      begin
        SetCapture(btn_masukanKeListBeli.Handle);
        btn_masukanKeListBeli.Color := $004B710D;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_masukanKeListBeli.Color := $006DA51C;
    end;
end;

procedure TForm1.btn_statistikClick(Sender: TObject);
begin
  panelPelanggan.Hide;
 panel_statistik.Show;
 panel_login.Visible := False;
 panel_penjualan.Hide;
 panel_gudang.Hide;
 panel_pembelian.Hide;
panel_bantuan.Hide;
 btn_home.Color := $00537C14;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $006DA51C;
 btn_pembelian.Color := $006DA51C;
 btn_statistik.Color := $004B710D;
 btn_bantuan.Color := $006DA51C;
  edit_search.Hide;
 img_search.Hide;


end;


procedure TForm1.btn_bantuanClick(Sender: TObject);
begin
  panelPelanggan.Hide;
 panel_bantuan.Show;
 panel_login.Visible := False;
 panel_penjualan.Hide;
 panel_gudang.Hide;
 panel_pembelian.Hide;
 panel_statistik.Hide;
 btn_home.Color := $00537C14;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $006DA51C;
 btn_pembelian.Color := $006DA51C;
 btn_statistik.Color := $006DA51C;
 btn_bantuan.Color := $004B710D;
 edit_search.Hide;
 img_search.Hide;
end;


procedure TForm1.btn_logoutMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < btn_logout.Width) and (Y < btn_logout.Height) then
    begin
      if GetCapture <> btn_logout.Handle then
      begin
        SetCapture(btn_logout.Handle);
        btn_logout.Color := $0085D117;
      end;
    end
  else
    begin
      ReleaseCapture;
      btn_logout.Color := $006DA51C;
    end;
end;


procedure TForm1.img17Click(Sender: TObject);
begin
 panelPelanggan.Hide;
end;


procedure TForm1.btn_homeClick(Sender: TObject);
begin
  panelPelanggan.Hide;
 panel_penjualan.Hide;
 panel_pembelian.Hide;
 panel_gudang.Hide;
 panel_statistik.Hide;
 panel_bantuan.Hide;
 panel_login.Visible := True;
 edit_nokaryawan.Clear;
 btn_home.Color := $004B710D;
 btn_penjualan.Color := $006DA51C;
 btn_gudang.Color := $006DA51C;
 btn_pembelian.Color := $006DA51C;
 btn_statistik.Color := $006DA51C;
 btn_bantuan.Color := $006DA51C;
 btn_penjualan.Enabled := False;
 btn_gudang.Enabled := False;
 btn_pembelian.Enabled := False;
 btn_statistik.Enabled := False;
 btn_logout.Visible := False;
 edit_search.Hide;
 img_search.Hide;
end;
procedure TForm1.nav_gudangClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case button of
     sbFind:DM.find_gudang.Execute;
     sbFilter:DM.filter_gudang.Execute;
     sbExport : mxDBGridExport1.Select;
     sbPrint: DM.frxReport1.ShowReport;
  end;
end;


procedure TForm1.nav_manageClick(Sender: TObject; Button: TSMNavigateBtn);
begin
  case button of
     sbFind:DM.find_gudang.Execute;
     sbFilter:DM.filter_gudang.Execute;
     sbExport : mxDBGridExport1.Select;
     sbPrint: DM.frxReport1.ShowReport;
  end;
end;

procedure TForm1.panel_penjualanClick(Sender: TObject);
begin
  panel_gudang.Hide;
end;

procedure TForm1.btn_filterGudangClick(Sender: TObject);
begin
  DM.filter_gudang.Execute;
end;

procedure TForm1.edit_idjualbarangExit(Sender: TObject);
var
  a,b:string;
  harbarcurr:Currency;
begin
  DM.qr5.Active:= False;
  DM.qr5.SQL.Clear;
  DM.qr5.SQL.Text:='select * from produk where id_produk = "'+edit_idjualbarang.Text+'"';
  DM.qr5.Active:= True;

  a:=DM.qr5['nama_produk'];
  Edit2.Text:= a;

  tempharga:=DM.qr5['harga_produk'];
   harbarcurr := StrToCurr(tempharga);
   b := 'Rp. '+FormatCurr(',0', harbarcurr)+' ,-';
  Edit4.Text:=b;
  //SMDBComboBox1.Items.Add(a);
end;

procedure TForm1.btn_masukanListClick(Sender: TObject);
var
  a,b,c,j:Integer;
  e,z,m:String;
  hbarcurr, subtotalcurr : Currency;

begin
    hitungx := hitungx + 1;
    topx := topx + 30;
    z := IntToStr(hitungx);

    listnambarx[hitungx] := Edit2.Text;

    ListNamaBarang[hitungx] := TLabel.Create(Form1.scrlbx1);
    ListNamaBarang[hitungx].Parent := Form1.scrlbx1;
    ListNamaBarang[hitungx].Left := 8;
    ListNamaBarang[hitungx].Top := topx;
    ListNamaBarang[hitungx].Name := 'listnambar'+z;
    ListNamaBarang[hitungx].Caption := listnambarx[hitungx];
    ListNamaBarang[hitungx].Font.Charset := ANSI_CHARSET;
    ListNamaBarang[hitungx].Font.Color := clBlack;
    ListNamaBarang[hitungx].Font.Height := -11;
    ListNamaBarang[hitungx].Font.Name := 'Century Gothic';
    ListNamaBarang[hitungx].Font.Style := [fsBold];
    ListNamaBarang[hitungx].ParentFont := False;


    //listharbarx[hitungx] := StrToInt(Edit4.Text);

    listharbarx[hitungx] := StrToInt(tempharga);


    ListHargaBarang[hitungx] := TLabel.Create(Form1.scrlbx1);
    ListHargaBarang[hitungx].Parent := Form1.scrlbx1;
    ListHargaBarang[hitungx].Left := 138;
    ListHargaBarang[hitungx].Top := topx;
    ListHargaBarang[hitungx].Name := 'listharbar'+z;

    m := IntToStr(listharbarx[hitungx]);
    hbarcurr := StrToCurr(m);
    ListHargaBarang[hitungx].Caption := 'Rp. '+FormatCurr(',0', hbarcurr)+' ,-';
    ListHargaBarang[hitungx].Font.Charset := ANSI_CHARSET;
    ListHargaBarang[hitungx].Font.Color := clBlack;
    ListHargaBarang[hitungx].Font.Height := -11;
    ListHargaBarang[hitungx].Font.Name := 'Century Gothic';
    ListHargaBarang[hitungx].Font.Style := [fsBold];
    ListHargaBarang[hitungx].ParentFont := False;

    listqtyx[hitungx] := StrToInt(edit_jmlbarang.Text);

    EditQty[hitungx] := TEdit.Create(Form1.scrlbx1);
    EditQty[hitungx].Parent := Form1.scrlbx1;
    EditQty[hitungx].Name := 'listqty'+z;
    EditQty[hitungx].Text := IntToStr(listqtyx[hitungx]);
    EditQty[hitungx].Left := 222;
    EditQty[hitungx].Top := topx;
    EditQty[hitungx].Width := 55;
    EditQty[hitungx].Font.Charset := ANSI_CHARSET;
    EditQty[hitungx].Font.Color := clBlack;
    EditQty[hitungx].Font.Height := -11;
    EditQty[hitungx].Font.Name := 'Century Gothic';
    EditQty[hitungx].Font.Style := [fsBold];
    EditQty[hitungx].ParentFont := False;

    listsubtotalx[hitungx] := listqtyx[hitungx] * listharbarx[hitungx];

    ListSubtotal[hitungx] := TLabel.Create(Form1.scrlbx1);
    ListSubtotal[hitungx].Parent := Form1.scrlbx1;
    ListSubtotal[hitungx].Name := 'listsubtotal'+z;
    ListSubtotal[hitungx].Left := 300;
    ListSubtotal[hitungx].Top := topx;

    m := IntToStr(listsubtotalx[hitungx]);
    subtotalcurr := StrToCurr(m);
    ListSubtotal[hitungx].Caption := 'Rp. '+FormatCurr(',0', subtotalcurr)+' ,-';
    //ListSubtotal.Caption := 'Rp. '+IntToStr(listsubtotalx[hitungx]);
    ListSubtotal[hitungx].Font.Charset := ANSI_CHARSET;
    ListSubtotal[hitungx].Font.Color := clBlack;
    ListSubtotal[hitungx].Font.Height := -11;
    ListSubtotal[hitungx].Font.Name := 'Century Gothic';
    ListSubtotal[hitungx].Font.Style := [fsBold];
    ListSubtotal[hitungx].ParentFont := False;

  EditQty[hitungx].OnExit := EditQtyxExit;
  
  with DM.qr6 do
  begin
    Active := True;
    SQL.Text:='select * from detail_nota';
    a:=StrToInt(edit_jmlbarang.Text);
    b := StrToInt(tempharga);
    c := a * b;

    DM.con1.ExecuteDirect('insert into detail_nota (nama_produk, qty, Subtotal) values("'+Edit2.Text+'","'+edit_jmlbarang.Text+'",'+inttostr(c)+')');
    smdbgrd_jual.RefreshData;
    Edit4.Clear;
    Edit2.Clear;
    edit_idjualbarang.Clear;
    edit_jmlbarang.Clear;

    d:=c+d;

    totalcurr := StrToCurr(IntToStr(d));
    e := 'Rp. '+FormatCurr(',0', totalcurr)+' ,-';
    totalstr := CurrToStr(totalcurr);
    Label1.Caption := e;
  end;

      with DM.qr7 do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM produk');
      Open;
      First;
      cbb1.Items.Clear;
      cbb1.Text := '';
      j := 1;
      while not Eof do
      begin
        cbb1.Items.Add((FieldByName('id_produk').AsString) + ' - '+FieldByName('nama_produk').AsString);

        itemx[j] := (FieldByName('id_produk').AsString);
        itemxy[j] := (FieldByName('id_produk').AsString) + ' - '+FieldByName('nama_produk').AsString;
        Next;
        j := j + 1;
      end;
      //LABELTEST.Caption := itemx[j];
      Close;
    end;

end;

procedure TForm1.EditQtyxExit(Sender: TObject);
var
  n,v:Integer;
  e,m : String;
  subtotalcurr : Currency;
begin
  for v:= 1 to hitungx do
  begin
  if EditQty[v].Text <> IntToStr(listqtyx[v]) then
    begin
     hitungk := v;
     n := StrToInt(EditQty[hitungk].Text);
     listsubtotalx[hitungk] := n * listharbarx[hitungk];

    m := IntToStr(listsubtotalx[hitungk]);
    subtotalcurr := StrToCurr(m);
    ListSubtotal[hitungk].Caption := 'Rp. '+FormatCurr(',0', subtotalcurr)+' ,-';

    end;
    totalint := totalint + listsubtotalx[v];

  end;
  totalcurr := StrToCurr(IntToStr(totalint));
    e := 'Total : Rp. '+FormatCurr(',0', totalcurr)+' ,-';
    totalstr := CurrToStr(totalcurr);
  Label1.Caption := e;
end;

procedure TForm1.EditQtyx1Exit(Sender: TObject);
begin
  ShowMessage('Sukses2'+inttostr(hitungx));
end;


procedure TForm1.Edit3Exit(Sender: TObject);
var
  a,b:Integer;
  e,f :String;
  bayarcurr,kembaliancurr : Currency;
begin

  if Edit3.Text = '' then
  begin
     ShowMessage('Masukan Jumlah Bayar Terlebih Dahulu !!');
  end

  else
  begin
  a:=StrToInt(Edit3.Text);
  b:= a-d;
  Edit1.Text := IntToStr(b);

    bayarcurr := StrToCurr(Edit3.Text);
    e := ' Rp. '+FormatCurr(',0', bayarcurr)+' ,-';
    Edit3.Text := e;

    kembaliancurr := StrToCurr(Edit1.Text);
    f := ' Rp. '+FormatCurr(',0', kembaliancurr)+' ,-';
    Edit1.Text := f;
    end;
end;

procedure TForm1.btn_submitJualClick(Sender: TObject);
var
  z : integer;
begin
  z := 1;
  while z <= hitungx do
  begin
    ListSubtotal[z].Free;
    ListNamaBarang[z].Free;
    ListHargaBarang[z].Free;
    EditQty[z].Free;
    z := z + 1;
  end;

  hitungx := 0;
  hitungk := 0;
  totalcurr := 0;
   topx := 10;
   d := 0;
  Edit3.Text:='';
  Edit1.Text:='';
  Label1.Caption := 'Total : Rp. 0,-';
  ShowMessage('Transaksi Sukses !');
  cbb1.Text := '';

  for z:=1 to 100 Do
  begin
   listsubtotalx[z]:=0;
   listharbarx[z]:=0;
   listnambarx[z]:='';
   listqtyx[z]:=0;
  end;
end;

procedure TForm1.btn_cencelJualClick(Sender: TObject);
var
  z : integer;
begin
  z := 1;
  while z <= hitungx do
  begin
    ListSubtotal[z].Free;
    ListNamaBarang[z].Free;
    ListHargaBarang[z].Free;
    EditQty[z].Free;
    z := z + 1;
  end;

  hitungx := 0;
  hitungk := 0;
  totalcurr := 0;
  topx := 10;
  d := 0;
  Edit3.Text:='';
  Edit1.Text:='';
  Label1.Caption := 'Total : Rp. 0,-';
  ShowMessage('Transaksi Digagalkan !');
  cbb1.Text := '';

  for z:=1 to 100 Do
  begin
   listsubtotalx[z]:=0;
   listharbarx[z]:=0;
   listnambarx[z]:='';
   listqtyx[z]:=0;
  end;
end;

procedure TForm1.cbb1Exit(Sender: TObject);
var
  a,b:string;
  j:integer;
  harbarcurr:Currency;
begin

  for j:= 1 to cbb1.Items.Count do
  begin
    //LABELTEST.Caption := itemx[j];
       if cbb1.Text = itemxy[j] then
          begin
            DM.qr5.SQL.Text:='select * from produk where id_produk = "'+itemx[j]+'"';
            DM.qr5.Active:= True;
            a:=DM.qr5['nama_produk'];
            Edit2.Text:= a;
            tempharga:=DM.qr5['harga_produk'];
            harbarcurr := StrToCurr(tempharga);
            b := 'Rp. '+FormatCurr(',0', harbarcurr)+' ,-';
            Edit4.Text:=b;
          end;
  end;

end;




procedure TForm1.img4Click(Sender: TObject);
begin
panelPelanggan.Hide;
end;

procedure TForm1.pnl38Click(Sender: TObject);
begin
  panelPelanggan.Hide;
  with DM.qr6 do
  begin
    Active := False;
    SQL.Text:='select * from pelanggan';
    DM.con1.ExecuteDirect('insert into pelanggan (nama_pelanggan, kontak_pelanggan, kota, kecamatan, alamat_lengkap) values("'+cbb3.Text+'","'+edt_kontakPel.Text+'","'+cbb5_kotaPel.Text+'","'+cbb6_kecPel.Text+'","'+mmo_alamatPel.Text+'")');
    smdbgrd_jual.RefreshData;
    cbb3.Clear;
    cbb5_kotaPel.Clear;
    cbb6_kecPel.Clear;
    edt_kontakPel.Clear;
    mmo_alamatPel.Clear;
  end;
  MessageDlg('Data Pelanggan Telah Masuk',mtInformation,[mbOK],0);
end;

procedure TForm1.pnl39Click(Sender: TObject);
begin
panelPelanggan.Hide;
end;

procedure TForm1.cbb2Exit(Sender: TObject);
  var
  j:Integer;

begin
  if (cbb2.Text = 'Rumah Sakit') or (cbb2.Text = 'Dokter/ Buka Praktek') or (cbb2.Text = 'Puskesmas') then
  begin
  panelPelanggan.Show;
  end;


    with DM.zqry2 do
    begin
      Form4.Hide;
      SQL.Clear;
      SQL.Add('SELECT * FROM pelanggan');
      Open;
      First;
      Active := True;
      cbb3.Items.Clear;
      j := 1;
      while not Eof do
      begin
        cbb3.Items.Add(FieldByName('nama_pelanggan').AsString);
        //edt_kontakPel.Text := FieldByName('kontak_pelanggan').AsString;
        itempelanggan[j] := (FieldByName('nama_pelanggan').AsString);
        Next;
        j := j + 1;
      end;
      //LABELTEST.Caption := itemx[j];
      Close;
    end;

end;

procedure TForm1.pnl_editGudangClick(Sender: TObject);
begin
  if Assigned(FOnAppendRecord) then
    FOnAppendRecord(Self)
    else
    begin
      //DM.ds2.DataSet.Last;
      DM.login_ds1.DataSet.Insert;
    end;

end;

procedure TForm1.pnl_filterGudangClick(Sender: TObject);
begin
  if Assigned(FOnFilterData) then
    FOnFilterData(Self);
  DM.filter_gudang.Execute;
end;

procedure TForm1.pnl_hapusGudangClick(Sender: TObject);
begin

   if (DM.login_ds1 <> nil) and (DM.login_ds1.State <> dsInactive) then
    begin
      if Assigned(FOnDeleteRecord) then
      FOnDeleteRecord(Self)
      else
        if not FConfirmDelete then
          DM.login_ds1.DataSet.Delete;
    end

   else
   begin
        ShowMessage('Data Base Kosong');
        pnl_hapusGudang.Enabled := False;
   end;
end;

procedure TForm1.pnl_exportGudangClick(Sender: TObject);
begin
  if Assigned(FOnExportData) then
    FOnExportData(Self);
  mxDBGridExport1.Select;

end;

procedure TForm1.pnl_cetakGudangClick(Sender: TObject);
begin
  if Assigned(FOnPrintData) then
    FOnPrintData(Self);
  DM.frxReport1.ShowReport;
end;

procedure TForm1.nav_gudangRefreshData(Sender: TObject);
begin
  DM.zqry1.Active := False;
  DM.zqry1.SQL.Text := 'select * from produk';
  DM.zqry1.Active := True;
end;

procedure TForm1.SMDBGrid1Exit(Sender: TObject);
begin
  
 DM.zqry1.Active := False;
  DM.zqry1.SQL.Text := 'select * from produk';
  DM.zqry1.Active := True;
end;

procedure TForm1.pnlrefreshdataClick(Sender: TObject);
begin
  DM.zqry1.Active := False;
  DM.zqry1.SQL.Text := 'select * from produk';
  DM.zqry1.Active := True;
end;

procedure TForm1.edit_searchExit(Sender: TObject);
var
  //searchx : String;
  p :Integer;
  found : Boolean;
begin

 // if Assigned(FOnFindData) then
 // FOnFindData(Self);
 // searchx := edit_search.Text+'%';
 // with DM.zqry1 do
 // begin
 //   Active := False;
 //   SQL.Clear;
 //   SQL.Text := 'select * from produk where id_produk like "'+searchx+'" or nama_produk like "'+searchx+'" or harga_produk like "'+searchx+'" or stok_produk like "'+searchx+'" or id_supplier like "'+searchx+'"';
 //   Active := True;
 //   edit_search.Text := '';
 // end;
   while not DM.zqry1.Eof do
  begin
    for p := 0 to DM.zqry1.FieldCount-1 do
    if (SMDBGrid1.Fields[p].value<>null) and (pos(uppercase(edit_search.Text),uppercase(SMDBGrid1.Fields[p].Value))>0)  then
    begin
      found := True;
      SMDBGrid1.SelectedField := SMDBGrid1.Fields[p];
      Break;
    end;
    if found then break;
    DM.zqry1.Next;
  end;

                                        
         if edit_search.Text = 'kosong' then
      begin
          with DM.zqry1 do
          begin
            Active := False;
            SQL.Clear;
            SQL.Text := 'select * from produk where stok_produk < 1';
            Active := True;
          end;
      end;
      edit_search.Clear;
end;

procedure TForm1.pnl_editGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_editGudang.Width) and (Y < pnl_editGudang.Height) then
    begin
      if GetCapture <> pnl_editGudang.Handle then
      begin
        SetCapture(pnl_editGudang.Handle);
        pnl_editGudang.Color := $004B7113;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_editGudang.Color := $006DA51C;
    end;
end;

procedure TForm1.pnl_filterGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_filterGudang.Width) and (Y < pnl_filterGudang.Height) then
    begin
      if GetCapture <> pnl_filterGudang.Handle then
      begin
        SetCapture(pnl_filterGudang.Handle);
        pnl_filterGudang.Color := $000044D2;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_filterGudang.Color := $004080FF;
    end;
end;

procedure TForm1.pnl_hapusGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_hapusGudang.Width) and (Y < pnl_hapusGudang.Height) then
    begin
      if GetCapture <> pnl_hapusGudang.Handle then
      begin
        SetCapture(pnl_hapusGudang.Handle);
        pnl_hapusGudang.Color := $002D10B1;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_hapusGudang.Color := $005332ED;
    end;
end;

procedure TForm1.pnl_exportGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_exportGudang.Width) and (Y < pnl_exportGudang.Height) then
    begin
      if GetCapture <> pnl_exportGudang.Handle then
      begin
        SetCapture(pnl_exportGudang.Handle);
        pnl_exportGudang.Color := $00C14B04;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_exportGudang.Color := $00FA7B30;
    end;
end;

procedure TForm1.pnl_cetakGudangMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnl_cetakGudang.Width) and (Y < pnl_cetakGudang.Height) then
    begin
      if GetCapture <> pnl_cetakGudang.Handle then
      begin
        SetCapture(pnl_cetakGudang.Handle);
        pnl_cetakGudang.Color := $009F3A04;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnl_cetakGudang.Color := $00ED5807;
    end;
end;

procedure TForm1.pnlrefreshdataMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnlrefreshdata.Width) and (Y < pnlrefreshdata.Height) then
    begin
      if GetCapture <> pnlrefreshdata.Handle then
      begin
        SetCapture(pnlrefreshdata.Handle);
        pnlrefreshdata.Color := $00A61E57;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnlrefreshdata.Color := $00D92672;
    end;
end;

procedure TForm1.pnltambahsupplierMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (X >= 0) and (Y >= 0) and (X < pnltambahsupplier.Width) and (Y < pnltambahsupplier.Height) then
    begin
      if GetCapture <> pnltambahsupplier.Handle then
      begin
        SetCapture(pnltambahsupplier.Handle);
        pnltambahsupplier.Color := $008B2594;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnltambahsupplier.Color := $00C136CD;
    end;
end;

procedure TForm1.pnlTambahKaryawanClick(Sender: TObject);
begin
  pnlkaryawansupplier.Show;
end;

procedure TForm1.pnlTambahKaryawanMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if (X >= 0) and (Y >= 0) and (X < pnlTambahKaryawan.Width) and (Y < pnlTambahKaryawan.Height) then
    begin
      if GetCapture <> pnlTambahKaryawan.Handle then
      begin
        SetCapture(pnlTambahKaryawan.Handle);
        pnlTambahKaryawan.Color := $009B4E00;
      end;
    end
  else
    begin
      ReleaseCapture;
      pnlTambahKaryawan.Color := $00FF8000;
    end;
end;

procedure TForm1.pnltambahsupplierClick(Sender: TObject);
begin
  pnlkaryawansupplier.Show;
  lbl24.Caption := 'Masukan Data Supplier';
end;

procedure TForm1.pnl42Click(Sender: TObject);
var
  j:Integer;
begin
pnlkaryawansupplier.Hide;
end;

procedure TForm1.pnl43Click(Sender: TObject);
var
  a:String;
begin
  pnlkaryawansupplier.Hide;
  a:= mmo_alamat_lengkapKar.Text +', '+ cbb_kecKar.Text +', '+ cbb_kotaKar.Text;
  with DM.zqry3 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text:='select * from karyawan';
    DM.con1.ExecuteDirect('insert into karyawan (nama_karyawan, username_karyawan, password_karyawan, notelp_karyawan, alamat_karyawan) values("'+edt_namaKar.Text+'","'+edt_usernameKar.Text+'","'+edt_passKar.Text+'","'+edt_kontakKar.Text+'","'+a+'")');
    smdbgrd_jual.RefreshData;
    edt_namaKar.Clear;
    edt_passKar.Clear;
    edt_usernameKar.Clear;
    edt_kontakKar.Clear;
    cbb_kotaKar.Clear;
    cbb_kecKar.Clear;
    mmo_alamat_lengkapKar.Clear;
    Active := True;
  end;
  MessageDlg('Karyawan telah Ditambahkan. ',mtInformation,[mbOK],0);
 end;



procedure TForm1.img22Click(Sender: TObject);
begin
pnlkaryawansupplier.Hide;
end;

procedure TForm1.pnl49Click(Sender: TObject);
begin
  with DM.zqry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'select * from produk ORDER BY harga_produk';
    Active := True;
  end;
end;

procedure TForm1.pnl50Click(Sender: TObject);
begin
  with DM.zqry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'select * from produk ORDER BY stok_produk';
    Active := True;
  end;
end;

procedure TForm1.pnl48Click(Sender: TObject);
begin
  with DM.zqry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'select * from produk ORDER BY nama_produk';
    Active := True;
  end;
end;

procedure TForm1.pnl47Click(Sender: TObject);
begin
  with DM.zqry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'select * from produk ORDER BY id_produk';
    Active := True;
  end;
end;

procedure TForm1.pnl46Click(Sender: TObject);
begin
  with DM.zqry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'select * from produk ORDER BY nama_supplier';
    Active := True;
  end;
end;

procedure TForm1.pnl52Click(Sender: TObject);
begin
  with DM.zqry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'select * from produk ORDER BY id_supplier';
    Active := True;
  end;
end;

procedure TForm1.edit_nokaryawanKeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then
    begin
      edit_passwordkaryawan.setfocus;
    end;
end;

procedure TForm1.edit_passwordkaryawanKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = chr(13) then
    begin
      login; 
    end;
end;

procedure TForm1.scrlbx2MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  LTopLeft, LTopRight, LBottomLeft, LBottomRight: Integer;
  LPoint: TPoint;
begin
  inherited;

  // First you have to get the position of the control on screen
  // as MousePos coordinates are based on the screen positions.
  LPoint := scrlbx2.ClientToScreen(Point(0,0));
  LTopLeft := LPoint.X;
  LTopRight := LTopLeft + scrlbx2.Width;
  LBottomLeft := LPoint.Y;
  LBottomRight := LBottomLeft + scrlbx2.Width;

  if (MousePos.X >= LTopLeft) and
    (MousePos.X <= LTopRight) and
    (MousePos.Y >= LBottomLeft)and
    (MousePos.Y <= LBottomRight) then
  begin
    // If the mouse is inside the scrollbox coordinates,
    // scroll it by setting .VertScrollBar.Position.
    scrlbx2.VertScrollBar.Position :=
      scrlbx2.VertScrollBar.Position - WheelDelta;
    Handled := True;
  end;
end;

procedure TForm1.lbl12Click(Sender: TObject);
begin
  //
end;

procedure TForm1.cbb3Exit(Sender: TObject);
var j:Integer;
begin
with DM.zqry2 do
    begin
      Form4.Hide;
      SQL.Clear;
      SQL.Add('SELECT * FROM pelanggan');
      Open;
      First;
      Active := True;
      edt_kontakPel.Clear;
      j := 1;
      while not Eof do
      begin
        if cbb3.Text = itempelanggan[j] then
        begin
          edt_kontakPel.Text := FieldByName('kontak_pelanggan').AsString;
          cbb5_kotaPel.Text :=  FieldByName('kota').AsString;
          cbb6_kecPel.Text := FieldByName('kecamatan').AsString;
          mmo_alamatPel.Text := FieldByName('alamat_lengkap').AsString;
        end;

        if cbb3.Text = '' then
        begin
          edt_kontakPel.Clear;
          cbb5_kotaPel.Clear;
          cbb6_kecPel.Clear;
          mmo_alamatPel.Clear;
        end;


        Next;
        j := j + 1;
      end;
      //LABELTEST.Caption := itemx[j];
      Close;
    end;
end;



procedure TForm1.scrlbx4MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  LTopLeft, LTopRight, LBottomLeft, LBottomRight: Integer;
  LPoint: TPoint;
begin
  inherited;

  // First you have to get the position of the control on screen
  // as MousePos coordinates are based on the screen positions.
  LPoint := scrlbx4.ClientToScreen(Point(0,0));
  LTopLeft := LPoint.X;
  LTopRight := LTopLeft + scrlbx4.Width;
  LBottomLeft := LPoint.Y;
  LBottomRight := LBottomLeft + scrlbx4.Width;

  if (MousePos.X >= LTopLeft) and
    (MousePos.X <= LTopRight) and
    (MousePos.Y >= LBottomLeft)and
    (MousePos.Y <= LBottomRight) then
  begin
    // If the mouse is inside the scrollbox coordinates,
    // scroll it by setting .VertScrollBar.Position.
    scrlbx4.VertScrollBar.Position :=
      scrlbx4.VertScrollBar.Position - WheelDelta;
    Handled := True;
  end;
end;

end.


