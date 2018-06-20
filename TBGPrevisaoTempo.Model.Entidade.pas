unit TBGPrevisaoTempo.Model.Entidade;

interface

uses
  System.Classes, Vcl.Imaging.pngimage;

type
  TPrevisaoTempoModel = class
  private
    Fdate: String;
    Fcondition: String;
    Fwind_direction: String;
    Fhumidity: Integer;
    FState: String;
    Fwind_velocity: Integer;
    Fsensation: Integer;
    Ficon: TPngImage;
    Fpressure: Integer;
    FCountry: String;
    FTemperature: Integer;
    FCity: String;
    FIconString : String;
    procedure SetCity(const Value: String);
    procedure Setcondition(const Value: String);
    procedure SetCountry(const Value: String);
    procedure Setdate(const Value: String);
    procedure Sethumidity(const Value: Integer);
    procedure Setpressure(const Value: Integer);
    procedure Setsensation(const Value: Integer);
    procedure SetState(const Value: String);
    procedure SetTemperature(const Value: Integer);
    procedure Setwind_direction(const Value: String);
    procedure Setwind_velocity(const Value: Integer);
  public
    procedure Seticon(const Value: String); overload;
    function icon : TPngImage; overload;
  published
    property City : String read FCity write SetCity;
    property State : String read FState write SetState;
    property Country : String read FCountry write SetCountry;
    property Temperature : Integer read FTemperature write SetTemperature;
    property wind_direction : String read Fwind_direction write Setwind_direction;
    property wind_velocity : Integer read Fwind_velocity write Setwind_velocity;
    property humidity : Integer read Fhumidity write Sethumidity;
    property condition : String read Fcondition write Setcondition;
    property pressure : Integer read Fpressure write Setpressure;
    property sensation : Integer read Fsensation write Setsensation;
    property date : String read Fdate write Setdate;
  end;

implementation

uses
  System.Types;

{ TModelEntidade }

function TPrevisaoTempoModel.icon: TPngImage;
begin
  Result := Ficon;
end;

procedure TPrevisaoTempoModel.SetCity(const Value: String);
begin
  FCity := Value;
end;

procedure TPrevisaoTempoModel.Setcondition(const Value: String);
begin
  Fcondition := Value;
end;

procedure TPrevisaoTempoModel.SetCountry(const Value: String);
begin
  FCountry := Value;
end;

procedure TPrevisaoTempoModel.Setdate(const Value: String);
begin
  Fdate := Value;
end;

procedure TPrevisaoTempoModel.Sethumidity(const Value: Integer);
begin
  Fhumidity := Value;
end;

procedure TPrevisaoTempoModel.Seticon(const Value: String);
var
  Png: TPngImage;
begin
  Png := TPngImage.Create;
  Png.LoadFromResourceName(FindHInstance(Self.ClassType), Value);
  Ficon := Png;
  FIconString := value;
end;

procedure TPrevisaoTempoModel.Setpressure(const Value: Integer);
begin
  Fpressure := Value;
end;

procedure TPrevisaoTempoModel.Setsensation(const Value: Integer);
begin
  Fsensation := Value;
end;

procedure TPrevisaoTempoModel.SetState(const Value: String);
begin
  FState := Value;
end;

procedure TPrevisaoTempoModel.SetTemperature(const Value: Integer);
begin
  FTemperature := Value;
end;

procedure TPrevisaoTempoModel.Setwind_direction(const Value: String);
begin
  Fwind_direction := Value;
end;

procedure TPrevisaoTempoModel.Setwind_velocity(const Value: Integer);
begin
  Fwind_velocity := Value;
end;

end.
