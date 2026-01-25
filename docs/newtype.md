# NewType
- newtype can be used to group certain values of a type
    - like measurements of wts can be one type and measurements of distance
    can be another even tho they use the same Int
    - newtype <name> = <constructor> <exisiting-type>
    ```
    newtype Html = Html String
    ```
    - to specify a certian category of strings as html
    - the first Html is in the types space to the right of ::
    - the second html is in the expressions space
    - right side of the newtype declation is the shape of the value
        - here it will have Html and then an expr of type String
            - Html "hello"
        - a constructor is a function that takes the argument and returns
        something of our new type
            - Html :: String -> Html
- using newtypes
    - use pattern matching to use newtype
     ```
     case <expr> of 
        <pattern> -> <expr>
        ..
        <pattern> -> <expr>
    ```
    - expression is the thing we want to unpack
    - pattern is a shape of that expr
    ```
    getStructureString :: Structure -> String
    getStructureString struct =
        case struct of
            Structure str -> str
    ```
    - here we define a name getStructureString
    that is a function that take a Structure and returns a String
    - we extract the String from the Structure using the case pattern matching
        - if struct mathces Structure then we get its string value from str
    ```
    getStructureString :: Structure -> String
    getStructureString (Structure str) = str
    ```
    - we can also add the pattern directly in the arguments
- newtype is purely aesthetic and is a zero cost abstraction during runtime

