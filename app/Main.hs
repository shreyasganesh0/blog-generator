module Main where

main :: IO ()

body_ content = "<body>" <> content <> "</body>"

html_ content = "<html>"<> content <> "</html>"

title_ content = "<title>" <> content <> "</title>"

head_ content = "<head>" <> content <> "</head>"

makeHtml title body = html_ (head_ (title_ title) <> body_ body)

myhtml = makeHtml"My page title" "My page content"

main = putStrLn myhtml
