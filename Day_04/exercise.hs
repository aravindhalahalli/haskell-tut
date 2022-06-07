module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness = do
  if cool
    then putStrLn "Hey its cool"
    else putStrLn "wrong"
  where
    cool = coolness == "downRight"

greetIfCool1 :: String -> IO ()
greetIfCool1 coolness = do
  if cool coolness
    then putStrLn "hEYYYYYYY,WHAT IS WRONG"
    else putStrLn "pssssh wrong"
  where
    cool v = v == "DOWNRIGHT"


