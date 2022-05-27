-- Chapter Three
-- Strings

-- Prelude> :type 'a'
-- 'a' :: Char

-- Prelude> :type "Aravind"
-- "Aravind" :: [Char]
-- Prelude> print "Hello world"
-- "Hello world"

-- diffrent types of printing
-- print
-- putStrLn
-- putStr

-- Examples

-- Prelude> print "Hello world"
-- "Hello world"
-- Prelude> putStrLn "Hello"
-- Hello
-- Prelude> putStr "Hello"  
-- HelloPrelude>

-- String concatenation

-- Global vs Local Defination

-- Types of concatenation functions

-- Prelude> :t (++)  
-- (++) :: [a] -> [a] -> [a]
-- Prelude> :t concat
-- concat :: Foldable t => t [a] -> [a]

-- More list functions

-- Day_03.PrintBroken> take 1 "Aravind"
-- "A"
-- *Day_03.PrintBroken> take 0 "Aravind"
-- ""
-- *Day_03.PrintBroken> take 5 "Aravind"
-- "Aravi"
-- *Day_03.PrintBroken> take 6 "Aravind"
-- "Aravin"
-- *Day_03.PrintBroken> take 7 "Aravind"
-- "Aravind"
-- *Day_03.PrintBroken> drop 1 "Aravind"
-- "ravind"
-- *Day_03.PrintBroken> drop 2 "Aravind"
-- "avind"
-- *Day_03.PrintBroken> drop 3 "Aravind"
-- "vind"
-- *Day_03.PrintBroken> drop 7 "Aravind"
-- ""
-- *Day_03.PrintBroken> "Aravind" !! 0
-- 'A'
-- *Day_03.PrintBroken> "Aravind" !! 7
-- *** Exception: Prelude.!!: index too large
-- *Day_03.PrintBroken> "Aravind" !! 4
-- 'i'
-- *Day_03.PrintBroken> "Aravind" !! 6
-- 'd'
-- *Day_03.PrintBroken>