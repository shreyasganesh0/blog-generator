# Recursion

- there are no loops in haskell
- implemented via recursion
```
add n m =
    if m /= 0
        then add (increment m) (decrement n)
        else n
```
- tail call optimization makes recursion viable as a loop replacement in haskell
- uses lazy evaluation
    - the arguments are evaluvated only when entering the function
    - in the above example if m = 3 n = 2 the eval would be
    - do increment 3 and decrement 2
    - then do add 4 1
```
main =
    if const (increment 2) (decrement 3) == 3
        then putStrLn 2
        else putStrLn 3
```
- here since const only cares about the first arg and ignores the second
we do not need to evaluvate decrement 3 and only eval increment 2
```
main =
    let 
        five = (decrement 3) (increment 2)
    in
        putStrLn "hello"
```
- here we do not need the value from the decrement or increment functions
so they are never evaluated
- the : cons operator adds to the list (prepend)
```
replicate n x =
    if n >= 0
        then
            []
        else
            x : replicate (n - 1) x
```
- this function uses replication to create a list of n xs
