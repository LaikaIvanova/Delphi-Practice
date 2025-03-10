program Example;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  ExampleUnit in 'ExampleUnit.pas';

begin
  try
    { TODO -oUser -cConsole Main : Code hier einf�gen }
    var test := TManager<IDriveable>.Create();
    test.Add(TAuto.Create());
    test.Add(TAuto.Create());
    var lAuto := TAuto.Create() as IDriveable;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
