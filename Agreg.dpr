program Agreg;

{$APPTYPE CONSOLE}

uses SysUtils, Points, SichU, SphereU, BallU;

var
  P: Point;
  S: Sphere;
  B: Ball;

begin
  P := Point.Create(1, 2, 3);
  WriteLn('Coords Point = ', P.GetPoint);

  S := Sphere.Create(1, 2, 5, 5);
  WriteLn('Coords Center = ', S.GetPoint);
  WriteLn('Volume Sphere = ', S.Volume:10:4);

  B := Ball.Create(1, 2, 5, 5, 2.5);
  Writeln('Ball info = ', B.GetInfo);
  ReadLn;

  writeln;

  B.Del;
  Readln;
end.
