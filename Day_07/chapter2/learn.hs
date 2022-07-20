module Learn where

x :: Integer
x = 10 * 5 + y

myResult :: Integer
myResult = x * 5

y :: Integer
y = 10

-- Exercises: Heal the Sick

-- The following code samples are broken and won’t compile. The first
-- two are as you might enter into the REPL; the third is from a source
-- file. Find the mistakes and fix them so that they will.

-- 1. let area x = 3. 14 * (x * x)
-- 2. let double x = b * 2
-- 3. x = 7
-- y = 10
-- f = x + y

-- Answers

area :: Fractional a => a -> a
area x = 3.14 * (x * x)

double :: Num a => a -> a
double me = me * 2

xx = 7
yy = 10
f = xx + yy


-- Airthmetic functions
