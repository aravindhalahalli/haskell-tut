module Main where

import qualified Data.IntMap as M

-- errorsPerLine :: M.IntMap a
errorsPerLine :: M.IntMap [Char]
errorsPerLine = M.fromList [(472,"chrsih"), (567,"deepak")]

main = do
  putStrLn "Who are you ? "
  number <- getLine 
  case M.lookup (read number) errorsPerLine of
    Nothing -> putStrLn " I don't Know"
    Just n -> print n

-- mysum :: Nu

class Numberish a where
    fromNumber :: Integer -> a
    toNumber :: a -> Integer
    sumNumberish :: a -> a -> a
    minNumberish :: (a,a) -> a

-- pretend newtype is data for now
newtype Age =
    Age Integer
    deriving (Eq, Show)

instance Numberish Age where
    fromNumber n = Age n
    toNumber (Age n) = n
    sumNumberish (Age n) (Age n1) = Age (n+n1)
    minNumberish (Age n, Age n1) = if n < n1 then Age n else Age n1
newtype Year =
    Year Integer
    deriving (Eq, Show)

{-instance Numberish Year where
    fromNumber n = Year n
    toNumber (Year n) = n
    sumNumberish (Year n) (Year n1) = Year (n+n1)
-}
