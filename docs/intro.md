# Haskell

## Definitions
```
<name> = <expression>
```
- this is the most common defintion
    - all names must start with a small letter
    - cant have two of the same name in a file
- the name "main" is the start of a program
    - a file with the name "main" can be considered and executable
```
main = putStrLn "Hello World"
```
- bound the name main to the expression putStrLn "Hello World"
- call the function putStrLn with input "Hello World"
    - dont need parens to pass args in haskell

## Running
- use ghc to compile the program 
```
ghc myfile.hs
```
    - generates a .o a .hi and a native executable
- we can also use runghc to interpret the file
```
runghc myfile.hs
```

## Concatatination 
- <> operation to concat strings
    - similar to other functional languages
    - myfunc name = "hello" <> name <> "how are you"
