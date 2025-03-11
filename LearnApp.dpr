program LearnApp;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.Generics.Collections,
  MyUnit in 'MyUnit.pas',
  MyExamUnit in 'MyExamUnit.pas';

var
  Calculator: ICalculator;
  SumResult: Integer;

procedure PrintWelcomeMessage;
begin
  WriteLn('Welcome to the Delphi Learning App!');
  WriteLn('');
end;

procedure PrintNumbers;
var
  i: Integer;
  s: string;
begin
  for i := 1 to 10 do
  begin
    WriteLn('Number: ', i);
  end;
end;

function AddNumbers(a, b: Integer): Integer;
begin
  AddNumbers := a + b;
end;

procedure DemonstrateInterface;
var
  MyClass: IMyInterface;
begin
  MyClass := TMyClass.Create;
  Writeln(MyClass.GetMessage);
end;

procedure DemonstrateGenerics;
var
  IntList: TList<Integer>;
  StrList: TList<string>;
  i: Integer;
var
  s: string;
begin
  IntList := TList<Integer>.Create;
  try
    IntList.Add(1);
    IntList.Add(2);
    IntList.Add(3);
    Writeln('Integer List Items:');
    for i in IntList do
      Writeln(i);
  finally
    IntList.Free;
  end;

  StrList := TList<string>.Create;
  try
    StrList.Add('Hello');
    StrList.Add('World');
    for s in StrList do
      Writeln(s);
      Writeln(i);
  finally
    StrList.Free;
  end;
end;

procedure DemonstrateTryCatch;
begin
  try
    WriteLn('Trying to execute some code...');
    raise Exception.Create('An error occurred!');
  except
    on E: Exception do
    begin
      WriteLn('An exception was caught: ', E.Message);
    end;
  end;
end;

// Main Code
begin
  try
    PrintWelcomeMessage;
    DemonstrateInterface;
    TAuto.Create.Drive;
    TAuto.Create.Refuel;
  except
    on E: Exception do
    begin
      Writeln('An unexpected error occurred: ', E.Message);
    end;
  end;
  WriteLn('');
  Writeln('Press ENTER to continue.');
  ReadLn;
  try
    Calculator := TSimpleCalculator.Create;
    SumResult := Calculator.Add(10, 20);
    WriteLn('Sum of 10 and 20 is: ', SumResult);
  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;
  WriteLn('');
  WriteLn('Press ENTER to exit.');
  ReadLn;
end.