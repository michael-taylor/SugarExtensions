namespace NamingTest.Java;

interface

uses
  java.util;

type
  TestClass = public class
  public
    [Aspect: Naming.JavaName("printUsage")]
    method PrintUsage;
  end;
  
implementation

method TestClass.PrintUsage;
begin

end;

end.
