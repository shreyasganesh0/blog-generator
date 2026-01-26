module Main where

main :: IO ()

newtype Html = Html String

newtype Structure = Structure String

type Title = String

myhtml :: Html
myhtml = html_ "My Title" (append_ (h1_ "Heading") (p_ "para") )

html_ :: Title -> Structure -> Html
html_ title (Structure content) = Html (el "html" (head_ (title_ title) <> body_ (content)))


el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

append_ :: Structure -> Structure -> Structure
append_ (Structure first) (Structure second) = Structure (first <> second)

render :: Html -> String
render (Html text) = text

body_ :: String -> String
body_ = el "body"

title_ :: String -> String
title_ = el "title"

head_ :: String -> String
head_ = el "head"

p_ :: String -> Structure 
p_ = Structure . el "p"

h1_ :: String -> Structure
h1_ = Structure . el "h1"

main = putStrLn (render myhtml)
