module Day_03.GlobalLocal where

import GHC.Platform (IntegerLibrary (IntegerGMP))

topLevelFunction :: Integer -> Integer
topLevelFunction x = x + woot + topLevelValue
  where
    woot :: Integer
    woot = 10

topLevelValue :: Integer
topLevelValue = 5