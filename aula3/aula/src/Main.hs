module Main where

doisChar :: IO String
doisChar = do
  c1 <- getChar
  c2 <- getChar
  return [c1, c2]

main :: IO ()
main = do
  c = " "
  putStrLn c
