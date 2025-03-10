unit MyUnit;

interface

uses
  System.Generics.Collections;

type
  IMyInterface = interface
    ['{8A6D8E2B-4C3D-4A5E-9B6A-2A6D8E2B4C3D}']
    function GetMessage: string;
  end;

  TMyClass = class(TInterfacedObject, IMyInterface)
  public
    function GetMessage: string;
  end;

  TFahrzeug = class(TInterfacedObject)
  private
    fName: string;
  public
    property Name: string read fName;
  end;

  IDriveable = interface
    ['{F0662D67-688F-4BEF-BF96-6B6A1F945243}']
    procedure Drive;
    procedure Refuel;
  end;

  TAuto = class(TFahrzeug, IDriveable)
  public
    procedure Drive;
    procedure Refuel;
    constructor Create;
    destructor Destroy; override;
  end;

  TManager<T: class> = class(TList<T>)
  public
    procedure AddItem(Item: T);
    procedure PrintItems;
  end;

implementation

function TMyClass.GetMessage: string;
begin
  Result := 'Preparing Tasks:';
end;

constructor TAuto.Create;
begin
  inherited;
end;

destructor TAuto.Destroy;
begin
  inherited;
end;

procedure TAuto.Drive;
begin
  Writeln('- Driving...');
end;

procedure TAuto.Refuel;
begin
  Writeln('- Refueling...');
end;

{ TManager<T> }

procedure TManager<T>.AddItem(Item: T);
begin
  Self.Add(Item);
end;

procedure TManager<T>.PrintItems;
var
  Item: T;
begin
  for Item in Self do
  begin
    Writeln(Item.ToString);
  end;
end;

end.