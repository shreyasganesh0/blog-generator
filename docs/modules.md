# Modules
- each file is a module
```
module <module-name>
    ( <export-list>
    )
    where
```
- module name should have the same name as the source file with a capital letter
- export list can be omitted if you want to export everything defined in the module
- dont export 
    - constructors only types if you dont want use to create their own value of that type
        - to export a constructor Html(Html) or Html(...)
    - internal functions used by the library
- 

