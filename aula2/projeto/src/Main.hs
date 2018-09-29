module Main where

main :: IO ()
main = do
  putStrLn "hello world"

l = [5, 9, 8, 7, 6, 4, 3, 2, 1, 0]

myLength :: [a] -> Int
myLength [] = 0
myLength xs = sum [1 | _ <- xs]

divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

primo :: Int -> Bool
primo n = divisores n == [1, n]

primos :: Int -> [Int]
primos n = [x | x <- [1..n], primo x]

todosPrimos :: [Int]
todosPrimos = [x | x <- [1..], primo x]

primos2 :: Int -> [Int]
primos2 n = x1 ++ x2
  where
    x1 = [x | k <- [1..n], let x = 6 * k - 1, x <= n]
    x2 = [y | k <- [1..n], let y = 6 * k + 1, y <= n]

fibs :: [Integer]
fibs = 1:(zipWith (+) fibs (0:fibs))

fatorial :: Integer -> Integer
fatorial n = fatorial' n 1
  where
    fatorial' 0 r = r
    fatorial' n r = fatorial' (n - 1) (r * n)

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort menores ++ [x] ++ qsort maiores
  where
    menores = [a | a <- xs, a <= x]
    maiores = [a | a <- xs, a >  x]

dobra :: Num a => a -> a
dobra x = 2 * x

somaUm :: Num a => a -> a
somaUm x = x + 1

d = map (somaUm . dobra) [1..10]
--------------------------------------------------------------------------------

data Ponto = Ponto Double Double deriving(Show)
data Forma = Circunferencia Ponto Double | Retangulo Ponto Double Double

area :: Forma -> Double
area (Circunferencia _ r) = pi * r^2
area (Retangulo _ l a)    = l * a

data Contato = Contato { nome :: String, telefone :: String } deriving(Show)
formataContato :: Contato -> String
formataContato c = (nome c) ++ "-" ++ (telefone c)

atualizaContato :: Contato -> String -> Contato
atualizaContato c t = c {telefone = t}

contato = Contato "Maria" "9999-9999"

safeDiv :: Int -> Int -> Maybe Int
safeDiv _ 0 = Nothing
safeDiv m n = Just (div m n)
