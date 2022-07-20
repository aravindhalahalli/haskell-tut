module MoodSwing where

data Mood = Blah | Woot deriving (Show)

-- Exercise One

-- 1.Type constructor name is Mood
-- 2.Function requires a Mood value are Blah or Woot
-- 3.Woot is a data constructor, so it cannot be used in a type signature. Use Mood instead
-- 4.Mood is type constructor and can't be used at the code level so we need to use Blah
-- 5. Ans below
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah

-- Integrals Numbers
-- a.Int
-- b.Integer

-- Fractional Numbers
-- Float
-- Double
-- Rational
-- Scientific



-- minBound
-- maxBound
-- Above both can be used to check Int8, Int16, Int32, Int64.

