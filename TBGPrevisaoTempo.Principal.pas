unit TBGPrevisaoTempo.Principal;

interface

uses
  TBGPrevisaoTempo.View.Interfaces, System.Classes,
  TBGPrevisaoTempo.Model.Entidade;

Type
  TPrevisaoTempo = class(TComponent)
  private
    FEntidade: TPrevisaoTempoModel;
    FCodeCity: String;
    FToken: String;
    procedure SetCodeCity(const Value: String);
    procedure SetToken(const Value: String);
  public
    constructor Create;
    destructor Destroy; override;
    function ConsultWeather: TPrevisaoTempo;
    function FindCityID(City, State : String) : String;
    function Return : TPrevisaoTempoModel;
  published
    property CodeCity: String read FCodeCity write SetCodeCity;
    property Token: String read FToken write SetToken;
  end;

implementation

uses
  TBGPrevisaoTempo.Model.Data, System.SysUtils;

{ TViewPrincipal }

function TPrevisaoTempo.ConsultWeather: TPrevisaoTempo;
begin
  if not Assigned(FEntidade) then
    FEntidade := TPrevisaoTempoModel.Create;

  TModelData
    .New
    .Entidade(FEntidade)
    .CodeCity(FCodeCity)
    .Token(FToken)
    .ConsultarClima;
  Result := Self;
end;

constructor TPrevisaoTempo.Create;
begin

end;

destructor TPrevisaoTempo.Destroy;
begin
  FreeAndNil(FEntidade);
  inherited;
end;

function TPrevisaoTempo.FindCityID(City, State: String): String;
begin
  Result := TModelData
            .New
            .Token(FToken)
            .FindCityID(City, State);
end;

function TPrevisaoTempo.Return: TPrevisaoTempoModel;
begin
  Result := FEntidade;
end;

procedure TPrevisaoTempo.SetCodeCity(const Value: String);
begin
  FCodeCity := Value;
end;

procedure TPrevisaoTempo.SetToken(const Value: String);
begin
  FToken := Value;
end;

end.
