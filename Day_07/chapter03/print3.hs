module Print3 where

myGreeting :: String
myGreeting = "Hello" ++ " World !!"

hello :: String
hello = "Hello"

world :: String
world = "World2 !!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreetings
  where
    secondGreetings = concat [hello, " ", world]
