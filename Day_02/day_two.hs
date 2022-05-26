import System.Win32 (COORD (x, y))

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

-- let x=5; y=6 in x*y can re written as,

multipleDiff :: Integer
multipleDiff = x * y where x = 5; y = 6

-- Exerxise 2.12
-- 1. let x = 3; y = 1000 in x * 3 + y
-- 2. let y = 10; x = 10 * 5 + y in x * 5
-- 3. let x = 7; y = negate x; z = y * 10 in z / x + y

-- Answers
-- 1. (\x y -> x*3+y)3 1000
exerciseOne :: Integer
exerciseOne = x * y where x = 3; y = 1000

-- exercise two
exerciseTwo :: Integer
exerciseTwo = x * 5 where y = 10; x = 10 * 5 + y

-- exercise three
exerciseThree :: Double
exerciseThree = z / x + y where x = 7; y = negate x; z = y * 10