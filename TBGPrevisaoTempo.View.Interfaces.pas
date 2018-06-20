unit TBGPrevisaoTempo.View.Interfaces;

interface

uses
  TBGPrevisaoTempo.Model.Entidade;

type

  iPrevisao = interface
    ['{BEB9F807-7E6A-4692-A1E1-78C7A204D01C}']
    function Consultar : String;
  end;

  iPrevisaoData = interface
    ['{5E13FBC1-B5D0-41E5-8A7C-4581988382D5}']
    function ConsultarClima : iPrevisaoData;
    function Entidade(Value : TPrevisaoTempoModel) : iPrevisaoData;
    function CodeCity(Value : String) : iPrevisaoData;
    function Token (Value : String) : iPrevisaoData;
    function FindCityID(City, State: String) : String;
  end;

implementation

end.
