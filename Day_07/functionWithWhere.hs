module FunctionWithWhere where

printInc :: (Show a, Num a) => a -> IO ()
printInc n = print plusTwo
  where
    plusTwo = n + 2

printIncWIthLet :: (Show a, Num a) => a -> IO ()
printIncWIthLet n =
  let plusTwo = n + 2
   in print plusTwo


-- Exercises: A Head Code

-- Now for some exercises. First, determine in your head what the
-- following expressions will return, then validate in the REPL:

-- 1. let x = 5 in x
-- 2. let x = 5 in x * x
-- 3. let x = 5; y = 6 in x * y
-- 4. let x = 3; y = 1000 in x + 3

-- FunctionWithWhere> let x = 5 in x
-- 5
-- *FunctionWithWhere> let x = 5 in x * x
-- 25
-- *FunctionWithWhere> let x = 5; y = 6 in x * y
-- 30
-- *FunctionWithWhere> let x = 5; y = 6 in x + y
-- 11

