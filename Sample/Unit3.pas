unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, TBGPrevisaoTempo.Principal,
  Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    PrevisaoTempo1: TPrevisaoTempo;
    Label1: TLabel;
    Button2: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lblID: TLabel;
    lblCity: TLabel;
    lblState: TLabel;
    lblCountry: TLabel;
    lbltemperature: TLabel;
    lblWindDirection: TLabel;
    lblWindVelocity: TLabel;
    lblhumidity: TLabel;
    lblcondition: TLabel;
    lblpressure: TLabel;
    lblsensation: TLabel;
    lbldate: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  TBGPrevisaoTempo.Model.Entidade;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  PrevisaoTempo1.CodeCity := lblID.Caption;
  PrevisaoTempo1.ConsultWeather;
  Image1.Picture.Graphic := PrevisaoTempo1.Return.icon;
  lbltemperature.Caption := PrevisaoTempo1.Return.Temperature.ToString;
  lblCity.Caption := PrevisaoTempo1.Return.City;
  lblState.Caption := PrevisaoTempo1.Return.State;
  lblCountry.Caption := PrevisaoTempo1.Return.Country;
  lblWindDirection.Caption := PrevisaoTempo1.Return.wind_direction;
  lblWindVelocity.Caption := PrevisaoTempo1.Return.wind_velocity.ToString;
  lblhumidity.Caption := PrevisaoTempo1.Return.humidity.ToString;
  lblcondition.Caption := PrevisaoTempo1.Return.condition;
  lblpressure.Caption := PrevisaoTempo1.Return.pressure.ToString;
  lblsensation.Caption := PrevisaoTempo1.Return.sensation.ToString;
  lbldate.Caption := PrevisaoTempo1.Return.date
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  lblID.Caption := PrevisaoTempo1.FindCityID('Niterói', 'RJ');
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
