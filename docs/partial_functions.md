# Partial Functions
- functions that dont handle error cases or that keep loop forever
are called partial functions
- we should avoid using and writing partial functions
- methods to prevent partial functions
    - cover all inputs
        - do this by narrowing the types of values that are passed and returned by the funcitons
        - the type checking can prevent invalid entries even at compile time (Naturals instead of Int)
        - NonEmpty function can prevent value from being nil
            - head :: [a] -> a
            - this function takes a list of a and returns a but does not cover the empty list input
            - we can do NonEmpty a -> a this prevents a null list
