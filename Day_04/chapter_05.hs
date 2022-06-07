-- Chapter 5.2 Exercise
-- Notes

-- * Ord is a typeclass that includes all things that can be ordered.

-- Q1 If the type of f is a -> a -> a -> a, and the type of 𝑥 is Char then the type of f x is
-- f :: a -> a -> a -> a
-- x :: [a]
-- Char -> Char -> Char

-- Q2 If the type of g is a -> b -> c -> b, then the type of g 0 'c' "woot" is
-- Char

-- Q3 If the type of h is (Num a, Num b) => a -> b -> b, then the type of h 1.0 2 i
-- Num b => b

-- Q4 If the type of h is (Num a, Num b) => a -> b -> b, then the type of h 1 (5.5 :: Double) is
-- Fractional b => b

-- Q5 If the type of jackal is (Ord a, Eq b) => a -> b -> a, then the type of jackal "keyboard" "has the word jackal in it"
-- [Char]

-- Q6 If the type of jackal is (Ord a, Eq b) => a -> b -> a, then the type of jackal "keyboard"
-- Eq b => b -> [Char]

-- Q7 If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type of kessel 1 2 is
-- (Num a, Ord a) => a

-- Q8  If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type of kessel 1 (2 :: Integer) is
-- (Num a, Ord a) => a

-- Q9 If the type of kessel is (Ord a, Num b) => a -> b -> a, then the type of kessel (1 :: Integer) 2 is
-- Integer