
unit ballu;

interface

uses SphereU, SysUtils;

type
  Ball = class
  private
    SphereObj: Sphere;
    Density: Real;
  public
    constructor Create(x, y, z, r, d: Real);
    destructor Del;
    function GetMass: Real;
    procedure SetDensity(d: Real);
    function GetInfo: String;
  end;

implementation

constructor Ball.Create(x, y, z, r, d: Real);
begin
  SphereObj := Sphere.Create(x, y, z, r);
  SetDensity(d);
  writeln('ball created');
end;

destructor Ball.Del;
begin
  SphereObj.Del;
  writeln('ball destroyed');
end;

procedure Ball.SetDensity(d: Real);
begin
  if d >= 0 then Density := d else Density := 0;
end;

function Ball.GetMass: Real;
begin
  Result := SphereObj.Volume * Density;
end;

function Ball.GetInfo: String;
begin
  Result := SphereObj.GetPoint + ', Volume = ' + FloatToStr(SphereObj.Volume) + ', Mass = ' + FloatToStr(GetMass);
end;

end.
