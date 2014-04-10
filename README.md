SugarExtensions
===============

Some extenstions to RemObjects Sugar library to aid in cross-platform programming.

## Naming (Cirrus Library) ##

The Naming library is a Cirrus library that provides aspects to rename methods based on the platform being compiled for.
This allows, for instance, a method called `void PrintUsage()` to be exported as `void printUsage()` (notice the case of 
'p') in a Java jar.

NOTE:  When you reference the Naming Cirrus library, you also need to reference the Sugar library for a project.

### Example ###

``` delphi
[Aspect: Naming.JavaName('printUsage')]
method PrintUsage;
```
