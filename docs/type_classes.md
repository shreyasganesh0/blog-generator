# Type Classes
- the show function can be used to automatically generate function that
can generate a String from the type
- show :: Show a => a -> String
- between :: and => is the type class constraint
    - it means that a is restricted to all types of class Show
- type classes are used to decalre a common interface for haskell types
    - haskell's defined Show type class like so
    ```
    class Show a where
        show :: a -> String
    ```
    - show is an overloaded function that works for any type of class Show
- defining an instance of a type classes
```
instance Show Bool where
    show x = 
        case x of
            True -> "True"
            False -> "False"
```
- defining a instance of a type class means providing an implementation of the
interface for that specific type

## Custom data types
- if we have a data type where all instances have an implementation for the type class
we can automatically derive that implementation for that data type for that type class
```
data Structure =
    Heading Natural String
    | Paragraph String
    | UnorderedList [String]
    | OrderedList [String]
    | CodeBlock [String]
    deriving Show
```
- Show is an example of type class that can be derived for this data type
since all internal data types have implementation for the type class
- we can use the show function with any type that implements the Show
type class like so
```
print :: Show a => a -> IO()
print = putStrLn . show
```
- this converts the type to String via show and then uses the String
with putStrLn to print it onto the screen

## Laws
- rules that are associated with type classes
- provides predicatable behaviour across implementations of instances
- type classes are just interfaces with laws
- used to create abstractions where underlying behaviour can be ignored
    - basically making APIs
