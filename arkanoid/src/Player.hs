module Player where

import Graphics.Gloss
import Window

-- Informações do jogador
-- | Cor do jogador.
playerColor :: Color
playerColor = blue
-- | Tamanho do jogador.
playerWidth :: Float
playerWidth = 50
halfPlayerWidth :: Float
halfPlayerWidth = playerWidth / 2
playerHeight :: Float
playerHeight = 10
-- | Posição do jogador no eixo y
playerY :: Float
playerY = -250
-- | Imagem do jogador.
mkPlayer :: Float -> Picture
mkPlayer x = undefined

movePlayer :: Float -> Float -> Float -> Float
movePlayer seconds x v = undefined

-- | Verifica se o jogador atingiu a parede da esquerda.
leftWallCollision :: Float -> Bool
leftWallCollision x | x - halfPlayerWidth <= -halfWidth + 5  = True
| otherwise                              = False
-- | Verifica se o jogador atingiu a parede da direita.
rightWallCollision :: Float -> Bool
rightWallCollision x | undefined
| otherwise                              = False
-- | Verifica se o jogador atingiu a parede.
paddleWallCollision :: Float -> Bool
paddleWallCollision x = undefined
-- | Atualiza posição do jogador.
-- | Atualiza posição do jogador.
movePlayer :: Float -> Float -> Float -> Float
movePlayer seconds x v | condicao1                     = x - 1
| condicao2                     = x + 1
| otherwise                     = undefined
where
deltaX = undefined
