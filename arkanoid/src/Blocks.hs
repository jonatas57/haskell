module Blocks where

import Graphics.Gloss
import Ball

-- Propriedades dos blocos
-- | Blocos por fileira
blocksPerRow :: Int
blocksPerRow = 15
-- | Tamanho dos blocos.
blockSize :: (Float, Float)
blockSize = (20, 10)

bHalfWidth :: Float
bHalfWidth  = (1 + fst blockSize) / 2

bHalfHeight :: Float
bHalfHeight = (1 + snd blockSize) / 2

-- | Informação dos blocos.
data BlockInfo = Block
{ blockPos :: Position -- ^ (x, y) coordenada do bloco.
, blockCol :: Color -- ^ cor do bloco.
}
-- | Lista dos blocos atuais.
type Blocks = [BlockInfo]

hasBlocks :: Blocks -> Bool
hasBlocks blocks | length blocks == 0 = False
                 | otherwise          = True

drawBlocks :: Blocks -> Picture
drawBlocks bs = pictures $ undefined
  where
    drawBlock (Block (x, y) col) = translate x y
                                 $ color col
                                 $ block
    block                        = rectangleSolid w h
    (w, h)                       = blockSize

genBlock :: Int -> BlockInfo
genBlock n = Block { blockPos = pos, blockCol = orange }
  where
    pos = (fromIntegral bx, fromIntegral by)
    bx  =
    by  =
    (y, x) = n divMod blocksPerRow
