# Data
- can be used to create new types by grouping types together
- data <type-name> <type-arg>
    = <constructor1> <types>
      <constructor2> <types>
      ...
```
data Bool
    = True
    | False
```
- here we have a new type Bool with constructor alternatives True or False
```
data Person
    = Person String Int
```
- type Person where values of Person are Person <some-string> <some-int>
- this used to create structs (each field differentiated by position)
- can also have syntactic sugar called Records
```
data Person
    = Person
    { name :: String
    , age :: Int
    }
```
- this allows for named fields that can be inited like
Person {name = "Hi", age = 32}
- it also generates 2 funcs
name :: Person -> String
age :: Person -> Int
- can also be used to create Tuples
```
data Tuple a b
    = Tuple a b`
```
- can add any value we want in place of a and b
```
Tuple "Hi" "Bye"
Tuple 1 "Hello"
```
- also has special syntax
```
("Hi", "Bye")
(1, "Hello")
```
- the final way to use data is the Either
```
data Either a b
    = Left a
    | Right b
```
- similar to tuples but has 2 constructors instead of one
- so we can choose which side we want
```
Left "Hello"
Right 1
```
- useful for modelling errors

