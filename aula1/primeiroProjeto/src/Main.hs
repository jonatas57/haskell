module Main where

fatorial n = product [1..n]
soma n = sum [1..n]
dobra x = 2 * x
quadruplica x = dobra (dobra x)

raiz2Grau :: (Ord a, Floating a) => a -> a -> a -> (a, a)
raiz2Grau a b c = if (delta < 0) then error "Raizes negativas." else (x1, x2)
  where
    x1 = ((-b) + sqDelta) / (2 * a)
    x2 = ((-b) - sqDelta) / (2 * a)
    delta = b ^ 2 - 4 * a * c
    sqDelta = sqrt delta

main :: IO ()
main = do
  putStrLn "hello world"
