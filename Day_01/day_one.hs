maxInt :: Int
maxInt = maxBound :: Int

minInt :: Int
minInt = minBound :: Int

--Types
bigFloot :: Double
bigFloot = 3.9999999999 + 0.00000000005

always5 :: Int
always5 = 5

-- Math Function
sumofNums :: Integer
sumofNums = sum [1 .. 10]

printAlphabets :: [Char]
printAlphabets = ['a' .. 'z']

didDivide :: Integer
didDivide = 10 `div` 4

inRange :: Integer -> Integer -> Integer -> Bool
inRange min max x = x >= min && x <= max

-- Recursion
fac :: (Ord p, Num p) => p -> p
fac n
  | n <= 1 = 1
  | otherwise = n * fac (n -1)

main :: IO ()
main = do
  let var1 = 2
  let var2 = 3
  putStrLn "The addition of two number is:"
  print (var1 + var2)

printOneToTen :: IO ()
printOneToTen = do
  print [1 .. 100]

checkEvanOrOdd :: IO ()
checkEvanOrOdd = do
  let var = 24
  if even var -- `rem` 2 == 0
    then putStrLn "Number is Even"
    else putStrLn "Number is Odd"

nestedList :: IO ()
nestedList = do
  let var = 20
  if var == 0
    then putStrLn "0"
    else
      if even var -- `rem` 2 == 0
        then putStrLn "EVEN"
        else putStrLn "Odd"

-- Exercises

area :: Fractional a => a -> a
area x = 3.13 * (x * x)

doubleMe :: Num a => a -> a
doubleMe x = x * 2

addMe :: Num a => a -> a -> a
addMe a b = a + b

myGcd :: Num a => (a, a) -> a
myGcd (a, b) = a + b

computerAddition :: IO ()
computerAddition = do
  a <- readLn
  b <- readLn
  print $ myGcd (a, b)
