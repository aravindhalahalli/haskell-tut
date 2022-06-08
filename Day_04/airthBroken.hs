module AirthmeticBroken where

main :: IO()

main = do 
    print $ 1 + 3
    putStrLn "10"
    print (negate 1)
    print ((+) 0 blah)
    where blah = negate 1