unit TBGPrevisaoTempo.Model.Data;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, TBGPrevisaoTempo.Model.Entidade,
  TBGPrevisaoTempo.View.Interfaces;

type
  TModelData = class(TDataModule, iPrevisaoData)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
  private
    { Private declarations }
    FEntidade : TPrevisaoTempoModel;
    FCodeCity : String;
    FToken : String;
  public
    { Public declarations }
    class function New : iPrevisaoData;
    function ConsultarClima : iPrevisaoData;
    function Entidade(Value : TPrevisaoTempoModel) : iPrevisaoData;
    function CodeCity(Value : String) : iPrevisaoData;
    function Token (Value : String) : iPrevisaoData;
    function FindCityID(City, State : String) : String;
  end;

var
  ModelData: TModelData;

implementation

uses
  System.JSON, System.Types, TBGPrevisaoTempo.Principal, Windows;

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TDataModule1 }

function TModelData.CodeCity(Value: String): iPrevisaoData;
begin
  Result := Self;
  FCodeCity := Value;
end;

function TModelData.ConsultarClima : iPrevisaoData;
var
  obj, data: TJSONObject;
begin
  Result := Self;
  RESTClient1.BaseURL := 'http://apiadvisor.climatempo.com.br/api/v1/weather/locale/'+FCodeCity+'/current?token=' + FToken;
  RESTRequest1.Execute;
  obj := RESTResponse1.JSONValue as TJSONObject;
  data := obj.Values['data'] as TJSONObject;
  FEntidade.City := obj.Values['name'].Value;
  FEntidade.State := obj.Values['state'].Value;
  FEntidade.Country := obj.Values['country'].Value;
  FEntidade.Temperature := data.Values['temperature'].Value.ToInteger;
  FEntidade.wind_direction := data.Values['wind_direction'].Value;
  FEntidade.wind_velocity := data.Values['wind_velocity'].Value.ToInteger;
  FEntidade.humidity := data.Values['humidity'].Value.ToInteger;
  FEntidade.condition := data.Values['condition'].Value;
  FEntidade.pressure := data.Values['pressure'].Value.ToInteger;
  FEntidade.pressure := data.Values['sensation'].Value.ToInteger;
  FEntidade.date := data.Values['date'].Value;
  FEntidade.Seticon('RCL_' + Trim(data.Values['icon'].Value));
end;

function TModelData.Entidade(Value: TPrevisaoTempoModel): iPrevisaoData;
begin
  Result := Self;
  FEntidade := Value;
end;

function TModelData.FindCityID(City, State : String) : String;
var
  obj : TJSONArray;
  a : TJSONValue;
  data : TJSONObject;
  I: Integer;
  sd : String;
begin
  RESTClient1.BaseURL := 'http://apiadvisor.climatempo.com.br/api/v1/locale/city';
  RESTClient1.AddParameter('name', City);
  RESTClient1.AddParameter('state', State);
  RESTClient1.AddParameter('token', FToken);
  RESTRequest1.Execute;
  sd := RESTResponse1.Content;
  obj := RESTResponse1.JSONValue as TJSONArray;
  for a in obj do
  begin
    data := a as TJSONObject;
    Result := data.Values['id'].Value;
  end;
end;

class function TModelData.New: iPrevisaoData;
begin
  Result := Self.Create(nil);
end;

function TModelData.Token(Value: String): iPrevisaoData;
begin
  Result := Self;
  FToken := Value;
end;

end.
