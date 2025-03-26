unit points;

interface

uses SysUtils;

type
  Point = class
  private
    x, y, z: Real;
  public
    constructor Create(x1, y1, z1: Real);
    procedure SetPoint(x1, y1, z1: Real);
    function GetPoint: String;
  end;

implementation

constructor Point.Create(x1, y1, z1: Real);
begin
  SetPoint(x1, y1, z1);
end;

procedure Point.SetPoint(x1, y1, z1: Real);
begin
  x := x1;
  y := y1;
  z := z1;
end;

function Point.GetPoint: String;
begin
  Result := '(' + FloatToStr(x) + '; ' + FloatToStr(y) + '; ' + FloatToStr(z) + ')';
end;

end.
