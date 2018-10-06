module Ball where

import Graphics.Gloss

-- | Coordenada do centro da bola.
type Position = (Float, Float)
-- Propriedades da bola
-- | Raio da bola.
ballSize :: Float
ballSize = 5
-- | Cor da bola.
ballColor :: Color
ballColor = red

ball :: Position -> Picture
ball (x, y) = translate x y
            $ color red
            $ circleSolid 10

moveBall :: Float -> Position -> Position -> Position
moveBall segundos (x, y) (vx, vy) = (x', y')
  where
    x'= x + (vx * segundos)
    y'= y + (vy * segundos)
