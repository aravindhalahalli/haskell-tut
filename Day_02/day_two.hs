import System.Win32 (COORD (x))

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

-- Desurgaring let to lambda

printInc2' :: (Show a, Num a) => a -> IO ()
printInc2' n =
  (\plusTwo -> print plusTwo) (n + 2)

-- Exercise
-- 1
checkIs5 :: (Eq a, Num a) => a -> IO ()
checkIs5 x = do
  if x == 5
    then putStrLn "Its is 5"
    else putStrLn "Its not 5"

-- 2
multipleNum :: Num a => a -> a
multipleNum x = x * x

-- 3
multipleDiffNum :: Num a => a -> a -> a
multipleDiffNum x y = x * y

-- 4
multipleWithStaticNum :: Num a => a -> p -> a
multipleWithStaticNum x y = x + 3
