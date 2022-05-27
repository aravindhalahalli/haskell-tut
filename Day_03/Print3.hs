module Day_03.Print3 where

myGreetings :: String
myGreetings = "Hello, Haskell Dev's," ++ " " ++ "I'm Learning Haskell :)"

myFirstName :: String
myFirstName = "Aravind"

myLastName :: String
myLastName = "Kumar"

main :: IO ()
main = do
  putStrLn myGreetings
  putStrLn secondGreetings
  where
    secondGreetings = concat [myFirstName, " ", myLastName]