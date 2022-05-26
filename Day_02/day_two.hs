-- Arithmetic function in Haskell

-- common operators are  + , - , *, / ,div, mod, quot, rem
-- 1+1, 1-1, 1*1, 1/1, div 1 1[Integral division], mod 1 1, quot 1 1, rem 1 1

-- Writing -->-100 is fine , where it throws an error for the case like,
-- Prelude> 1000 + -9000 for this case will be wrong to correct way is,
-- Prelude> 1000 + (-9000) or 1000 + (negate 100) or 1000 + 1000 for this case will be wrong to correct way is,

-- Parenthesizing infix functions
-- Let and Where

-- Explained way of using cabal version two seperate the file

printInc :: (Show a, Num a) => a -> IO ()
printInc n = print plusTwo
  where
    plusTwo = n + 2

printInc2 :: (Show a, Num a) => a -> IO ()
printInc2 n =
  let plusTwo = n + 2
   in print plusTwo
