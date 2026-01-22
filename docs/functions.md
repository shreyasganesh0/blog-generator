# Functions

## Defintion
```
<name> <arg1> <arg2> ... <argN> = <expression>
```
- to define a function we need to define a name and N args after it
- argument names will be available in scope on the right side of the =

```
wrapHtml content = "<html><body>" content "</body><html>"
```
- an example of a function that has args content and outputs a stirng wrapped in html and body tags
```
myhtml = wrapHtml "Hello World!"
```
- this defintion calls our function to wrap Hello World in the html tags
- dont need to pass parens for the args Hello World

```
main = putStrLn (wrapHtml "Hello World!")
```
- for this we need to pass parens
    - this is because it will assume that we are passing 2 args to putStrLn
    which it doesnt expect and will throw an error

