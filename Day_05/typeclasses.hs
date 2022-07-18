class Numberish a where
  fromNumber :: Integer -> a
  toNumber :: a -> Integer

newtype Age
  = Age Integer
  deriving (Eq, Show)

instance Numberish Age where
  fromNumber n = Age n
  toNumber (Age n) = n

newtype Year
  = Year Integer
  deriving (Eq, Show)

instance Numberish Year where
  fromNumber n = Year n
  toNumber (Year n) = n

sumNumberish :: Numberish a => a -> a -> a
sumNumberish a a' = fromNumber summed
  where
    integerOfA = toNumber a
    integerOfAPrime = toNumber a'
    summed = integerOfA + integerOfAPrime

add :: Num a => a -> a -> a
add x y = x + y

addWeird :: (Ord a, Num a) => a -> a -> a
addWeird x y =
  if x > 1
    then x + y
    else x

main :: IO ()
main = do
  putStrLn "Enter your Age to check weather you elgible to VOTE or Not ?"
  x <- readLn
  if x >= 18
    then putStrLn "Congrats !! You are Eligible to vote"
    else putStrLn "Ooops !! You are not Elgible to vote"

factorial :: (Eq p, Num p) => p -> p
factorial n = if n == 0 then 1 else n * factorial (n -1)

mainFacto :: IO ()
mainFacto = do
  putStrLn "Enter an Number to get Factorail of that number ? "
  x <- readLn
  if x == factorial 5
    then putStrLn "You are Right !!!"
    else putStrLn "You are Wrong !!!"

secsToWeeks :: Fractional a => a -> a
secsToWeeks secs =
  let perMinute = 60
      perHour = 60 * perMinute
      perDay = 24 * perHour
      perWeek = 7 * perDay
   in secs / perWeek