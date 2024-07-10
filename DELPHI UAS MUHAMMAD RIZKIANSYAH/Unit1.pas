unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel; // Tambahkan Label untuk Diskon
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DBGrid1: TDBGrid;
    procedure bersih;
    procedure posisiawal;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2,
  Unit3;

{$R *.dfm}

procedure TForm1.Button6Click(Sender: TObject);
begin
  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  ComboBox1.Enabled := True;
  Edit5.Enabled := True;
  Button1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button5.Enabled := true;
  bersih;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    ShowMessage('NIK Tidak Boleh Kosong!')
  else if Edit2.Text = '' then
    ShowMessage('Nama Tidak Boleh Kosong!')
  else if Edit3.Text = '' then
    ShowMessage('Telp Tidak Boleh Kosong!')
  else if Edit4.Text = '' then
    ShowMessage('Email Tidak Boleh Kosong!')
  else if Edit5.Text = '' then
    ShowMessage('Alamat Tidak Boleh Kosong!')
  else if DataModule2.Dskustomer.DataSet.Locate('nik', Edit1.Text, []) then
    ShowMessage('NIK ' + Edit1.Text + ' Sudah Ada Didalam Sistem')
  else
  begin
    with DataModule2.Dskustomer.DataSet do
    begin
      Append;
      FieldByName('nik').AsString := Edit1.Text;
      FieldByName('nama').AsString := Edit2.Text;
      FieldByName('telp').AsString := Edit3.Text;
      FieldByName('email').AsString := Edit4.Text;
      FieldByName('member').AsString := ComboBox1.Text;
      FieldByName('alamat').AsString := Edit5.Text;
      Post;
    end;
    ShowMessage('Data Berhasil Disimpan.');
    posisiawal;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    ShowMessage('NIK Tidak Boleh Kosong!')
  else if Edit2.Text = '' then
    ShowMessage('Nama Tidak Boleh Kosong!')
  else if DataModule2.Dskustomer.DataSet.Locate('nik', Edit1.Text, []) then
  begin
    with DataModule2.Dskustomer.DataSet do
    begin
      Edit;
      FieldByName('nik').AsString := Edit1.Text;
      FieldByName('nama').AsString := Edit2.Text;
      FieldByName('telp').AsString := Edit3.Text;
      FieldByName('email').AsString := Edit4.Text;
      FieldByName('member').AsString := ComboBox1.Text;
      FieldByName('alamat').AsString := Edit5.Text;
      Post;
    end;
    ShowMessage('Data Berhasil Diedit.');
    posisiawal;
  end
  else
    ShowMessage('NIK ' + Edit1.Text + ' Tidak Ditemukan.');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if DataModule2.Dskustomer.DataSet.RecordCount = 0 then
    ShowMessage('Tidak ada data untuk dihapus.')
  else if Application.MessageBox('Apakah Anda yakin ingin menghapus data ini?', 'Konfirmasi', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    DataModule2.Dskustomer.DataSet.Delete;
    ShowMessage('Data Berhasil Dihapus.');
    posisiawal;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  with DataModule2.Dskustomer.DataSet do
  begin
    if Locate('nama', Edit6.Text, []) then
      ShowMessage('Data Ditemukan.')
    else
      ShowMessage('Data Tidak Ditemukan.');
  end;
end;

procedure TForm1.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  ComboBox1.ItemIndex := -1;
end;

procedure TForm1.posisiawal;
begin
  bersih;
  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := False;
  Edit4.Enabled := False;
  Edit5.Enabled := False;
  Edit6.Enabled := True;
  Button1.Enabled := False;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button5.Enabled := false;
  Button6.Enabled := True;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
with DataModule2.Dskustomer.DataSet do
  begin
    Edit1.Text := FieldByName('nik').AsString;
    Edit2.Text := FieldByName('nama').AsString;
    Edit3.Text := FieldByName('telp').AsString;
    Edit4.Text := FieldByName('email').AsString;
    ComboBox1.Text := FieldByName('member').AsString;
    Edit5.Text := FieldByName('alamat').AsString;
  end;

  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  ComboBox1.Enabled := True;
  Edit5.Enabled := True;
  Edit6.Enabled := True;
  Button2.Enabled := True;
  Button3.Enabled := True;
  Button1.Enabled := False;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = 'yes' then
    Label7.Caption := 'Diskon: 10%'
  else if ComboBox1.Text = 'no' then
    Label7.Caption := 'Diskon: 5%'
  else
    Label7.Caption := '';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Form3.QuickRep1.preview;
end;

end.

