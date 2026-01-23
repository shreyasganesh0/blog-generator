module Main where

main :: IO ()

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"

title_ :: String -> String
title_ = el "title"

head_ :: String -> String
head_ = el "head"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

makeHtml :: String -> String -> String
makeHtml = \title -> \body -> html_ (head_ (title_ title)) <> body_ body

myhtml = makeHtml "My page title" (h1_ "My Heading" <> p_ "My page content")

main = putStrLn myhtml
