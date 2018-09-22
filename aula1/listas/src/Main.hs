module Main where

lista = [1..10]

index t x = head (drop x t)
fatorial x = product [1..x]

tk n _ | n <= 0 = []
tk _ []  = []
tk n (x:xs) = x : tk (n - 1) xs

main :: IO ()
main = do
  putStrLn "hello world"
