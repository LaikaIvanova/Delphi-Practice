unit MyExamUnit;

interface

type
  // Declare the ICalculator interface with a GUID and one method.
  ICalculator = interface
    ['{A1C55D1D-1234-4567-8901-ABCDEF123456}'] // This GUID uniquely identifies the interface.
    function Add(a, b: Integer): Integer;       // Method that takes two integers and returns their sum.
  end;

  // Declare TSimpleCalculator class that implements ICalculator.
  // TInterfacedObject provides a default implementation for IInterface.
  TSimpleCalculator = class(TInterfacedObject, ICalculator)
  public
    function Add(a, b: Integer): Integer; // Implementation of ICalculator.Add.
  end;

implementation

// Implement the Add method of TSimpleCalculator.
function TSimpleCalculator.Add(a, b: Integer): Integer;
begin
  Result := a + b; // Simply returns the sum of a and b.
end;

end.