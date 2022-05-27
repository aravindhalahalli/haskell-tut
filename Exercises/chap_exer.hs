module ExercisesChapter3 where
-- 01
drop1 :: Int -> String -> IO ()
drop1 n str = do
  putStrLn (drop n str)

-- 02
scream :: String -> String
scream str = str ++ "!"

fifthElement :: [a] -> a
fifthElement xs = xs !! 4

dropNine :: [a] -> [a]
dropNine xs = drop 9 xs

-- 3
thirdLetter :: String -> Char
thirdLetter xs = xs !! 2

-- 4
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! (x - 1)

-- 5
rvrs :: String -> String
rvrs cia =
  let curry = take 5 cia
      is = take 4 (drop 5 cia)
      awesome = take 7 (drop 9 cia)
   in awesome ++ is ++ curry

main :: IO ()
main = print $ rvrs "Curry is awesome"