# Types

## Type signature
- statically typed language (every expr has a type)
    - types are checked for validity with each other before run time
- has type inference (can figure out type from context)
- :: used to specify types
    - name :: type
    - usually done right above the definiton of the name
- types examples
    - Int
    - String
    - Bool
    - () (type of an expression (), called a unit)
    - a -> b (types of a function input -> output type)
    - IO() (IO subroutine that returns ())
- all functions in haskell take only 1 argument
    - for multiple arguments its like passing a function that returns one arg
    into another function that returns the second arg
    ```
    makeHtml :: String -> String -> String
    makeHtml title body = html_ (head_ (title_ title) <> body_ body)
    ```
    - here instead of taking 2 string args what its actually doing is
    taking a function
    - makeHtml title is a function that takes one String arg (body)
    and returns a function that takes one string arg (title) and returns
    a string
    - this ia called partial application
- functions are first class objects so we dont need to add the value to the left of the '=' 
    ```
    el :: String -> String -> String
    el tag content =
      "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

    html_ :: String -> String
    html_ = el "html"
    ```
    - here wherever html_ is seen it copy pastes el "html" in its place
        - this is called referential transparency (the total equivalence on both sides of =)
    - since functions take exactly one argument and are first class we dont need to define names
    for it
        - anonymous/lambda functions are defined in the format \<argument> -> <expression>
        - the \ resembles the greek lambda hence lambda functions
        ```
        three = (\num1 -> \num2 -> num1 + num2) 1 2
        ```
        - the right side of the -> is the body of the function
        - evaluvate the funciton by substituting the arguments in place
            - num1 subs by 1 and num2 by 2 i.e. evals to 3
        ```
        el :: String -> String -> String
        el tag content =
          "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

        Translated to 
        
        el :: String -> (String -> String)
        el = \tag -> \content -> "<" <> tag <> ">" <> content <> "</" <> tag <> ">"
        ```
        - we can also write multi argument with syntactic sugar using
        \<arg1> <arg2> ... <argN> -> <expression>
        ```
        three = \num1 num2 -> num1 + num2
        ```
    

