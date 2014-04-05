namespace Naming;

interface

type
  [RemObjects.Elements.Cirrus.AspectPlatform(RemObjects.Elements.Cirrus.Platform.Cooper)]
  [AttributeUsage(AttributeTargets.Method)]
  JavaName = public class(Attribute, RemObjects.Elements.Cirrus.IMethodImplementationDecorator)
  private
    platformName: Sugar.String;

  public
    method HandleImplementation(services: RemObjects.Elements.Cirrus.IServices; aMethod: RemObjects.Elements.Cirrus.IMethodDefinition);

    constructor(name: Sugar.String);
  end;

type
  [RemObjects.Elements.Cirrus.AspectPlatform(RemObjects.Elements.Cirrus.Platform.Echoes)]
  [AttributeUsage(AttributeTargets.Method)]
  DotNetName = public class(Attribute, RemObjects.Elements.Cirrus.IMethodImplementationDecorator)
  private
    platformName: Sugar.String;

  public
    method HandleImplementation(services: RemObjects.Elements.Cirrus.IServices; aMethod: RemObjects.Elements.Cirrus.IMethodDefinition);

    constructor(name: Sugar.String);
  end;
  
implementation

constructor JavaName(name: Sugar.String);
begin
  self.platformName := name;
end;

method JavaName.HandleImplementation(services: RemObjects.Elements.Cirrus.IServices; aMethod: RemObjects.Elements.Cirrus.IMethodDefinition);
begin
  if (services.Platform = RemObjects.Elements.Cirrus.Platform.Cooper) then
    begin
      aMethod.Name := platformName;
    end;
end;

constructor DotNetName(name: Sugar.String);
begin
  self.platformName := name;
end;

method DotNetName.HandleImplementation(services: RemObjects.Elements.Cirrus.IServices; aMethod: RemObjects.Elements.Cirrus.IMethodDefinition);
begin
  if (services.Platform = RemObjects.Elements.Cirrus.Platform.Echoes) then
    begin
      aMethod.Name := platformName;
    end;
end;

end.
