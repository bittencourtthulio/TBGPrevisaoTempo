unit TBGPrevisaoTempo.Reg;

interface

uses
  System.Classes;

procedure Register;

implementation

uses
  TBGPrevisaoTempo.Principal;

procedure Register;
begin
     RegisterComponents('TBGUtilitarios', [TPrevisaoTempo]);
end;

end.

