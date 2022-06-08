import System.Win32 (COORD (x))

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

-- 5.6 Polymorphism
-- polymorphic type variables give us the ability to implement expressions that can accept arguments and return results of different
-- types without having to write variations on the same expression for each type.

-- Parametricity...

-- 1. Anyway not possible

-- 2. We can get a more comfortable appreciation of parametricity by looking at a -> a -> a. This hypothetical function a -> a ->
-- a has two–and only two–implementations. Write both possible versions of a -> a -> a. After doing so, try to violate the
-- constraints of parametrically polymorphic values we outlined above.
-- One way
f :: a -> a -> a
f x y = x

-- Two way
g :: a -> a -> a
g x y = y

-- 3 Implement a -> b -> b. How many implementations can it have? Does the behavior change when the types of 𝑎 and 𝑏 change?
fnotChange :: a -> b -> b
fnotChange x y = y
