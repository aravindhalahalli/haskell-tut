module Day_03.PrintBroken where

-- Global declartion
greeting :: String
greeting = "Yaar !!!"

-- Greeting is able to access
printSecond :: IO ()
printSecond = do
  putStrLn greeting

-- Greeting is able to access
main :: IO ()
main = do
  putStrLn greeting
  printSecond