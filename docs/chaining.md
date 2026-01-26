# Chaining
- '.' is the compose operator
    - (.) :: (b -> c) -> (a -> b) -> a -> c
    (.) f g x = f (g x)
    - takes 3 args passes arg to the second function g and the
    result of g x is passed to f
    - g takes type a and returns type b and f takes typ b and returns type c
- variables that start with lowercase letters are type variables
    - a type variable can be any type
    - this is called parametric polymorphism (generics)
    - types should match in signature
    ```
    id :: a -> a
    id x = x
    ```
    - input and output for id should be the same type (any type)
- the . can be used to take 2 functions as an arg and returns a 3rd function
    ```
    p_ :: String -> String
    p_ = el "p"

    can be converted to
    p_ :: String -> Structure
    p_ = Structure . el "p"
    ```
    - function p_ takes a String and wrap it in Structure
    the types are:
    ```
    Structure :: String -> Structure
    el "p" :: String -> String
    (.) :: (b -> c) -> (a -> b) -> (a -> c)
    Structure . el "p" :: String -> Structure
    ```
    - the outer most function is .
    (.) :: (b -> c) -> (a -> b) -> (a -> c)
    - match arguments the two arguments are
        - Structure :: String -> Structure
        - el "p" :: String -> String
    - these match so a is String b is String and c is Structure

## Type
- normal types are similar to newtype but without using constructors
    - type Title = String
    - is like aliasing a basic type

