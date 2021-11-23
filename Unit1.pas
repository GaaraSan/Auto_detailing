unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, DB;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Button2: TButton;
    Button18: TButton;
    Button19: TButton;
    Label7: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit5: TEdit;
    Button10: TButton;
    Button11: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button4: TButton;
    Button6: TButton;
    Button5: TButton;
    Button7: TButton;
    Button3: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Label6: TLabel;
    Button13: TButton;
    Button8: TButton;
    Button9: TButton;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    Label8: TLabel;
    Edit6: TEdit;
    Button12: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Panel7: TPanel;
    DBGrid5: TDBGrid;
    Label9: TLabel;
    Button17: TButton;
    Button20: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormShowBusyness(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}



procedure TForm1.Button5Click(Sender: TObject);
begin
   DataModule2.ADOTStaff.Insert;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   if  DataModule2.ADOTStaff.Modified then
 DataModule2.ADOTStaff.Post;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    DataModule2.ADOTStaff.Delete;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
Edit1.Text:='';
Edit3.Text:='';
Edit4.Text:='0';
Button1.Visible:=true;
Button4.Visible:=false;
Panel1.Visible:=true;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
DBLookupComboBox1.KeyValue:=6;
DBLookupComboBox2.KeyValue:=17;
Button9.Visible:=true;
Panel5.Visible:=true;
end;   

procedure TForm1.Button19Click(Sender: TObject);
begin
Edit1.Text:=DBGrid1.Fields[1].AsString;
Edit3.Text:=DBGrid1.Fields[3].AsString;
Edit4.Text:=DBGrid1.Fields[2].AsString;
Button1.Visible:=false;
Button4.Visible:=True;
Panel1.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= 'DELETE * FROM Services Where (ID = '+DBGrid1.Fields[0].AsString+')';
DataModule2.ADOQWork.ExecSQL;
FormShow(Sender);
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
DataModule2.ADOQServices.Close;
DataModule2.ADOQServices.SQL.Text:= 'SELECT ID, Title, UnitPrice, Description '
+' FROM Services where Title like "%'+Edit5.Text+'%" ORDER BY ID';
DataModule2.ADOQServices.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Try
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:='INSERT INTO Services ( [Title], [UnitPrice], [Description]) values ("'+Edit1.Text+'", '+Edit4.Text+', "'+Edit3.Text+'")';
DataModule2.ADOQWork.ExecSQL;

DataModule2.ADOQServices.Close;
DataModule2.ADOQServices.SQL.Text:= 'SELECT ID, Title, UnitPrice, Description FROM Services ORDER BY ID';
DataModule2.ADOQServices.Open;

panel1.Visible:=False;
Except
        ShowMessage('������� ����� ����� � ���� "���� �� �������"');
end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DataModule2.ADOQServices.Close;
DataModule2.ADOQServices.SQL.Text:= 'SELECT ID, Title, UnitPrice, Description FROM Services ORDER BY ID';
DataModule2.ADOQServices.Open;
end;

procedure TForm1.FormShowBusyness(Sender: TObject);
begin
DataModule2.ADOQueryBusyness.Close;
DataModule2.ADOQueryBusyness.SQL.Text:= 'SELECT Busyness.ID, Staff.FIO, Services.Title '
+' FROM Services INNER JOIN (Staff INNER JOIN Busyness ON Staff.ID = Busyness.staff) ON Services.ID = Busyness.service ORDER BY Busyness.ID';
DataModule2.ADOQueryBusyness.Open;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
Try
DataModule2.ADOQServices.Close;
DataModule2.ADOQServices.SQL.Text:= 'SELECT ID, Title, UnitPrice, Description '
+' FROM Services where ID = '+Edit2.Text+' ORDER BY ID';
DataModule2.ADOQServices.Open;
except
        ShowMessage('������� ����� ����� � ���� "����� �� ���� ������"');
end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
DataModule2.ADOQServices.Close;
DataModule2.ADOQServices.SQL.Text:= 'SELECT ID, Title, UnitPrice, Description FROM Services ORDER BY ID';
DataModule2.ADOQServices.Open;
Edit2.Text:='';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
try
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:='UPDATE Services SET Title = "'+Edit1.Text+'", UnitPrice = '+Edit4.Text+', Description = "'+Edit3.Text+'" '
+' WHERE (((ID)='+DBGrid1.Fields[0].AsString+'))';
DataModule2.ADOQWork.ExecSQL;

FormShow(Sender);

panel1.Visible:=False;
except
        ShowMessage('������� ����� ����� � ���� "���� �� �������');
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit1.Text:='';
Edit3.Text:='';
Edit4.Text:='0';
FormShow(Sender);
panel1.Visible:=False;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
DataModule2.ADOQOrder.Close;
DataModule2.ADOQOrder.SQL.Text:= 'SELECT Order.ID AS ID , Services.Title, Order.ʳ������_������, Check.ID AS Check_id, Order.������� '
+' FROM [Check] INNER JOIN (Staff INNER JOIN (Services INNER JOIN (Busyness INNER JOIN [Order] ON Busyness.ID = Order.�������) ON Services.ID = Busyness.service) ON Staff.ID = Busyness.staff) ON Check.ID = Order.���_���� '
+' ORDER BY Order.ID';
DataModule2.ADOQOrder.Open;
Edit6.Text:='';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= 'DELETE * FROM Busyness Where (Busyness.ID = '+DBGrid3.Fields[0].AsString+')';
DataModule2.ADOQWork.ExecSQL;
FormShowBusyness(Sender);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:='INSERT INTO Busyness ( [staff], [service] ) values ('+IntToStr(DBLookupComboBox1.KeyValue)+', '+IntToStr(DBLookupComboBox2.KeyValue)+')';
DataModule2.ADOQWork.ExecSQL;

DataModule2.ADOQueryBusyness.Close;
DataModule2.ADOQueryBusyness.SQL.Text:= 'SELECT Busyness.ID, Staff.FIO, Services.Title '
+' FROM Services INNER JOIN (Staff INNER JOIN Busyness ON Staff.ID = Busyness.staff) ON Services.ID = Busyness.service ORDER BY Busyness.ID';
DataModule2.ADOQueryBusyness.Open;

panel5.Visible:=False;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
try
DataModule2.ADOQOrder.Close;
DataModule2.ADOQOrder.SQL.Text:= 'SELECT Order.ID AS ID , Services.Title, Order.ʳ������_������, Check.ID AS Check_id, Order.������� '
+' FROM [Check] INNER JOIN (Staff INNER JOIN (Services INNER JOIN (Busyness INNER JOIN [Order] ON Busyness.ID = Order.�������) ON Services.ID = Busyness.service) ON Staff.ID = Busyness.staff) ON Check.ID = Order.���_���� '
+' where Check.ID = '+Edit6.Text+' ORDER BY Order.ID';
DataModule2.ADOQOrder.Open;
except
        ShowMessage('������� ����� ����� � ���� "����� �� ������ ����');
end;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
DataModule2.ADOQCheck.Close;
DataModule2.ADOQCheck.SQL.Text:='SELECT Check.ID, Check.DateTime, Check.FinalSUM FROM [Check] WHERE DateTime = :dt';
DataModule2.ADOQCheck.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
DataModule2.ADOQCheck.Open;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
DataModule2.ADOQCheck.Close;
DataModule2.ADOQCheck.SQL.Text:='SELECT Check.ID, Check.DateTime, Check.FinalSUM FROM [Check] ORDER BY Check.ID';
DataModule2.ADOQCheck.Open;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
   FormRepServices.QuickRep1.PreviewModal;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
    FormRepOrder.QuickRep1.PreviewModal;
end;

end.






     







