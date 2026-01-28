## Let-In expression
- let
    name = <expr>
  in
    <expr>
```
escape :: String -> String
escape = 
let escapeChar c = 
    case c of
        '<' -> "&lt;"
        '>' -> "&rt;"
        '&' -> "&amp;"
        '"' -> "&quot;"
        '\' -> "&#39;"
        _   -> [c]
    in
        concat . map escapeChar
```

## Linked List
- lists are denoted with [<typename>]
    - [Int]
    - [Char
- prepending an element to list is done with :
    - 1 : 2 : 3 : []
- Strings are [Char]
- map function
    - map :: (a -> b) -> [a] -> [b]
    - is a function that applys to every element of a list
    - function converts type a to b
    - will return a list of type [b] given a list of type [a]
    - map not [True, False, True] == [False, True, False]
    - map escapeChar ['<', 'h', '1', >'] == ["&lt", "h", "1", "&gt"]
        - here map takes our escapeChar mapping function and applies it to every element

## ghci
- REPL interpreter
- use :{ :} for multi line code in the interpreter
- :load filename to load a file into the interpreter
- import Data.bits to import a lib module
- :type type-name to get the type
