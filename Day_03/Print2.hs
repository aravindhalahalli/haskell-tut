module Day_03.Print2 where

main :: IO ()
main = do
  putStrLn "Count to four for me:)"
  putStr "one, two"
  putStr ", three, and"
  putStrLn " four !"

-- example if we chnage it to putStrLn to putStr and voice-versa

mainRevers :: IO ()
mainRevers = do
  putStr "Count to four for me:)"
  putStrLn "one, two"
  putStrLn ", three, and"
  putStr " four !"