module Window where

import Graphics.Gloss

-- | Largura da janela.
width :: Int
width = 800
-- | Altura da janela.
height :: Int
height = 600
-- | Posição da janela.
offset :: Int
offset = 100
-- | Cor de fundo.
background :: Color
background = white
-- | Janela do jogo.
window :: Display
window = InWindow "Arkanoid" (width, height) (offset, offset)

-- | Para uso nas funções de colisão.
-- Esse valor é o extremo da tela
halfWidth :: Float
halfWidth = fromIntegral width / 2
halfHeight :: Float
halfHeight = fromIntegral height / 2

-- | Cor da borda.
wallColor :: Color
wallColor = green
-- | Borda de cima.
topWall :: Picture
topWall = translate 0 halfHeight
        $ color wallColor
        $ rectangleSolid (fromIntegral width) 10

leftWall :: Picture
leftWall = translate (-halfWidth) 0
        $ color wallColor
        $ rectangleSolid 10 (fromIntegral height)
rightWall :: Picture
rightWall = translate halfWidth 0
        $ color wallColor
        $ rectangleSolid 10 (fromIntegral height)


-- | Imagem das bordas.
walls :: Picture
walls = pictures [leftWall, rightWall, topWall]


renderTxt :: Color -> String -> Picture
renderTxt c s = translate (-150) 150
              $ color c
              $ scale 0.3 0.3
              $ text s

-- | Mensagem atual a ser mostrada.
curMsg :: Int -> Bool -> Picture
curMsg  0   paused = pauseMsg paused
curMsg (-1) paused = lostMsg
curMsg  _   paused = winMsg

winMsg    = renderTxt green "You won! (r = new game)"
lostMsg   = renderTxt red   "Git gud! (r = new game)"
pauseMsg True  = renderTxt blue "Press p to play!"
pauseMsg False = renderTxt blue ""
