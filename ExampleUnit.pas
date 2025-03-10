unit ExampleUnit;

interface

uses System.Generics.Collections;

 type

 TFahrzeug = class(TInterfacedObject)
 private
  fName : string;
 public
  property Name : string read fName;

 end;
 IDriveable = interface
 ['{F0662D67-688F-4BEF-BF96-6B6A1F945243}']
 procedure Drive;

 end;

 TAuto = class(TFahrzeug, IDriveable)
 procedure Drive;
 constructor Create();
 destructor Destroy; override;
 end;

 TManager<T> = class(TList<T>)

 end;



implementation

{ TAuto }

constructor TAuto.Create;
begin

end;

destructor TAuto.Destroy;
begin

  inherited;
end;

procedure TAuto.Drive;
begin

end;

end.
