-- Ex 01
size :: Int
size = 12 + 13

square :: Int -> Int
square n = n * n

double :: Int -> Int
double n = 2 * n

example :: Int
example = double (size - square (2 + 2))

-- Ex 02

-- a) concat [[1, 2, 3], [4, 5, 6]]
-- [1,2,3,4,5,6]

-- b) ++ [1, 2, 3] [4, 5, 6]
-- "hello world"

-- c) (++) "hello" " world"
-- error: parse error on input `++'

-- d) ["hello" ++ " world]
-- ["Hello World"]

-- e) 4 !! "hello"
-- <interactive>:36:6: error:
--     * Couldn't match expected type `Int' with actual type `[Char]'
--     * In the second argument of `(!!)', namely `"hello"'
--       In the expression: 4 !! "hello"
--       In an equation for `it': it = 4 !! "hello"
--
-- f ) (!!) "hello" 4
-- 'o'

-- g) take "4 lovely"
-- <interactive>:40:6: error:
-- Couldn't match expected type `Int' with actual type `[Char]'
-- In the first argument of `take', namely `"lovely"'
--   In the expression: take "lovely"
--   In an equation for `it': it = take "lovely"

-- h) take 3 "awesome"
-- "lov"

-- Ex 03
-- concat [[1 * 6], [2 * 6], [3 * 6]]
-- [6, 12,18]

-- "rain" ++ drop 2 "elbow"
-- rainbow

-- 10 * head [1,2,3,4]
-- 10 * 1 => 10

-- (take 3 "Julie") ++ (tail "yes")
-- Jul ++ es =>Jules

-- concat [tail [1, 2, 3],
--         tail [4, 5, 6],
--         tail [7, 8, 9]]

-- concat [[2,3],[5,6],[8,9]] => [2,3,5,6,8,9]

-- Ex 04
-- Given the list-manipulation functions mentioned in this chapter, write functions that take the following inputs and return-
-- the expected outputs. Do them directly in your REPL and use the take and drop functions you’ve already seen.

drop1 :: Int -> String -> IO ()
drop1 n str = do
  putStrLn (drop n str)

reusableFun :: (Int -> String -> String) -> Int -> String -> IO ()
reusableFun fun n str = do
  putStrLn (fun n str)

strConcat :: (String -> String -> String) -> String -> String -> IO ()
strConcat fun a b = do
  putStrLn (fun a b)

-- strConcatTwo :: ()