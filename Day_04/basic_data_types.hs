data Bool = False | True

-- Type of constructor for datatype Bool
-- Data constructor of the value is False
-- Pipes indicates logical disjuction or  a Bool value is True or False
-- Data constructor for the value True


-- Mood Swing
data Mood  = Blah | Woot deriving Show
data Bool' = True' | False'
-- Mood
-- 
fun1 :: Mood -> IO ()
fun1 a = do
    print a
fun :: IO ()
fun = do
    let a = Woot
    print a 

-- tuples
-- Lists

