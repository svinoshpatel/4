unit sichu;

interface

uses Points, SysUtils;

type
  Sich = class
  private
    Center: Point;
    Rad: Real;
  public
    constructor Create(x, y, z, r: Real);
    procedure SetSich(x, y, z, r: Real);
    procedure SetRad(r: Real);
    function GetPoint: String;
    function GetRad: Real;
  end;

implementation

constructor Sich.Create(x, y, z, r: Real);
begin
  Center := Point.Create(x, y, z);
  SetRad(r);
end;

procedure Sich.SetSich(x, y, z, r: Real);
begin
  Center.SetPoint(x, y, z);
  SetRad(r);
end;

procedure Sich.SetRad(r: Real);
begin
  if r >= 0 then Rad := r else Rad := 0;
end;

function Sich.GetPoint: String;
begin
  Result := Center.GetPoint + ', Rad = ' + FloatToStr(Rad);
end;

function Sich.GetRad: Real;
begin
  Result := Rad;
end;

end.
