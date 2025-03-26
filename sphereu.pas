unit sphereu;

interface

uses SichU;

type
  Sphere = class
  private
    GolovSich: Sich;
  public
    constructor Create(x, y, z, r: Real);
    destructor Del;
    procedure SetSphere(x, y, z, r: Real);
    function Volume: Real;
    function GetPoint: String;
  end;

implementation

constructor Sphere.Create(x, y, z, r: Real);
begin
  GolovSich := Sich.Create(x, y, z, r);
  writeln('Sphere created');
end;

destructor Sphere.Del;
begin
  GolovSich.Free;
  writeln('Sphere destoyed');
end;

procedure Sphere.SetSphere(x, y, z, r: Real);
begin
  GolovSich.SetSich(x, y, z, r);
end;

function Sphere.GetPoint: String;
begin
  Result := GolovSich.GetPoint;
end;

function Sphere.Volume: Real;
begin
  Result := (4.0 / 3.0) * Pi * GolovSich.GetRad * GolovSich.GetRad * GolovSich.GetRad;
end;

end.
